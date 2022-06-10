package example;

import hxgf.*; // Yes I just imported it all and you can't stop me HAHAHAHAHAHAHHAA!

class Game extends App {
								// Initialise player Sprite
								var testSprite : Sprite;
								// Define background colour
								var bgColour : Color = new Color(60, 60, 60);

								// Define player pos
								var x : Int = 25;
								var y : Int = 25;

								var audio : Audio;

								public function new() {
																super(1024, 600); // Define canvas size

																g.setAntiAliasing(false); // Set image smoothing off
																
																testSprite = new Sprite('./player.png', 16, 160, 12, 5); // Load player sprite

																audio = new Audio('./cow.wav');
								}
								public override function tick() {
																// Change player X and Y on keypress
																if (Input.isPressed('d')) x += Math.round(100 * deltaTime);
																if (Input.isPressed('a')) x += Math.round(-100 * deltaTime);
																if (Input.isPressed('s')) y += Math.round(100 * deltaTime);
																if (Input.isPressed('w')) y += Math.round(-100 * deltaTime);

																if (Input.isPressed('e')) audio.play();
																if (Input.isPressed('q')) audio.stop();
								}
								public override function render() {
																// Set drawing colour to bgColour and fill the screen with it. This also clears the screen.
																g.setColor(bgColour);
																g.fillScreen();

																// Draw a purple point at X and Y
																g.setColor(new Color(255, 25, 255));
																g.fillCircle(x, y, 32, false, 24);
																// Draw a green rectangle at X + 45, Y + 64
																g.setColor(new Color(24, 255, 24));
																g.fillRect(x + 45, y + 64, 32, 32);
																// Draw player at animation frame 1 sprite at X and Y
																g.drawSprite(testSprite, x, y, 1);
																// Draw Red line through the screen
																g.setColor(new Color(255, 25, 30));
																g.drawLine(0, 0, 1024, 600, 10);
								}
}
