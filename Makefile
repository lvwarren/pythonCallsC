all:
	python setup_vmath.py build_ext -i
test:
	python test_vmath.py
clean:
	@rm -rf build
	@rm vmath.c
	@rm vmath.cpython-37m-darwin.so
