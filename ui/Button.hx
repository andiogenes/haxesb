package sb.ui;
import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.Lib;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.text.TextFormatAlign;
import openfl.Assets;
import sb.Controls;

class Button extends Sprite
{

	public var txt : TextField;
	private var format : TextFormat;
	private var bmp : Bitmap;
	private var caption : String;
	public function new(caption:String, x:Float, y:Float) 
	{
		super();
		this.x = x;
		this.y = y;
		this.caption = caption;
		addForm(100, 100);
		addEventListener(MouseEvent.CLICK, onClick);
		Lib.current.addChild(this);
	}
	
	private function resize(width:Float, height:Float)
	{
		removeChild(bmp);
		removeChild(txt);
		addForm(width, height);
	}
	
	private function addForm(width:Float, height:Float)
	{
		format = new TextFormat(GraphicsWindow.fontName.fontName, GraphicsWindow.fontSize, GraphicsWindow.brushColor,
		GraphicsWindow.fontBold, GraphicsWindow.fontItalic);
		format.align = TextFormatAlign.CENTER;
		bmp = new Bitmap(Assets.getBitmapData("resources/button.png"));
		bmp.width = width; bmp.height = height;
		addChild(bmp);
		txt = new TextField();
		txt.defaultTextFormat = format;
		txt.text = caption;
		#if !html5
		txt.embedFonts = true;
		#end
		txt.selectable = false;
		txt.y = height / 2 - 10;
		txt.width = width; txt.height = height;
		addChild(txt);
	}
	
	private function onClick(event : MouseEvent) {
		Controls.LastClickedButton = this;
		if (ButtonClicked != null) {
			ButtonClicked();
		}
	}
	
	public var ButtonClicked : Void -> Void = null;
}