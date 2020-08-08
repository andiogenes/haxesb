package sb.ui;
import flash.display.Sprite;
import flash.Lib;
import flash.text.TextField;
import flash.events.KeyboardEvent;
import flash.text.TextFormat;
import sb.Controls;

class MultilineTextBox extends Sprite
{
	public var tf : TextField;
	private var format :TextFormat;
	public function new(x:Float, y:Float) 
	{
		super();
		this.x = x;
		this.y = y;
		format = new TextFormat(GraphicsWindow.fontName.fontName, GraphicsWindow.fontSize, GraphicsWindow.brushColor,
		GraphicsWindow.fontBold, GraphicsWindow.fontItalic);
		tf = new TextField();
		tf.width = 200;
		tf.height = 80;
		tf.type = flash.text.TextFieldType.INPUT;
		tf.border = true;
		tf.defaultTextFormat = format;
		tf.embedFonts = true;
		tf.background = true;
		tf.backgroundColor = 0xFFFFFF;
		addChild(tf);
		addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		Lib.current.addChild(this);
	}
	
	private function onKeyDown(event:KeyboardEvent) {
		Controls.LastTypedMultilineTextBox = this;
		if (event.keyCode == 13) {
			tf.text += "\n";
		}
		if (TextTyped != null) {
			TextTyped();
		}
	}
	
	public var TextTyped:Void->Void = null;
	
}