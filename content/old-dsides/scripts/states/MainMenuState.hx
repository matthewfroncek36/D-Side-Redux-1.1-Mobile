var can = true;
function onUpdate(elapsed)
{
    if(can)
    {
        FlxG.sound.music.stop();
        FlxG.camera.visible = false;
        FlxG.switchState(()->{new PlayState();});
        can = false;
    }
}