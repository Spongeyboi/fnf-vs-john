package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('no-gf', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		animation.add('john', [24, 25], 0, false, isPlayer);
		animation.add('john-player', [24, 25], 0, false, isPlayer);
		animation.add('johnmad', [24, 25], 0, false, isPlayer);
		animation.add('johninsane', [28, 29], 0, false, isPlayer);
		animation.add('oldjohn', [41, 42], 0, false, isPlayer);
		animation.add('oldjohnmad', [41, 42], 0, false, isPlayer);
		animation.add('oldjohninsane', [43, 44], 0, false, isPlayer);
		animation.add('unfair-john', [40], 0, false, isPlayer);
		animation.add('mars', [36,37], 0, false, isPlayer);
		animation.add('circle', [26, 27], 0, false, isPlayer);
		animation.add('cat', [28, 29], 0, false, isPlayer);
		animation.add('funsize-john', [34, 35], 0, false, isPlayer);
		animation.add('funsize-whitty', [32, 33], 0, false, isPlayer);
		animation.add('dave', [45, 46], 0, false, isPlayer);
		animation.add('aflac', [47, 48], 0, false, isPlayer);
		animation.add('reject', [49], 0, false, isPlayer);
		animation.add('recovered-project', [50, 51], 0, false, isPlayer);
		animation.add('sun', [60, 61], 0, false, isPlayer);
		
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
