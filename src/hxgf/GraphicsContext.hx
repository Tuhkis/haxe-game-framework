package hxgf;

import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;

class GraphicsContext {
								var g : CanvasRenderingContext2D;
								var canvWidth : Int;
								var canvHeight : Int;

								public function new(canv : CanvasElement) {
																g = canv.getContext2d();
																canvWidth = canv.width;
																canvHeight = canv.height;
								}
								
								public function setColor(color : Color) { g.fillStyle = color.hex; g.strokeStyle = color.hex; }
								public function setAntiAliasing(antiAliasing : Bool) { g.imageSmoothingEnabled = antiAliasing; }

								public function fillRect(x : Int, y : Int, w : Int, h : Int) {
																g.fillRect(x, y, w, h);
								}
								public function fillScreen() {
																g.clearRect(0, 0, canvWidth, canvHeight);
																fillRect(0, 0, canvWidth, canvHeight);
								}
								public function drawSprite(sprite : Sprite, x : Int, y : Int, frame : Int) {
																g.drawImage(sprite.imageElement, sprite.width / sprite.vframes * frame, 0, sprite.width / sprite.vframes, sprite.height, x, y, sprite.width / sprite.vframes * sprite.scale, sprite.height * sprite.scale);
								}
								public function drawLine(x1, y1, x2, y2, lineWidth = 1) {
																g.beginPath();
																g.lineWidth = lineWidth;
																g.moveTo(x1, y1);
																g.lineTo(x2, y2);
																g.closePath();
																// g.fill();
																g.stroke();
								}
								public function fillCircle(x : Int, y : Int, r : Int, filled : Bool = true, lineWidth : Int = 5) {
																g.lineWidth = lineWidth;
																g.beginPath();
																g.arc(x, y, r, 0, 2 * Math.PI, false);
																g.closePath();
																if (filled)
																								g.fill();
																g.stroke();
								}
}
