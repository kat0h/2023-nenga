$s="
  if(STDOUT.isatty);
  m=Thread.new{
    d=%[6868ada8868a66331116688a0aa8666688aad06868adaa88a86822222222112422111111112112211112111111822224221124].split(//).map{|a|a.to_i(14)};t=d.map{|t|t==0?1:(185*2**(t/12.0))};f=652;w=[];51.times{|i|w+=(0...f*4*d[-i-1]-f).map{|n|Math.sin(3.14*n*t[i]/4000)}+(0...f).map{0}};w.map!{|v|(128+90*v).round};open(%[/dev/dsp],%[wb]){|f|f.print(w.pack(%[C*]))}
  };

  print(%(\e[0;0H\e[2J));

  require(%(zlib));
  s=[Zlib::Inflate.inflate(%(eNqNkrENAzEIRXtPcV26eALWSIXEIuyQhdjpVojvAAsrhoQKW/+B4bu1Iw8+RagUAMDQFJIOd7CfyeOZQqe8FRqJAvMGyn4reCB8BW7IUH4kZJVklvER+oZFfY+pLLuWgp4koD4OXXST7HvqOTZF7HtdL3IIx6BW2KoQaaecgZcvjmfHH22CxtpgQZhFnSFMwS1xV9SSf8TxQ6iNnPm/0ZoDaW37MI84RPmQdYqBt/YBTrTJig==).unpack(%(m))[0])];
  s.push(s[0].gsub(/=/,%(_)));

  c=0;loop{break;print(%(\e[0;0H),s[(c+=1)%2]);puts(%( )*24+%(Happy New Year 2023 !!!));sleep(0.5);if(!m.status);break;end};
  print(%(\e[0;0H\e[2J))
  end;

  print(%($s=)+$s.inspect.gsub(92.chr+110.chr,10.chr)+%(;eval$s.gsub(/>.{27}</,%()).gsub(10.chr,%())));

  >▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄<
  >█ ▄▄▄▄▄ ██ ██ ▀ █ █ ▄▄▄▄▄ █<
  >█ █   █ █▀  ▄▄▀▄  █ █   █ █<
  >█ █▄▄▄█ █▄▀▀▄ ███ █ █▄▄▄█ █<
  >█▄▄▄▄▄▄▄█▄█ ▀▄█ ▀ █▄▄▄▄▄▄▄█<
  >█▄ ▀██▄▄ █ ▀ ▄▄▄▀███▀  ▀▀██<
  >█▀▀▄ ▄█▄▄█▀▄▀█▄█ ▄▀ ▄  █▄██<
  >█▀ █▀██▄ ▀ █▀ █▀  ▀▄ ███▀▄█<
  >█ █ █▀ ▄▀▀▄▄▀▀█  █▄  ▄ ▀▄██<
  >█▄██▄██▄█▀▀▀▀█ ▄█ ▄▄▄ █▄███<
  >█ ▄▄▄▄▄ █ █▄▄█▄ █ █▄█ ██▀▄█<
  >█ █   █ ███ ▀▄▄ ▄ ▄ ▄▄█▄ ▀█<
  >█ █▄▄▄█ █▀█▄█▄▄▀▄ ▄▀▀▀▄▄█ █<
  >█▄▄▄▄▄▄▄█▄███▄███▄▄▄██▄██▄█<
  >         2023@kat0h        <
";eval$s.gsub(/>.{27}</,%()).gsub(10.chr,%())
