package sb.utils;
import flash.media.Sound;
import flash.media.SoundChannel;
import flash.net.URLRequest;

class Music extends Sound
{

	public var position:Float;
	private var sch:SoundChannel;
	public var isPlaying:Bool;
	public function new(source:String, wait:Bool) 
	{
		super();
		load(new URLRequest(source));
		sch = play();
		isPlaying = true;
		if (wait){
			Sys.sleep(this.length);
		}
	}
	
	public function pause()
	{
		position = sch.position;
		isPlaying = false;
		sch.stop();
	}
	
	public function resume()
	{
		play(position);
		isPlaying = true;
	}
	
	public function stop()
	{
		sch.stop();
		position = 0;
		close();
	}
	
}