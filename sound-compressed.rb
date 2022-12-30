# お正月の歌
d="g8f8opxis3661l0gbjhox81b859cmjz24e940rieb23uzg1ju9uh1ab0kavsiz0hqko3c2e6ij2".to_i(36).to_s(14).reverse().split(//).map{|a|a.to_i(14)};
t=d.map{|t|t==0?1:(185*2**(t/12.0))};
f=652;w=[];
51.times{|i|w+=(0...f*4*d[-i-1]-f).map{|n|Math.sin(3.14*n*t[i]/4000)}+(0...f).map{0}};
w.map!{|v|(128+90*v).round};
open("/dev/dsp","wb"){|f|f.print(w.pack("C*"))}
