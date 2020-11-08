SRC=http_client.c
EXE=c-posix-downloader
FLAGS=-pthread -lm
build=build

install : $(SRC)
	mkdir -p $(build)
	gcc -o $(build)/$(EXE) $(SRC) $(FLAGS)

test : | install
	cd $(build) && ./$(EXE)

clean :
	cd $(build)/ && rm -r *.exe
