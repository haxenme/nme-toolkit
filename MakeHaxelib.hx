import sys.FileSystem;
import sys.io.File;

class MakeHaxelib
{
   public static function main()
   {
      var repos = [ "sdl", "png", "jpeg", "zlib", "ogg", "vorbis", "curl", "freetype", "modplug", "sdl-mixer", "angle" ];

      Sys.command("rm",["-rf", "nme-toolkit"]);
      Sys.command("mkdir",["nme-toolkit"]);
      for(repo in repos)
      {
         Sys.println('$repo...');
         FileSystem.createDirectory('nme-toolkit/$repo');
         copy(repo, 'nme-toolkit/$repo');
      }

      var bytes = File.getBytes("haxelib.json");
      File.saveBytes("nme-toolkit/haxelib.json",bytes);

      var bytes = File.getBytes("README.md");
      File.saveBytes("nme-toolkit/README.md",bytes);
   }

   static function copy(srcDir:String, destDir:String)
   {
      for(file in sys.FileSystem.readDirectory(srcDir))
      {
         if (file.substr(0,1)==".")
            continue;

         var src = srcDir + "/" + file;
         var dest = destDir + "/" + file;
         if (FileSystem.isDirectory(src))
         {
            FileSystem.createDirectory(dest);
            copy(src,dest);
         }
         else
         {
            var bytes = File.getBytes(src);
            File.saveBytes(dest,bytes);
         }
      }
   }
}

