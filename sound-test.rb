# お正月の歌

# ♩ = ?
speed = 92.0

# 音程 (261 * (2**(1/12)) **  x)
musicdata = [
  0, 2, 0, 2, 4, 7, 4, 2, 2, 0, 2, 4,
  0, 0, -3, -3, -5, -5, -5, 0, 0, 2, 2, 4, -6, 4, 4, 2, 0, 0, 0, 0, 2, 2, 4, 4, 7, -6,
  0, 2, 0, 2, 4, 7, 4, 4, 2, 2, 4, 2, 0
]


# 長さ (四分音符を基準に)
musicdata2 = [
  2.0, 1.0, 0.5, 0.5, 1.0, 1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 4.0,
  0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1.0, 0.5, 0.5, 0.5, 0.5, 1.0, 1.0, 0.5, 0.5, 1.0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1.0, 1.0,
  2.0, 1.0, 0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 4.0
]


if musicdata.length != musicdata2.length
  p "データの個数が合わない"
  exit
end


# 8bit 8000 sample/s
SampleSize = 256
SamplingRate = 8000
# ボリューム: 0 〜 SampleSize/2 まで
volume = 60

# 周波数の計算
# 261 * 2 ** (tone / 12.0)
# 261Hz ≒ ドを基準にする
freq = musicdata.map { |t| t == -6 ? 1 : (261 * 2 ** (t / 12.0)).to_i.to_f }
lengthof4 = 60 / speed * SamplingRate

wave = []
musicdata.length.times { |i|
  p = SamplingRate / freq[i]
  l = lengthof4 * musicdata2[i]
  w = (0 ... l - lengthof4 / 8).map { |n|
    (Math.sin((2 * Math::PI) / p * n ) + (1 - 2 * ((1/p * n) % 1))) / 2
  }
  b = (0 ... lengthof4 / 8).map {0}
  w.concat(b)
  wave.concat(w)
}

wave = wave.map {|v| (SampleSize / 2 + volume * v).round }

open("/dev/dsp", "wb") do |f|
  f.print(wave.pack("C*"))
end
