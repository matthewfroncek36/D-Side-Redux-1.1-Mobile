import haxe.io.Path;

#if sys
import sys.*;

import sys.io.*;
#end

// `import.hx` is applied package-wide, including macro packages.
// Keep runtime engine imports out of macro context or HaxeFlixel types
// such as `FlxGraphicAsset` / `FlxTypedSignal` get resolved while `macro`.
#if !macro
// flixel
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.util.FlxTimer;
import flixel.FlxBasic;
import flixel.math.FlxPoint;
import flixel.sound.FlxSound;

import funkin.api.DiscordClient;

import hxvlc.flixel.*;

import Init;

import funkin.Paths;
import funkin.data.ClientPrefs;
import funkin.backend.Conductor;
import funkin.utils.CoolUtil;
import funkin.data.Highscore;
import funkin.states.*;
import funkin.objects.BGSprite;
import funkin.backend.MusicBeatState;

using flixel.util.FlxArrayUtil;
#end

using StringTools;
