pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
-- magictoad
-- by manocle
function _init()
x=25
y=56
w=1
h=1

cam_x=0
cam_y=0

newx=x
newy=y

x_grid=0
y_grid=0

end

function _update()
x_grid=flr(x/8)
y_grid=flr(y/8)
if (btn(1) and x>0)	x=x+1
if (btn(0) and x>25) x=x-1	
if (btn(3) and y<82) then
	if not fget(mget(flr(x_grid),
																		(y+8)/8),0) then
			y=y+1
	end
end
if (btn(2) and y>0) y=y-1
end

function _draw()
cls()
if x>60 then cam_x=x-40 else cam_x=0
end
camera(cam_x,cam_y)
map(0,0,0,0)
spr(1,x,y)
printh(x)
printh(y)

end
-->8
function box_hit(
  x1,y1,
  w1,h1,
  x2,y2,
  w2,h2)
  
  hit=false
  local xd=abs((x1+(w1/2))-(x2+(w2/2)))
  local xs=w1*0.5+w2*0.5
  local yd=abs((y1+(h1/2))-(y2+(h2/2)))
  local ys=h1/2+h2/2
  if xd<xs and 
     yd<ys then 
    hit=true 
  end
  
  return hit
end
__gfx__
00000000cc9999cccc9999cccc9999ccdddddddd3b3bb3bbcccccccccccccccccccccccccccccccccccccccccccccccc00000000000000000000000000000000
00000000c999f99cc99f999cc99f999cd777777dbb333b33cccccccccccccccccccccccccccccc3333cccccccccccccc00000000000000000000000000000000
00700700c9f4f49cc94f4f9cc94f4f9cd055557d30555573cccccccccc7cc7cccccccccccc3333333333cccccccccccc00000000000000000000000000000000
0007700091ffffccccffff19ccffff19d055557dd055557dccccccccc777777ccccccccccc33333833b33ccccccccccc00000000000000000000000000000000
000770009cff44cccc44ffc9cc44ffc9d055557dd055557dcccccccccc77777cccccccc333333c33bbb33ccccccccccc00000000000000000000000000000000
007007009cc7fccccccffcc9cccffcc9d055557dd055557dccccccccc77c77ccccccccc33bbbbb3b333333cccccccccc00000000000000000000000000000000
00000000ccceecccccc7ecccccce7cccd000007dd000007dcccccccccccccccccccccc333b33333b333333cccccccccc00000000000000000000000000000000
00000000cc1c11ccc11c1ccccc11c1ccddddddddddddddddccccccccccccccccccccc333cb3333bb333b333ccccccccc00000000000000000000000000000000
00000000cccccccccccccccc00444000222222222222222222222222cccccccccccc3333b33333b33bb3383ccccccccc00000000000000000000000000000000
00000000cccccccccccccccc04444400222222222777777222777722ccc22ccccccc3338b33333b33b333333cccccccc00000000000000000000000000000000
00000000cccccccccccccccc043f3400222222222744447227744772cc2222cccccc3b33b33333333b33333bbccccccc00000000000000000000000000000000
00000000cccccccccccccccc00fff400222222222744447277444477c222222cccccbb3333b38333bb33bb33bccccccc00000000000000000000000000000000
00000000c9999cccccc9999c0044f00022222222277777727444444722222222ccccb3333bb33333bb33b333bccccccc00000000000000000000000000000000
0000000099f999cccc999f990009900022222222274444727444464722222222ccccbb333b3333333333b3333ccccccc00000000000000000000000000000000
0000000094f499cccc994f4900097000222222222777777274444447f2f2f2f2ccc3bb333b333bb33333b333cccccccc00000000000000000000000000000000
00000000c4f4f9cccc9f4f4c05606000222222222222222274444447ffffffffccc3b33333b33b333333b333cccccccc00000000000000000000000000000000
000000009ffff199991ffffc0000000000000000000000000000000000000000ccc3b33333b33bb33b333833cccccccc00000000000000000000000000000000
00000000944ffc9999cff44c0000000000000000000000000000000000000000ccc3333833b333333bbb333ccccccccc00000000000000000000000000000000
00000000ccffccccccccffcc0000000000000000000000000000000000000000cccc333333b33333333b333ccccccccc00000000000000000000000000000000
00000000cccccccccccccccc0000000000000000000000000000000000000000ccccc333333333bb383bbbcccccccccc00000000000000000000000000000000
00000000ceeeecccccceeeec0000000000000000000000000000000000000000ccccccc3bb33bbb333bbb3cccccccccc00000000000000000000000000000000
00000000ceee7cccccc7eeec0000000000000000000000000000000000000000ccccccccbb33b333333bbccccccccccc00000000000000000000000000000000
00000000cccccccccccccccc0000000000000000000000000000000000000000ccccccccccccc4449ccccccccccccccc00000000000000000000000000000000
00000000c11c1cccccc1c11c0000000000000000000000000000000000000000ccccccccccccc4449ccccccccccccccc00000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000ccccccccccccc4449ccccccccccccccc00000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000ccccccccccccc4449ccccccccccccccc00000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000ccccccccccccc4449ccccccccccccccc00000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000ccccccccccccc4449ccccccccccccccc00000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000ccccccccccccc4449ccccccccccccccc00000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000ccccccccccccc4449ccccccccccccccc00000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000ccccccccccccc4449ccccccccccccccc00000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000ccccccccccccc4449ccccccccccccccc00000000000000000000000000000000
00000000333333330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000033b3b3b30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000003b9bbb330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000033bbb9b30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000003b9bbb330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000033b44b330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000333443330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000333443330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0606060606060606060606060606060606060606060606060606060606060606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0607060606060706060606060606060606060606070606060606060606060606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606060606060607060607060606060606060606060607060606060607060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060706060606060606060606060607060606060606060606060606060606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060608090a08090a0b0606060608090a0b0606070608090a0b06060708090a0b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1717170618191a18191a1b0706060618191a1b0606060618191a1b06060618191a1b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1515150628292a28292a2b1106120628292a2b0606060628292a2b06060628292a2b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1416140638393a38393a3b2106220638393a3b0606060638393a3b06060638393a3b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050505050505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0404040404040404040404040404040404040404040404040404040404040404040400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
0010000033030320503305037050320503305027050302003305032050330503705032050330502705027100271002710025100221001f1001e1001e1001f1001e0001d0001d0001c0001b0001b0001730031400
000a060414010140301903019030190301b0301b0301b0301e0301e03020030200302203022030250302503027030270302703027030270302503022030200301e0301b030190301903019030190301901019010
__music__
00 01424344

