import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxState;

class TitleState extends FlxState
{
	public var title:ButtonText = new ButtonText('Data Music Viz', true, ButtonText.SCALE_MAIN);
	public var play:ButtonText = new ButtonText('Press me to play!', true, ButtonText.SCALE_QUARTER);

	override function create()
	{
		super.create();

        FlxG.camera.bgColor = FlxColor.WHITE;

		add(title);
		title.onClick.add(function()
		{
			FlxG.openURL('https://github.com/bopel-maki-macohi/expr-15');
		});
        title.screenCenter();

        add(play);
        play.screenCenter();
        play.onClick.add(function() {
            FlxG.switchState(() -> new MenuState());
        });

        title.y -= play.height * 2;
	}
}
