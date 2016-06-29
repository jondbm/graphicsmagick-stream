SRC=$(wildcard src/*.c)

bin/convert: $(SRC) Makefile
	mkdir -p bin
	gcc src/*.c -o bin/convert -L/usr/local/opt/libarchive/lib -I/usr/local/opt/libarchive/include -larchive -O `GraphicsMagickWand-config --cflags --cppflags --ldflags --libs`

clean:
	rm -f bin/convert
