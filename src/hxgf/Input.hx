package hxgf;

import js.html.Event;
import js.Browser.document;

class Input {
    public static var down : Array<String> = new Array<String>();

    public function new() {
        document.body.addEventListener('keydown', pDown);
        document.body.addEventListener('keyup', pUp);
    }
    private static function pDown(evt) {
        var k : String = evt.key;

        if (!down.contains(k)) {
            down.insert(0, k);
        };
    }
    private static function pUp(evt) {
        down.remove(evt.key);
    }
    public static function isPressed(key : String) {
        if (down.contains(key)) {
            return true;
        }
        else {
            return false;
        }
    }
}
