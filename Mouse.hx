package sb;

class Mouse
{
	static public var mouseX:Float;
	static public var mouseY:Float;
	static public var isLeftButtonDown:Bool = false;
	static public var isRightButtonDown:Bool = false;
	
	static public function hideCursor()
	{
		flash.ui.Mouse.hide();
	}
	
	static public function showCursor()
	{
		flash.ui.Mouse.show();
	}
	
}