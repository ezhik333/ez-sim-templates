# ez-sim-templates
Makefiles and scripts for easy working with different simulators

## How to use

Open folder for preferred simulator

    ./create_test.sh your_test_name

This will create a stub file `your_test_name_top.v` in `test_src` folder and script `run_your_test_name.sh`

    ./run_your_test_name.sh

This will run your test.

## Add more sources

If you want to add your source files, edit `set_sources.sh` with relative to current folder path.

    export TEST_PATH=../test_src

    export TEST_FILES="\
    ${TEST_PATH}/some_test_file.v \
    ";

    export SRC_FILES="\
    ../my_source_file_1.v \
    ../my_source_file_2.v \
    ";

## Run GTKWave
    ./run_your_test_name.sh gtkw

After setting up signals, don't forget to File->Write Savefile (Ctrl-S)

Savefile will be written to `your_test_name.gtkw`
## Clean simulation files

    make clean