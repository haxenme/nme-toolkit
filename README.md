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

git clone git@github.com:native-toolkit/angle.git
git clone git@github.com:native-toolkit/freetype.git
git clone git@github.com:native-toolkit/jpeg.git
git clone git@github.com:native-toolkit/png.git
git clone git@github.com:native-toolkit/zlib.git
git clone git@github.com:native-toolkit/ogg.git
git clone git@github.com:native-toolkit/vorbis.git
git clone git@github.com:native-toolkit/modplug.git
git clone git@github.com:native-toolkit/curl.git
git clone git@github.com:native-toolkit/sdl.git
git clone git@github.com:native-toolkit/sdl-mixer.git



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

