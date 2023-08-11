PYC=pyinstaller
SRCS=app.py
TARGET=py-algo-sort.app
PYFLAGS=--onefile -n $(TARGET) -p $(VIRTUAL_ENV)

all:
	$(PYC) $(PYFLAGS) $(SRCS)

.PHONY: clean run

clean:
	$(RM) -r dist/ build/ $(TARGET).spec

run:
	./dist/$(TARGET)
