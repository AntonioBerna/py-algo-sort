PYC=pyinstaller
SRCS=app.py
TARGET=py-algo-sort.app
PYFLAGS=--onefile -n $(TARGET) -p $(VIRTUAL_ENV)

all:
	$(PYC) $(PYFLAGS) $(SRCS)

.PHONY: clean

clean:
	$(RM) -r dist/ build/ $(TARGET).spec