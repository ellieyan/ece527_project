# makfile configuration
NAME            = tHold
#OBJECTS         = dhry_1.o dhry_2.o omsp_func.o
OBJECTS         = tHold.o omsp_func.o

  # disable some warnings specific to the Dhrystone code
  WARNINGS        =  -Wall -Wno-implicit-int -Wno-implicit-function-declaration -Wno-return-type

  #CFLAGS         = -O2  ${WARNINGS} -g                                          # Old flags
  #CFLAGS          = -O1 ${WARNINGS} -g -mcpu=430 -mivcnt=16 -mmpy=16            # Uniarch flags     #   DMIPS=0.377632
  #CFLAGS          = -Os ${WARNINGS} -g -mcpu=430 -mivcnt=16 -mmpy=16            # Uniarch flags     #   DMIPS=0.373193
  #CFLAGS          = -O2 ${WARNINGS} -g -mcpu=430 -mivcnt=16 -mmpy=16            # Uniarch flags     #   DMIPS=0.396044
  CFLAGS          = -O0 ${WARNINGS} -g -mcpu=430 -mivcnt=16             # Uniarch flags     #   DMIPS=0.400228

  #switch the compiler (for the internal make rules)
  CC              = msp430-gcc


  .PHONY: all FORCE clean download download-jtag download-bsl dist

  #all should be the first target. it's built when make is runwithout args
  all: ${NAME}.elf ${NAME}.a43 ${NAME}.lst

  #confgigure the next line if you want to use the serial download
  download: download-uart
  #download: download-jtag
  #download: download-bsl

  #additional rules for files
  ${NAME}.elf: ${OBJECTS}
	  ${CC} -T linker.x -o $@ ${OBJECTS}

  ${NAME}.a43: ${NAME}.elf
	  msp430-objcopy -O ihex $^ $@

  ${NAME}.lst: ${NAME}.elf
	  msp430-objdump -dSt $^ >$@

  download-jtag: all
	  msp430-jtag -e ${NAME}.elf

  download-bsl: all
	  msp430-bsl -e ${NAME}.elf

  download-uart: all
	  openmsp430-loader.tcl -device /dev/ttyUSB0 -baudrate 115200 ${NAME}.elf

  clean:
	  rm -f ${NAME} ${NAME}.a43 ${NAME}.lst ${NAME}.elf *.o

  #backup archive
  dist:
	  tar czf dist.tgz *.c *.h *.txt makefile

  #dummy target as dependecy if something has to be build everytime
  FORCE:

  #project dependencies
  tHold.o: tHold.c
  omsp_func.o: omsp_func.c

