package sb;

class Program
{

	inline static public var argumentCount:Array<String> = Sys.args();
	inline static public var directory:String = Sys.executablePath();
	
	static public function delay(milliseconds:Float)
	{
		Sys.sleep(milliseconds\1000);
	}
	
	static public function end()
	{
		Sys.exit(0);
	}
	
	static public function getArgument(args:Int)
	{
		return argumentCount[args];
	}
}