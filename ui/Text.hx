package sb.ui;
import flash.display.Sprite;
import flash.Lib;
import flash.text.TextField;
import flash.text.TextFormat;
import sb.GraphicsWindow;

class Text extends Sprite
{
	
	private var format : TextFormat;
	public var tf : TextField;
	public function new(caption:String, x:Float, y:Float) 
	{
		super();
		this.x = x; this.y = y;
		format = new TextFormat(GraphicsWindow.fontName.fontName, GraphicsWindow.fontSize, GraphicsWindow.brushColor,
		GraphicsWindow.fontBold, GraphicsWindow.fontItalic);
		tf = new TextField();
		tf.defaultTextFormat = format;
		tf.text = caption;
		tf.width = 1000; tf.height = 1000;
		#if !html5
		tf.embedFonts = true;
		#end
		tf.selectable = false;
		addChild(tf);
		Lib.current.addChild(this);
	}
	
}