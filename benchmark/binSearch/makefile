# makfile configuration
NAME            = binSearch
#OBJECTS         = dhry_1.o dhry_2.o omsp_func.o
OBJECTS         = binSearch.o omsp_func.o

  # disable some warnings specific to the Dhrystone code
  WARNINGS        =  -Wall -Wno-implicit-int -Wno-implicit-function-declaration -Wno-return-type

# Choose GCC toolchain prefix ('msp430' for MSPGCC / msp430-elf for GCC RedHat/TI)
ifndef MSPGCC_PFX
MSPGCC_PFX      = msp430
endif

# Select flags depending on selected toolchain
ifeq ($(MSPGCC_PFX),msp430-elf)
CFLAGS          = -D PFX_MSP430_ELF -O2 -Wall -g -mcpu=msp430x -mhwmult=none
else
CFLAGS          = -D PFX_MSP430     -O2 -Wall -g -mcpu=430    -mmpy=none    -mivcnt=16
endif

#CFLAGS         = -O2  ${WARNINGS} -g                                          # Old flags
  #CFLAGS          = -O1 ${WARNINGS} -g -mcpu=430 -mivcnt=16 -mmpy=16            # Uniarch flags     #   DMIPS=0.377632
  #CFLAGS          = -Os ${WARNINGS} -g -mcpu=430 -mivcnt=16 -mmpy=16            # Uniarch flags     #   DMIPS=0.373193
  #CFLAGS          = -O2 ${WARNINGS} -g -mcpu=430 -mivcnt=16 -mmpy=16            # Uniarch flags     #   DMIPS=0.396044
#  CFLAGS          = -O0 ${WARNINGS} -g -mcpu=430 -mivcnt=16             # Uniarch flags     #   DMIPS=0.400228
  #CFLAGS          = -O0 ${WARNINGS} -g -mcpu=430 -mivcnt=16  -mmcu=msp430f235           # Uniarch flags     #   DMIPS=0.400228

  #switch the compiler (for the internal make rules)
  CC              = $(MSPGCC_PFX)-gcc


  .PHONY: all FORCE clean download download-jtag download-bsl dist

  #all should be the first target. it's built when make is runwithout args
  all: ${NAME}.elf ${NAME}.s43 ${NAME}.a43 ${NAME}.lst 

  #confgigure the next line if you want to use the serial download
  download: download-uart
  #download: download-jtag
  #download: download-bsl

  #additional rules for files
  ${NAME}.elf: ${OBJECTS}
	  #${CC} -T linker.x -mmcu=msp430f235  -o $@ ${OBJECTS}
	  ${CC} -T linker.x -o $@ ${OBJECTS}

  ${NAME}.s43: ${OBJECTS}
	  ${CC} -T linker.x -S -o $@ ${OBJECTS}

  ${NAME}.a43: ${NAME}.elf
	  $(MSPGCC_PFX)-objcopy -O ihex $^ $@

  ${NAME}.lst: ${NAME}.elf
	  $(MSPGCC_PFX)-objdump -dSt $^ >$@

  download-jtag: all
	  $(MSPGCC_PFX)-jtag -e ${NAME}.elf

  download-bsl: all
	  $(MSPGCC_PFX)-bsl -e ${NAME}.elf

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
  binSearch.o: binSearch.c
  omsp_func.o: omsp_func.c

