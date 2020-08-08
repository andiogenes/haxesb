package sb.primitives;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.Lib;

class Image extends Sprite
{

	public function new(imageName:BitmapData) 
	{
		super();
		addChild(new Bitmap(imageName));
		Lib.current.addChild(this);
	}
	
}