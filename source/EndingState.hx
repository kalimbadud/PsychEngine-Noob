package;

import flixel.FlxBasic;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;

#if windows
import Discord.DiscordClient;
#end
#if windows
import Sys;
import sys.FileSystem;
#end

using StringTools;

class EndingState extends MusicBeatState
{
    var endingScreen:FlxSprite;

    override function create()
    {
        if (FlxG.sound.music.playing)
            FlxG.sound.music.stop();

        endingScreen = new FlxSprite();
        if (PlayState.SONG.song.toLowerCase() == 'crossroads')
        {
            endingScreen.loadGraphic(Paths.image('tanksYouSmall', 'shared'));
        }
        endingScreen.screenCenter();
        endingScreen.antialiasing = true;
        add(endingScreen);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        if (FlxG.keys.justPressed.ENTER)
        {
            FlxG.switchState(new MainMenuState());
        }
    }
}