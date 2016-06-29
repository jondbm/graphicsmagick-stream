SRC=$(wildcard src/*.c)

bin/convert:
	mkdir -p bin
	gcc src/*.c -o bin/convert -L/usr/local/opt/libarchive/lib -I/usr/local/opt/libarchive/include -larchive -O `GraphicsMagickWand-config --cppflags --cflags --cppflags --ldflags --libs`	
clean:
	rm -f bin/convert