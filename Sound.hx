package sb;
import sb.utils.Music;

class Sound
{

	static public function play(source:String):Music
	{
		return new Music(source, false);
	}
	
	static public function playAndWait(source:String):Music
	{
		return new Music(source, true);
	}
	
	static public function pause(soundPath:Music)
	{
		if (soundPath.isPlaying == true) {
			soundPath.pause();
		}
		else {
			soundPath.resume();
		}
	}
	
	static public function stop(soundPath:Music)
	{
		soundPath.stop();
	}
	
}