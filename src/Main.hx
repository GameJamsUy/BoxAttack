package;

import flixel.FlxGame;
import openfl.display.Sprite;
import openfl.Lib;
import openfl.events.Event;
import states.GameState;

/**
 * ...
 * @author Joaquin
 */
class Main extends Sprite 
{

	public function new() 
	{
		super();
		
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
		addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(e:Event):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, init);
		addChild(new FlxGame(1280, 720, GameState));
	}

}
