package hxgf;

import js.Browser.document;
import js.html.AudioElement;

class Audio {
								var htmlElement : AudioElement = document.createAudioElement();
								public function new(path : String) {
																htmlElement.src = path;
																htmlElement.hidden = true;
																document.body.appendChild(htmlElement);
								}
								public function play() {
																htmlElement.play();
								}
								public function stop() {
																htmlElement.pause();
																htmlElement.src = htmlElement.src;
								}
}
