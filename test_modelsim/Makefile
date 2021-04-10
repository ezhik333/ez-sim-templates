TEST_PATH=../test_src

TOP_NAME=${TEST_NAME}_top
TOP_FILE=${TEST_PATH}/${TEST_NAME}_top.v

all:
	vlog -work work -permissive ${TOP_FILE} ${SRC_FILES} ${TEST_FILES}
	vsim -L work -batch ${TOP_NAME}  -do "run -all; quit"

nosim:
	vlog -work work -permissive ${TOP_FILE} ${SRC_FILES} ${TEST_FILES}

sim:
	vsim -L work -batch ${TOP_NAME}  -do "run -all; quit"

gtkw:
	gtkwave ${TEST_NAME}.vcd -a ${TEST_NAME}.gtkw &

clean:
	rm -rf work *.vcd