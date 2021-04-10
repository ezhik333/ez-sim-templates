TOP_FILE=${TEST_PATH}/${TEST_NAME}_top.v
GTKW_FILE=${TEST_NAME}.gtkw

# run test
all:
	echo iverilog ${IVERILOG_PARAMS} -o ${TEST_NAME}.o ${TOP_FILE} ${TEST_FILES} ${SRC_FILES} ${SRC_EXTRA_FILES}
	iverilog ${IVERILOG_PARAMS} -o ${TEST_NAME}.o ${TOP_FILE} ${TEST_FILES} ${SRC_FILES} ${SRC_EXTRA_FILES}
	vvp ${TEST_NAME}.o

# run and start GTKWavw
gtkw: 
	iverilog ${IVERILOG_PARAMS} -o ${TEST_NAME}.o ${TOP_FILE} ${TEST_FILES} ${SRC_FILES} ${SRC_EXTRA_FILES}
	vvp ${TEST_NAME}.o
	gtkwave ${TEST_NAME}.vcd -a ${GTKW_FILE} &

# remove all output files
clean:
	rm *.vcd *.o

