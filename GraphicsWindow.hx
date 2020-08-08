package sb;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.Lib;
import flash.text.Font;
import flash.ui.Keyboard;
import openfl.Assets;

class GraphicsWindow
{
	static public var brushColor:UInt = 0x000000;
	static public var penColor:UInt = 0x111111;
	static public var penWidth:Int = 4;
	static public var fontBold:Bool = false;
	static public var fontItalic:Bool = false;
	static public var fontName:Font = Assets.getFont("resources/tahoma.ttf");
	static public var fontSize:Int = 12;
	static public var lastKey:UInt;
	static public var mouseX:Float;
	static public var mouseY:Float;
	
	static public function clear()
	{
		Lib.current.graphics.clear();
		for (i in 0...Lib.current.numChildren) {
			Lib.current.removeChildAt(0);
		}
	}
	
	static public function setBackgroundColor(color:Int)
	{
		#if !flash
		Lib.current.stage.opaqueBackground = color;
		#else
		Lib.current.stage.color = color;
		#end
	}
	
	static public function drawBoundText(x:Float, y:Float, width:Float, y:String)
	{
		
	}
	
	static public function drawText(x:Float, y:Float, y:String)
	{
		
	}
	
	static public function drawEllipse(x:Float, y:Float, width:Float, height:Float)
	{
		Lib.current.graphics.lineStyle(penWidth, penColor);
		Lib.current.graphics.beginFill(brushColor);
		Lib.current.graphics.drawEllipse(x, y, width, height);
		Lib.current.graphics.endFill();
	}
	
	static public function drawImage(imageName:BitmapData, x:Float, y:Float)
	{
		Lib.current.graphics.beginBitmapFill(imageName);
		Lib.current.graphics.drawRect(x, y, imageName.width, imageName.height);
		Lib.current.graphics.endFill();
	}
	
	static public function drawResizedImage(imageName:BitmapData, x:Float, y:Float, width:Float, height:Float)
	{
		//imageName.width = width; imageName.height = height;
		Lib.current.graphics.beginBitmapFill(imageName);
		Lib.current.graphics.drawRect(x, y, imageName.width, imageName.height);
		Lib.current.graphics.endFill();
	}
	
	static public function drawLine(x1:Float, y1:Float, x2:Float, y2:Float)
	{
		Lib.current.graphics.lineStyle(penWidth, penColor);
		Lib.current.graphics.moveTo(x2, y2);
		Lib.current.graphics.lineTo(x1, y1);
	}
	
	static public function drawRectangle(x1:Float, y1:Float, width:Float, height:Float)
	{
		Lib.current.graphics.lineStyle(penWidth, penColor);
		Lib.current.graphics.beginFill(brushColor);
		Lib.current.graphics.drawRect(x1, y1, width, height);
		Lib.current.graphics.endFill();
	}
	
	static public function drawTriangle(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float)
	{
		Lib.current.graphics.lineStyle(penWidth, penColor);
		Lib.current.graphics.beginFill(brushColor);
		Lib.current.graphics.moveTo(x1, y1);
		Lib.current.graphics.lineTo(x2, y2);
		Lib.current.graphics.lineTo(x3, y3);
		Lib.current.graphics.lineTo(x1, y1);
		Lib.current.graphics.endFill();
	}
	
	static public function getColorFromRGB(red:Int, green:Int, blue:Int)
	{
		// Сделать конвертер из ргб в уинт.
	}
	
	static public function getPixel(x:Float, y:Float)
	{
		
	}
	
	static public function setPixel(x:Float, y:Float, color:UInt)
	{
		Lib.current.graphics.lineStyle(0, penColor);
		Lib.current.graphics.beginFill(color);
		Lib.current.graphics.drawRect(x, y, 1, 1);
		Lib.current.graphics.endFill();
	}
	
	static public function init()
	{
		Lib.current.stage.addEventListener(KeyboardEvent.KEY_DOWN, function(e:KeyboardEvent) {
			lastKey = e.keyCode;
			if (KeyDown != null) {
				KeyDown();
			}
		});
		Lib.current.stage.addEventListener(KeyboardEvent.KEY_UP, function(e:KeyboardEvent) {
			lastKey = e.keyCode;
			if (KeyUp != null) {
				KeyUp();
			}
		});
		Lib.current.stage.addEventListener(MouseEvent.MOUSE_DOWN, function(e:MouseEvent) {
			Mouse.isLeftButtonDown = true;
			if (MouseDown != null) {
				MouseDown();
			}
		});
		Lib.current.stage.addEventListener(MouseEvent.MOUSE_MOVE, function(e:MouseEvent) {
			mouseX = Mouse.mouseX = e.stageX;
			mouseY = Mouse.mouseY = e.stageY;
			if (MouseMove != null) {
				MouseMove();
			}
		});
		Lib.current.stage.addEventListener(MouseEvent.MOUSE_UP, function(e:MouseEvent) {
			Mouse.isLeftButtonDown = false;
			if (MouseUp != null) {
				MouseUp();
			}
		});
		Lib.current.stage.addEventListener(MouseEvent.RIGHT_MOUSE_DOWN, function(e:MouseEvent) {
			Mouse.isRightButtonDown = true;
			if (MouseDown != null) {
				MouseDown();
			}
		});
		Lib.current.stage.addEventListener(MouseEvent.RIGHT_MOUSE_UP, function(e:MouseEvent) {
			Mouse.isRightButtonDown = false;
			if (MouseUp != null) {
				MouseUp();
			}
		});
	}
	
	static public var KeyDown:Void->Void = null;
	static public var KeyUp:Void->Void = null;
	static public var MouseDown:Void->Void = null;
	static public var MouseMove:Void->Void = null;
	static public var MouseUp:Void->Void = null;
}