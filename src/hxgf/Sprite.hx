package hxgf;

import js.html.ImageElement;
import js.Browser.document;

class Sprite {
								public var imageElement : ImageElement = document.createImageElement();
								public var width : Int;
								public var height : Int;
								public var vframes : Int;
								public var scale : Int = 1;

								public function new(path : String, vFrames : Int = 1, w : Int, h : Int, nScale : Int = 1) {
																imageElement.src = path;
																width = w;
																height = h;
																vframes = vFrames;
																scale = nScale;
								}
}
