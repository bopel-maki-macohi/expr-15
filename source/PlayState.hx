import flixel.FlxState;

class PlayState extends FlxState
{
	public static function build(song:String):PlayState
	{
		var play = new PlayState();
        
		play.song = song;

		return play;
	}

	public var song:String = null;
}
