#!/bin/bash

TEST_PATH=../test_src
TEST_NAME=$1

if [[ $TEST_NAME = "" ]]
then 
    echo "Enter test name:"
    read TEST_NAME
fi

TEST_TOP=${TEST_NAME}_top
TEST_TOP_FILENAME=${TEST_PATH}/${TEST_TOP}.v
SH_FILENAME=run_${TEST_NAME}.sh

echo ". set_sources.sh" > ${SH_FILENAME}
echo "export TEST_NAME=${TEST_NAME}" >> ${SH_FILENAME}
echo "make \${@}" >> ${SH_FILENAME}

chmod +x ${SH_FILENAME}

if [ ! -f "${TEST_TOP_FILENAME}" ]; then 

    echo "module ${TEST_TOP} ();

reg clk = 0;
reg rst = 0;

always #1 clk <= ~clk;

// INSERT CODE HERE

initial begin
    \$dumpfile(\"${TEST_NAME}.vcd\");
    \$dumpvars(0,${TEST_TOP});

    #5000 \$finish;
end

endmodule
" > ${TEST_TOP_FILENAME}
else
    echo "WARNING: File ${TEST_TOP_FILENAME} already exist. "
fi