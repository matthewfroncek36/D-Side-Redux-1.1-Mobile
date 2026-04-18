package flixel.group;

import flixel.FlxBasic;
import flixel.FlxCamera;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;

/**
 * Compatibility shim for projects written against newer Flixel container APIs.
 * On Flixel 5, we treat a container as an ordered typed group and forward camera
 * assignment to child objects that expose a camera/cameras field.
 */
class FlxContainer extends FlxTypedContainer<FlxBasic> {}

class FlxTypedContainer<T:FlxBasic> extends FlxTypedGroup<T>
{
	public var camera(default, set):FlxCamera;

	public function new(MaxSize:Int = 0)
	{
		super(MaxSize);
	}

	override function add(Object:T):T
	{
		final obj = super.add(Object);
		if (obj != null && camera != null) applyCamera(obj, camera);
		return obj;
	}

	function set_camera(value:FlxCamera):FlxCamera
	{
		camera = value;
		for (member in members)
		{
			if (member != null) applyCamera(member, value);
		}
		return value;
	}

	static function applyCamera(obj:FlxBasic, camera:FlxCamera):Void
	{
		if ((obj is FlxSprite) || (obj is FlxTypedSpriteGroup) || (obj is FlxObject))
		{
			Reflect.setProperty(obj, "camera", camera);
			return;
		}

		if (Reflect.hasField(obj, "camera"))
		{
			Reflect.setProperty(obj, "camera", camera);
			return;
		}

		if (Reflect.hasField(obj, "cameras"))
		{
			Reflect.setProperty(obj, "cameras", [camera]);
		}
	}
}
