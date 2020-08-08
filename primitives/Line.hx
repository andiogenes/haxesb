package sb.primitives;
import flash.display.Sprite;
import flash.Lib;
import sb.GraphicsWindow;

class Line extends Sprite
{

	public function new(x1:Float, y1:Float, x2:Float, y2:Float) 
	{
		super();
		graphics.lineStyle(GraphicsWindow.penWidth, GraphicsWindow.penColor);
		graphics.moveTo(x2, y2);
		graphics.lineTo(x1, y1);
		Lib.current.addChild(this);
	}
	
}