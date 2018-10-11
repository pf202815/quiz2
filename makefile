

all: college
college: collegemain.o college.o course.o 
	g++ -o college college.o collegemain.o course.o
collegemain.o: collegemain.cc college.h node.h college.h
	g++ -c collegemain.cc
college.o: college.cc college.h
	g++ -c college.cc
course.o: course.cc course.h
	g++ -c course.cc
doc:
	doxygen Doxyfile
clean:
	-rm *.o
	-rm college

