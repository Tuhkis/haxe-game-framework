package hxgf;

// This could maybe be done with an Enum?
class Color {
								public var hex : String;
								public var rgb : Array<Int> = [];
								public function new(r : Int, g : Int, b : Int) {
																hex = '#' + StringTools.hex(r, 2) + StringTools.hex(g, 2) + StringTools.hex(b, 2);

																rgb.push(r); rgb.push(g); rgb.push(b);
								}
}
