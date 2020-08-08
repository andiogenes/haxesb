package sb.primitives;
import flash.display.Sprite;
import flash.Lib;
import sb.GraphicsWindow;

class Triangle extends Sprite
{

	public function new(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float) 
	{
		super();
		graphics.lineStyle(GraphicsWindow.penWidth, GraphicsWindow.penColor);
		graphics.beginFill(GraphicsWindow.brushColor);
		graphics.moveTo(x1, y1);
		graphics.lineTo(x2, y2);
		graphics.lineTo(x3, y3);
		graphics.lineTo(x1, y1);
		graphics.endFill();
		Lib.current.addChild(this);
	}
	
}