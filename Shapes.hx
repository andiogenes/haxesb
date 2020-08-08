package sb;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.Lib;
import sb.primitives.Ellipse;
import sb.primitives.Image;
import sb.primitives.Line;
import sb.primitives.Rectangle;
import sb.primitives.Triangle;
import sb.ui.Text;

class Shapes
{

	static public function addEllipse(width:Float, height:Float):Ellipse
	{
		return new Ellipse(width, height);
	}
	
	static public function addRectangle(width:Float, height:Float):Rectangle
	{
		return new Rectangle(width, height);
	}
	
	static public function addImage(imageName:BitmapData):Image
	{
		return new Image(imageName);
	}
	
	static public function addLine(x1:Float, y1:Float, x2:Float, y2:Float):Line
	{
		return new Line(x1, y1, x2, y2);
	}
	
	static public function addTriangle(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Triangle
	{
		return new Triangle(x1, y1, x2, y2, x3, y3);
	}
	
	static public function addText(text:String):Text
	{
		return new Text(text, 0, 0);
	}
	
	static public function getLeft(shapeName:Sprite)
	{
		return shapeName.x;
	}
	
	static public function getTop(shapeName:Sprite)
	{
		return shapeName.y;
	}
	
	static public function getOpacity(shapeName:Sprite)
	{
		return shapeName.alpha;
	}
	
	static public function hideShape(shapeName:Sprite)
	{
		shapeName.alpha = 0;
	}
	
	static public function showShape(shapeName:Sprite)
	{
		shapeName.alpha = 1;
	}
	
	static public function move(shapeName:Sprite, x:Float, y:Float)
	{
		shapeName.x  = x; shapeName.y;
	}
	
	static public function remove(shapeName:Sprite)
	{
		Lib.current.removeChild(shapeName);
	}
	
	static public function rotate(shapeName:Sprite, angle:Float)
	{
		shapeName.rotation = angle;
	}
	
	static public function setText(shapeName:Text, text:String)
	{
		shapeName.tf.text = text;
	}
	
	static public function setOpacity(shapeName:Sprite, level:Float)
	{
		shapeName.alpha = level;
	}
	
	static public function zoom(shapeName:Sprite, scaleX:Float, scaleY:Float)
	{
		shapeName.scaleX = scaleX; shapeName.scaleY = scaleY;
	}
	
	static public function animate(shapeName:Sprite, targetX:Float, targetY:Float, duration:Float)
	{
		
	}
}