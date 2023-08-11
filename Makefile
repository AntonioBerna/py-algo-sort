PYC=pyinstaller
SRCS=src/app.py
TARGET=py-algo-sort.app
PYFLAGS=--onefile -n $(TARGET) -p $(VIRTUAL_ENV) --hidden-import=PIL._tkinter_finder

all:
	$(PYC) $(PYFLAGS) $(SRCS)

.PHONY: clean run

clean:
	$(RM) -r dist/ build/ $(TARGET).spec

run:
	./dist/$(TARGET)
