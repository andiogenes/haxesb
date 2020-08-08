package sb;
import flash.display.BitmapData;
import openfl.Assets;

class ImageList
{

	static public function loadImage(fileName:String):BitmapData
	{
		return Assets.getBitmapData(fileName);
	}
	
	static public function getWidthOfImage(imageName:BitmapData):Int
	{
		return imageName.width;
	}
	
	static public function getHeightOfImage(imageName:BitmapData):Int
	{
		return imageName.height;
	}
	
}