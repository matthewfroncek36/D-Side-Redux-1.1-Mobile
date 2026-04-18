package flixel.group;

import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;

/**
 * Compatibility shim for projects written against newer Flixel sprite container
 * APIs. On Flixel 5, a typed sprite group is the closest equivalent.
 */
class FlxSpriteContainer extends FlxTypedSpriteContainer<FlxSprite>
{
	public function new(X:Float = 0, Y:Float = 0, MaxSize:Int = 0)
	{
		super(X, Y, MaxSize);
	}
}

class FlxTypedSpriteContainer<T:FlxSprite> extends FlxTypedSpriteGroup<T>
{
	public function new(X:Float = 0, Y:Float = 0, MaxSize:Int = 0)
	{
		super(X, Y, MaxSize);
	}
}
