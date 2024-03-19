# nme-toolkit
Native libraries used for building nme

Install
-------
You can install from haxelib using:

```
haxelib install nme-toolkit
```


Updating the Libraries
-------
The submodules get pulled from the https://github.com/native-toolkit repos. If you want to update the contents of these libraries, create a folder, like "nme-toolkit-dev" and then into this,
clone the individual library repos, and point the haxelib at the directory:

```
mkdir nme-toolkit-dev
haxelib dev nme-toolkit nme-toolkit-dev
cd nme-toolkit-dev

git clone git@github.com:haxenme/toolkit-angle.git angle
git clone git@github.com:haxenme/toolkit-freetype.git freetype
git clone git@github.com:haxenme/toolkit-jpeg.git jpeg
git clone git@github.com:haxenme/toolkit-png.git png
git clone git@github.com:haxenme/toolkit-zlib.git zlib
git clone git@github.com:haxenme/toolkit-ogg.git ogg
git clone git@github.com:haxenme/toolkit-vorbis.git vorbis
git clone git@github.com:haxenme/toolkit-modplug.git modplug
git clone git@github.com:haxenme/toolkit-curl.git curl
git clone git@github.com:haxenme/toolkit-sdl.git sdl
git clone git@github.com:haxenme/toolkit-sdl-mixer.git sdl-mixer



Updating nme-toolkit
-------
Once the library repos are updated, the nme-toolkit repo can be updated.

Clone (recursively) this repo, and then point haxelib at the root directory.

```
git clone --recurse https://github.com/haxenme/nme-toolkit.git
```
```
haxelib dev nme-toolkit nme-toolkit
```

Update the submodules that have changed:
```
cd (sdl/png/....); git pull origin master
```

Now the new library references can be pushed to the nme-toolkit repo.

