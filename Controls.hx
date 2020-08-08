package sb;
import flash.display.Sprite;
import flash.Lib;
import sb.ui.Button;
import sb.ui.MultilineTextBox;
import sb.ui.TextBox;

class Controls
{
	static public var LastClickedButton:Button;
	static public var LastTypedTextBox:TextBox;
	static public var LastTypedMultilineTextBox:MultilineTextBox;
	/**
	 * 
	 * @param	caption Текст для отображения на кнопке.
	 * @param	left Координата X кнопки.
	 * @param	top Координата Y кнопки.
	 * @return Кнопка, которая только что была добавлена в графическое окно.
	 */
	static public function addButton(caption:String, left:Float, top:Float):Button 
	{
		return new Button(caption, left, top);
	}
	
	static public function addMultilineTextBox(left:Float, top:Float):MultilineTextBox
	{
		return new MultilineTextBox(left, top);
	}
	
	static public function addTextBox(left:Float, top:Float):TextBox
	{
		return new TextBox(left, top);
	}
	
	/**
	 * 
	 * @param	controlName Имя элемента управления.
	 * @return Ничего.
	 */
	static public function addControl(controlName:Sprite) {
		// Можно удалить это.
		Lib.current.addChild(controlName);
	}
	
	/**
	 * 
	 * @param	controlName Имя элемента управления.
	 * @return Ничего.
	 */
	static public function hideControl(controlName:Sprite) {
		controlName.alpha = 0;
	}
	
	/**
	 * 
	 * @param	controlName Имя элемента управления
	 * @return Ничего.
	 */
	static public function showControl(controlName:Sprite) {
		controlName.alpha = 1;
	}
	
	/**
	 * 
	 * @param	buttonName Кнопка, с которой был запрошен текст.
	 * @return Текущий текст на кнопке.
	 */
	static public function getButtonCaption(buttonName:Button) {
		return buttonName.txt.text;
	}
	
	static public function getTextBoxText(textBoxName:TextBox) {
		return textBoxName.tf.text;
	}
	
	static public function getMultilineTextBoxText(textBoxName:MultilineTextBox) {
		return textBoxName.tf.text;
	}
	
	static public function move(controlName:Sprite, x:Float, y:Float) {
		controlName.x = x; controlName.y = y;
	}
	
	static public function remove(controlName) {
		Lib.current.removeChild(controlName);
	}
	
	static public function setButtonCaption(buttonName:Button, caption:String) {
		buttonName.txt.text = caption;
	}
	
	static public function setTextBoxText(textBoxName:TextBox, text:String) {
		textBoxName.tf.text = text;
	}
	
	static public function setMultilineTextBoxText(textBoxName:MultilineTextBox, text:String) {
		textBoxName.tf.text = text;
	}
	
	static public function setSize(control:Dynamic, width:Float, height:Float) {
		control.resize(width, height);
	}
	
}