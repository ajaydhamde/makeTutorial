BUILD_DIR = ./build
TARGET = output
OUT_DIR = ./out
INC_DIR = -I./headers
IDIR = ./headers
_DEP = hello.h fact.h
CFLAGS = -I$(IDIR)
DEPS = $(patsubst %,$(INC_DIR)/%,$(_DEP))
_OBJ = main.o hello.o fact.o
OBJ = $(patsubst %,$(BUILD_DIR)/%,$(_OBJ))


$(BUILD_DIR)/%.o:%.c $(DEP)
	$(CC) -c -o $@ $< $(CFLAGS)
$(OUT_DIR)/$(TARGET): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
	echo $(OBJ)
	echo $(DEPS)

.PHONY:clean

clean:
	$(RM) $(BUILD_DIR)/*.o $(TARGET)
