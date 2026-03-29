import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxState;

class TitleState extends FlxState
{
	public var title:ButtonText = new ButtonText('Data Music Viz', true, ButtonText.SCALE_MAIN);

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
	}
}
