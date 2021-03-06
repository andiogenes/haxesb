package sb.primitives;
import flash.display.Sprite;
import flash.Lib;
import sb.GraphicsWindow;

class Ellipse extends Sprite
{

	public function new(width:Float, height:Float) 
	{
		super();
		graphics.lineStyle(GraphicsWindow.penWidth, GraphicsWindow.penColor);
		graphics.beginFill(GraphicsWindow.brushColor);
		graphics.drawEllipse(0, 0, width, height);
		graphics.endFill();
		Lib.current.addChild(this);
	}
	
}