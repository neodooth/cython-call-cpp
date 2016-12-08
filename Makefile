all:
	gcc c/sample.c \
	-fPIC -shared \
	-o libsample.so

py:
	python setup.py build_ext --inplace