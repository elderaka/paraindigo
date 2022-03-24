///@arg object
///@arg x
///@arg y

//astaga gimana sih biar bisa diem aja gitu

var _object = argument0;
var _x = argument1;
if (!is_undefined(_object)){ 
	if instance_exists(_object){
			x = _object.x + _x;
	} else {
	instance_destroy();
	}
}
