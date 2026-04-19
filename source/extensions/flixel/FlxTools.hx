package extensions.flixel;

import haxe.ds.ObjectMap;

import flixel.FlxBasic;
import flixel.FlxCamera;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.graphics.tile.FlxGraphicsShader;
import flixel.util.FlxAxes;
import flixel.util.FlxColor;

class FlxTools
{
	static final zIndices:ObjectMap<FlxBasic, Int> = new ObjectMap();

	public static inline function loadAtlasFrames(sprite:FlxSprite, frames:FlxAtlasFrames):FlxSprite
	{
		sprite.frames = frames;
		return sprite;
	}

	public static inline function makeScaledGraphic(sprite:FlxSprite, width:Float, height:Float, ?color:FlxColor = FlxColor.WHITE):FlxSprite
	{
		sprite.makeGraphic(1, 1, color, false, 'solid#${color.toHexString(true, false)}');
		sprite.scale.set(width, height);
		sprite.updateHitbox();
		return sprite;
	}

	public static inline function centerOnObject(sprite:FlxSprite, object:FlxObject, ?axes:FlxAxes):FlxSprite
	{
		axes ??= cast 0x11;
		if (axes.x) sprite.x = object.x + (object.width - sprite.width) / 2;
		if (axes.y) sprite.y = object.y + (object.height - sprite.height) / 2;
		return sprite;
	}

	public static inline function setZIndex(basic:FlxBasic, value:Int):Int
	{
		zIndices.set(basic, value);
		return value;
	}

	public static inline function getZIndex(basic:FlxBasic):Int
	{
		return zIndices.get(basic) ?? 0;
	}

	public static function addShader(camera:FlxCamera, shader:FlxGraphicsShader):Void
	{
		if (shader == null) return;

		var filter = new openfl.filters.ShaderFilter(shader);
		camera.filters ??= [];
		camera.filters.push(filter);
	}

	public static function removeShader(camera:FlxCamera, shader:FlxGraphicsShader):Bool
	{
		if (camera.filters == null) return false;

		for (filter in camera.filters)
		{
			if (filter is openfl.filters.ShaderFilter)
			{
				var shaderFilter:openfl.filters.ShaderFilter = cast filter;
				if (shaderFilter.shader == shader)
				{
					camera.filters.remove(filter);
					return true;
				}
			}
		}

		return false;
	}
}
