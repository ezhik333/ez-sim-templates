TEST_PATH=../test_src

TOP_NAME=${TEST_NAME}_top
TOP_FILE=${TEST_PATH}/${TEST_NAME}_top.v

all:
	xvlog -work work --relax --sv ${TOP_FILE} ${SRC_FILES} ${TEST_FILES}
	xelab --relax -L work -L xpm --debug all ${TOP_NAME} glbl -s ${TOP_NAME}
	xsim ${TOP_NAME} --runall

noxsim:
	xvlog -work work --relax --sv ${TOP_FILE} ${SRC_FILES} ${TEST_FILES}
	xelab --relax -L work -L xpm --debug all ${TOP_NAME} glbl -s ${TOP_NAME}

sim:
	xsim ${TOP_NAME}

gtkw:
	gtkwave ${TEST_NAME}.vcd -a ${TEST_NAME}.gtkw &

clean:
	rm -rf *.jou *.log *.pb *.wdb *.vcd xsim.dir