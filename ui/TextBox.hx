package sb.ui;
import flash.display.Sprite;
import flash.events.KeyboardEvent;
import flash.Lib;
import flash.text.TextFormat;
import flash.text.TextField;
import sb.Controls;

class TextBox extends Sprite
{

	public var tf : TextField;
	private var format : TextFormat;
	public function new(x:Float, y:Float) 
	{
		super();
		this.x = x;
		this.y = y;
		format = new TextFormat(GraphicsWindow.fontName.fontName, GraphicsWindow.fontSize, GraphicsWindow.brushColor,
		GraphicsWindow.fontBold, GraphicsWindow.fontItalic);
		tf = new TextField();
		tf.width = 160;
		tf.height = 20;
		tf.type = flash.text.TextFieldType.INPUT;
		tf.border = true;
		tf.background = true;
		tf.backgroundColor = 0xFFFFFF;
		tf.defaultTextFormat = format;
		tf.embedFonts = true;
		addChild(tf);
		addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		Lib.current.addChild(this);
	}
	
	private function onKeyDown(event:KeyboardEvent) {
		Controls.LastTypedTextBox = this;
		if (TextTyped != null) {
			TextTyped();
		}
	}
	
	public var TextTyped:Void->Void = null;
	
}