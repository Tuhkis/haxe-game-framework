package hxgf;

import js.html.CanvasElement;
import js.Browser.document;
import js.Browser.window;
import js.lib.Date;


class App {
								final CANV : CanvasElement = document.createCanvasElement();
								var g : GraphicsContext;

								var now = Date.now();
								var prev = Date.now();
								public var deltaTime : Float;

								public function new(WIDTH : Int, HEIGHT : Int, FPS : Int = 60) {
																CANV.width = WIDTH;
																CANV.height = HEIGHT;
																CANV.id = 'idForStyling'; // Very important!
																g = new GraphicsContext(CANV);
																document.body.appendChild(CANV);
																
																new Input(); // After this you can call methods from the Input class ( Like Input.isPressed('KEY') )

																window.setInterval(function() {
																								update();
																},
																1000 / FPS
																);
								}
								private function update() {
																now = Date.now();
																deltaTime = (now - prev) / 1000;
																prev = now;

																tick();
																render();
								}

								public function tick() {} // This is to be overridden!
								public function render() {} // This as well!
}
