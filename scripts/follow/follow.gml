///@arg object
///@arg x
///@arg y

//ini buat magic circle ngikutin mc

var _object = argument0;
var _x = argument1;
var _y = argument2;
if (!is_undefined(_object)){ //babi gw spend time buat ngeliat cara di define, gms gak auto 0 ternyata
	if instance_exists(_object){
		x = _object.x + _x;
		y = _object.y + _y;
	} else {
	instance_destroy();
	}
}
