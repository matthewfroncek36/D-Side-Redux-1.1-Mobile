package funkin.scripts;

import flixel.math.FlxMath;
import flixel.math.FlxRandom;

class ScriptedFlxColor
{
	public static final BLACK:Int = FlxColor.BLACK;
	public static final BLUE:Int = FlxColor.BLUE;
	public static final CYAN:Int = FlxColor.CYAN;
	public static final GRAY:Int = FlxColor.GRAY;
	public static final GREEN:Int = FlxColor.GREEN;
	public static final LIME:Int = FlxColor.LIME;
	public static final MAGENTA:Int = FlxColor.MAGENTA;
	public static final ORANGE:Int = FlxColor.ORANGE;
	public static final PINK:Int = FlxColor.PINK;
	public static final PURPLE:Int = FlxColor.PURPLE;
	public static final RED:Int = FlxColor.RED;
	public static final TRANSPARENT:Int = FlxColor.TRANSPARENT;
	public static final WHITE:Int = FlxColor.WHITE;
	public static final YELLOW:Int = FlxColor.YELLOW;
	
	public static function fromCMYK(c:Float, m:Float, y:Float, b:Float, a:Float = 1):Int return cast FlxColor.fromCMYK(c, m, y, b, a);
	
	public static function fromHSB(h:Float, s:Float, b:Float, a:Float = 1):Int return cast FlxColor.fromHSB(h, s, b, a);
	
	public static function fromInt(num:Int):Int return cast FlxColor.fromInt(num);
	
	public static function fromRGBFloat(r:Float, g:Float, b:Float, a:Float = 1):Int return cast FlxColor.fromRGBFloat(r, g, b, a);
	
	public static function fromRGB(r:Int, g:Int, b:Int, a:Int = 255):Int return cast FlxColor.fromRGB(r, g, b, a);
	
	public static function getHSBColorWheel(a:Int = 255):Array<Int> return cast FlxColor.getHSBColorWheel(a);
	
	public static function gradient(color1:FlxColor, color2:FlxColor, steps:Int, ?ease:Float->Float):Array<Int> return cast FlxColor.gradient(color1, color2, steps, ease);
	
	public static function interpolate(color1:FlxColor, color2:FlxColor, factor:Float = 0.5):Int return cast FlxColor.interpolate(color1, color2, factor);
	
	public static function fromString(string:String):Int return cast FlxColor.fromString(string);
	
	public static function getRed(color:FlxColor):Int return cast color.red;
	
	public static function getGreen(color:FlxColor):Int return cast color.green;
	
	public static function getBlue(color:FlxColor):Int return cast color.blue;
	
	public static function toRGBA(color:FlxColor):Array<Int> return [color.red, color.green, color.blue, color.alpha];
}

class ScriptedFlxTextAlign
{
	public static final LEFT:String = "left";
	public static final CENTER:String = "center";
	public static final RIGHT:String = "right";
	public static final JUSTIFY:String = "justify";
}

class ScriptedFlxAxes
{
	public static final X:Int = 0x01;
	public static final Y:Int = 0x10;
	public static final XY:Int = 0x11;
	public static final NONE:Int = 0x00;
}

class ScriptedBlendMode
{
	public static final ADD = openfl.display.BlendMode.ADD;
	public static final ALPHA = openfl.display.BlendMode.ALPHA;
	public static final DARKEN = openfl.display.BlendMode.DARKEN;
	public static final DIFFERENCE = openfl.display.BlendMode.DIFFERENCE;
	public static final ERASE = openfl.display.BlendMode.ERASE;
	public static final HARDLIGHT = openfl.display.BlendMode.HARDLIGHT;
	public static final INVERT = openfl.display.BlendMode.INVERT;
	public static final LAYER = openfl.display.BlendMode.LAYER;
	public static final LIGHTEN = openfl.display.BlendMode.LIGHTEN;
	public static final MULTIPLY = openfl.display.BlendMode.MULTIPLY;
	public static final NORMAL = openfl.display.BlendMode.NORMAL;
	public static final OVERLAY = openfl.display.BlendMode.OVERLAY;
	public static final SCREEN = openfl.display.BlendMode.SCREEN;
	public static final SHADER = openfl.display.BlendMode.SHADER;
	public static final SUBTRACT = openfl.display.BlendMode.SUBTRACT;
}

class ScriptedFlxKey
{
	public static final NONE:Int = -1;
	public static final ANY:Int = -2;
	public static final UP:Int = 38;
	public static final DOWN:Int = 40;
	public static final LEFT:Int = 37;
	public static final RIGHT:Int = 39;
	public static final ENTER:Int = 13;
	public static final SPACE:Int = 32;
	public static final ESCAPE:Int = 27;
	public static final SHIFT:Int = 16;
	public static final CONTROL:Int = 17;
	public static final ALT:Int = 18;
	public static final TAB:Int = 9;
	public static final BACKSPACE:Int = 8;
	public static final DELETE:Int = 46;
	public static final ZERO:Int = 48;
	public static final ONE:Int = 49;
	public static final TWO:Int = 50;
	public static final THREE:Int = 51;
	public static final FOUR:Int = 52;
	public static final FIVE:Int = 53;
	public static final SIX:Int = 54;
	public static final SEVEN:Int = 55;
	public static final EIGHT:Int = 56;
	public static final NINE:Int = 57;
	public static final A:Int = 65;
	public static final B:Int = 66;
	public static final C:Int = 67;
	public static final D:Int = 68;
	public static final E:Int = 69;
	public static final F:Int = 70;
	public static final G:Int = 71;
	public static final H:Int = 72;
	public static final I:Int = 73;
	public static final J:Int = 74;
	public static final K:Int = 75;
	public static final L:Int = 76;
	public static final M:Int = 77;
	public static final N:Int = 78;
	public static final O:Int = 79;
	public static final P:Int = 80;
	public static final Q:Int = 81;
	public static final R:Int = 82;
	public static final S:Int = 83;
	public static final T:Int = 84;
	public static final U:Int = 85;
	public static final V:Int = 86;
	public static final W:Int = 87;
	public static final X:Int = 88;
	public static final Y:Int = 89;
	public static final Z:Int = 90;

	public static function fromString(value:String):Int
	{
		if (value == null) return NONE;
		return switch (value.toUpperCase())
		{
			case "UP": UP;
			case "DOWN": DOWN;
			case "LEFT": LEFT;
			case "RIGHT": RIGHT;
			case "ENTER": ENTER;
			case "SPACE": SPACE;
			case "ESCAPE": ESCAPE;
			case "SHIFT": SHIFT;
			case "CONTROL": CONTROL;
			case "ALT": ALT;
			case "TAB": TAB;
			case "BACKSPACE": BACKSPACE;
			case "DELETE": DELETE;
			case "ZERO": ZERO;
			case "ONE": ONE;
			case "TWO": TWO;
			case "THREE": THREE;
			case "FOUR": FOUR;
			case "FIVE": FIVE;
			case "SIX": SIX;
			case "SEVEN": SEVEN;
			case "EIGHT": EIGHT;
			case "NINE": NINE;
			case "A": A;
			case "B": B;
			case "C": C;
			case "D": D;
			case "E": E;
			case "F": F;
			case "G": G;
			case "H": H;
			case "I": I;
			case "J": J;
			case "K": K;
			case "L": L;
			case "M": M;
			case "N": N;
			case "O": O;
			case "P": P;
			case "Q": Q;
			case "R": R;
			case "S": S;
			case "T": T;
			case "U": U;
			case "V": V;
			case "W": W;
			case "X": X;
			case "Y": Y;
			case "Z": Z;
			default: NONE;
		}
	}
}

/**
 * Wrapper class to be used in place of `FlxG.random`. 
 * 
 * Necessary due to generics
 */
@:access(flixel.math.FlxRandom)
class ScriptedFlxRandom
{
	@:inheritDoc(flixel.math.FlxRandom.resetInitialSeed)
	public static inline function resetInitialSeed():Int
	{
		return FlxG.random.initialSeed = FlxRandom.rangeBound(Std.int(Math.random() * FlxMath.MAX_VALUE_INT));
	}
	
	@:inheritDoc(flixel.math.FlxRandom.int)
	public function int(min:Int = 0, max:Int = FlxMath.MAX_VALUE_INT, ?excludes:Array<Int>):Int
	{
		return FlxG.random.int(min, max, excludes);
	}
	
	@:inheritDoc(flixel.math.FlxRandom.float)
	public static function float(min:Float = 0, max:Float = 1, ?excludes:Array<Float>):Float
	{
		return FlxG.random.float(min, max, excludes);
	}
	
	@:inheritDoc(flixel.math.FlxRandom.floatNormal)
	public function floatNormal(mean:Float = 0, stdDev:Float = 1):Float
	{
		return FlxG.random.floatNormal(mean, stdDev);
	}
	
	@:inheritDoc(flixel.math.FlxRandom.bool)
	public static inline function bool(chance:Float = 50):Bool
	{
		return float(0, 100) < chance;
	}
	
	@:inheritDoc(flixel.math.FlxRandom.sign)
	public static inline function sign(chance:Float = 50):Int
	{
		return bool(chance) ? 1 : -1;
	}
	
	@:inheritDoc(flixel.math.FlxRandom.weightedPick)
	public static function weightedPick(weightsArray:Array<Float>):Int
	{
		return FlxG.random.weightedPick(weightsArray);
	}
	
	@:inheritDoc(flixel.math.FlxRandom.getObject)
	public static function getObject<T>(objects:Array<T>, ?weightsArray:Array<Float>, startIndex:Int = 0, ?endIndex:Null<Int>)
	{
		var selected:Null<T> = null;
		
		if (objects.length != 0)
		{
			weightsArray ??= [for (i in 0...objects.length) 1];
			
			endIndex ??= objects.length - 1;
			
			startIndex = Std.int(FlxMath.bound(startIndex, 0, objects.length - 1));
			endIndex = Std.int(FlxMath.bound(endIndex, 0, objects.length - 1));
			
			// Swap values if reversed
			if (endIndex < startIndex)
			{
				startIndex = startIndex + endIndex;
				endIndex = startIndex - endIndex;
				startIndex = startIndex - endIndex;
			}
			
			if (endIndex > weightsArray.length - 1)
			{
				endIndex = weightsArray.length - 1;
			}
			
			final arrayHelper = [for (i in startIndex...endIndex + 1) weightsArray[i]];
			
			selected = objects[startIndex + weightedPick(arrayHelper)];
		}
		
		return selected;
	}
	
	@:inheritDoc(flixel.math.FlxRandom.shuffle)
	public static function shuffle<T>(array:Array<T>):Void
	{
		var maxValidIndex = array.length - 1;
		for (i in 0...maxValidIndex)
		{
			var j = FlxG.random.int(i, maxValidIndex);
			var tmp = array[i];
			array[i] = array[j];
			array[j] = tmp;
		}
	}
	
	@:inheritDoc(flixel.math.FlxRandom.color)
	public static function color(?min:FlxColor, ?max:FlxColor, ?alpha:Int, greyScale:Bool = false):FlxColor
	{
		return FlxG.random.color(min, max, alpha, greyScale);
	}
}
