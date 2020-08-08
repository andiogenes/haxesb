package sb;
import sys.FileSystem;
import sys.io.FileInput;
import sys.io.FileOutput;

class File
{
	/*
	 * TODO
	 * 1. Операции со строками
	 * 2. Справки по функциям
	 * 3. Глобальное расположение файла
	 * 4. Реализация класса для других платформ
	 */
	static public function appendContents(filepath:String, contents:String) {
		if (!FileSystem.exists(filepath)) {
			return "FAILED";
		}
		else {
			var fout:FileOutput = sys.io.File.append(filepath, false);
			fout.writeString(contents);
			fout.close();
			return "SUCCESS";
		}
	}
	
	static public function copyFile(sourceFilePath:String, destinationFilePath:String) {
		var fout:FileOutput = sys.io.File.write(destinationFilePath, false);
		fout.writeString(sys.io.File.getContent(sourceFilePath));
		fout.close();
	}
	
	static public function createDirectory(directoryPath:String) {
		if (FileSystem.exists(directoryPath)){
			FileSystem.createDirectory(directoryPath);
		}
	}
	
	static public function deleteDirectory(directoryPath:String) {
		if (FileSystem.exists(directoryPath)){
			FileSystem.deleteDirectory(directoryPath);
		}
	}
	
	static public function deleteFile(filePath:String) {
		if (FileSystem.exists(filePath)){
			FileSystem.deleteFile(filePath);
		}
	}
	
	static public function getDirectoriesAndFiles(directoryPath:String):Array<String> {
		//if (FileSystem.exists(directoryPath)) {
			return FileSystem.readDirectory(directoryPath);
		//}
	}
	
	static public function insertLine(filePath:String, lineNumber:Int, contents:String) {
		
	}
	
	static public function readContents(filePath:String):String {
		//if (FileSystem.exists(filePath)){
			return sys.io.File.getContent(filePath);
		//}
	}
	
	static public function wrtieContents(filePath:String, contents:String) {
		var fout:FileOutput = sys.io.File.write(filePath, false);
		fout.writeString(contents);
		fout.close();
	}
}