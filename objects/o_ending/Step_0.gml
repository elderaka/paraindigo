//okey w jujur cuman duplicate o_splash

variant = 1
logocolors = c_white

alpap += 0.02
alpap = clamp(alpap,0,3)
alpop = clamp(alpop,0,3)
alpep = clamp(alpep,0,3)
alpup = clamp(alpup,0,3)
if alpap >= 3{
	alpop += 0.02
}
if alpop >= 3{
	alpep += 0.02
}

if alpep >= 3 {
	alpup += 0.02
}

if alpup >= 1 && keyboard_check(ord("L")){
	reset()	
}
if o_stats.endingroute < 6{ //f it if it isn't broken, then it's working
	layer_background_alpha(layer_background_get_id("white_screen"),alpap)
}else {
	layer_background_alpha(layer_background_get_id("white_screen"),0)
}

if alpop = 1{
	fixedalpop = true
}