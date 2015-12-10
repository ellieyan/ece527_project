
# Generate ENDPOINT PAIR PATHS# {{{
# Generate full paths
#cd /ece/home/cheru007/bit_blasted_no_mult_flat_new/run_10.0/results_10.0/sim
#pt_shell -f ptvcd1.tcl
#wait
#pt_shell -f ptvcd7.tcl
#wait
#pt_shell -f ptvcd2.tcl
#wait
#pt_shell -f ptvcd3.tcl
#wait
#pt_shell -f ptvcd4.tcl
#wait
#pt_shell -f ptvcd5.tcl
#wait
#pt_shell -f ptvcd6.tcl
# Create ptvcd's for three cases 1) no multiplier 2) no clock_gate
#./run_c crc |& output_working
#mv output_working ../src-c/crc/dynamic_path_output
#
#
#  for bm (div binSearch inSort intFilt intAVG mult rle tHold tea8)
#  do
#    ./run_c $bm |& tee output_$bm
#    mv dynamic_instr_path dynamic_instr_path_$bm
#  done# }}}

#for bm (mult) ## intFilt missed# {{{
#for bm (div binSearch inSort intAVG rle tea8) ## intFilt and mult missed
#for bm (tHold intFilt)
#for bm (dhrystone_4mcu)
#for bm (lp_modes_asic)
#for bm (coremark_v1.0 dhrystone_v2.1 dhrystone_4mcu)
#for  mode (17 16)
#for bm (mult binSearch)
#for bm (div binSearch inSort intFilt intAVG mult rle tHold tea8)
#do
#  mkdir /scratch/cheru007/msp430/core/sim/rtl_sim/src-c/$bm
#   cd $gate_sim/../src-c/$bm
#   for i in *
#    do
#      if [ -f "$i" ]; then
#       cp "$i" /scratch/cheru007/msp430/core/sim/rtl_sim/src-c/$bm
#      fi
#    done# }}}
  #for bm (div binSearch inSort intFilt intAVG mult rle tHold tea8)
#done

all_bms=/scratch/cheru007/msp430/core/sim/rtl_sim/src-c
for  mode (17)
do
  for bm (div binSearch inSort intFilt intAVG mult rle tHold tea8)
  do
    vcd_name=tb_openMSP430.vcd
    #design_name=test_7_with_constraint_6.5# {{{
    #for design_name (test_7_with_constraint_6.5 test_8_with_constraint_6.0)
    #for design_name (test_10_new_constraint_6.5)# }}}
    for design_name (test_6_baseline)
    do
       design_folder=/scratch/cheru007/LAID_OUTS/$design_name/run_10.0/results_10.0/
       bm_stuff_folder=$all_bms/$bm/$design_name
       gate_sim_folder=/scratch/cheru007/msp430/core/sim/rtl_sim/run
    #design_folder=/home/cheru007/LAID_OUTS/$design_name/run_10.0/results_10.0/# {{{
    #design_folder=/project/sartori00/Run/openmsp430/core/synthesis/synopsys/RUNS/$design_name/run_10.0/results_10.0/
#   export bm_src_folder=/project/sartori00/Run/openmsp430/core/sim/rtl_sim/src-c/$bm
    #bm_stuff_folder=/project/sartori00/Run/openmsp430/core/sim/rtl_sim/src-c/$bm/$design_name
    #export bm_stuff_folder=/home/cheru007/LAID_OUTS/$design_name/run_10.0/results_10.0/NEWER_RUNS
#    cd $bm_stuff_folder
#      vcdpost +unique +scalar tb_openMSP430.vcd new_vcd.vcd
#    cd -
    #ls -l $bm_stuff_folder
#    echo $bm
#    head $folder/dynamic_instr_path# }}}
       if [[ ! ( -e $bm_stuff_folder) ]]
       then
         mkdir $bm_stuff_folder
       fi

       if [[ ! ( -e $design_folder/runfiles) ]]
       then
         mkdir $design_folder/runfiles
       fi
#   ls -l $bm_stuff_folder

  #   echo  ------------------------------
  #   echo $bm
  #   echo  ------------------------------
  #   tail -n 11 $folder/output_run_$bm
  #
  # COMPILE BM (if necessary)
#  cd $bm_src_folder
#    make clean; make
#    mv *.lst $bm_stuff_folder
#  cd -

  # RUN BM,  MV STUFF TO IT'S bm_stuff_folder
    echo Running $bm
    cd $gate_sim_folder
    echo copying_templates_for_running
    cp templates/core_partial_template.f $bm_stuff_folder/core_partial.f
    cp templates/tb_openMSP430_template.v $bm_stuff_folder/tb_openMSP430.v
    perl -pli -e "s/_DESIGN_NAME_/$design_name/"  $bm_stuff_folder/core_partial.f
    perl -pli -e "s/_DESIGN_NAME_/$design_name/"  $bm_stuff_folder/tb_openMSP430.v
    cp $bm_stuff_folder/core_partial.f $gate_sim_folder/../src/
    cp $bm_stuff_folder/tb_openMSP430.v $gate_sim_folder/../../../bench/verilog
    ./run_c $bm |& tee gate_sim_output_$bm
    #./run
    echo Moving Stuff
    mv pmem.mem $bm_stuff_folder
    mv gate_sim_output_$bm  $bm_stuff_folder
    mv dynamic_instr_path  $bm_stuff_folder
    #vcdpost +scalar +unique tb_openMSP430.vcd new_vcd.vcd
    mv tb_openMSP430.vcd $bm_stuff_folder
    #mv new_vcd.vcd $bm_stuff_folder
#   #mv my_dbg $bm_stuff_folder

#  #COPY TEMPLATES
    echo Copying Templates
    cp $gate_sim_folder/templates/begin_end.pl $bm_stuff_folder
    cp $gate_sim_folder/templates/env_template.env $bm_stuff_folder/test.env
    cp $gate_sim_folder/templates/cmd_template.cmd $bm_stuff_folder/test.cmd
    cp $gate_sim_folder/templates/post_process_cmd_template.env $bm_stuff_folder/test_pp.cmd
##  ##
#  ##GO TO bm_stuff_folder AND MAKE NECESSARY SUBSTITUTIONS IN TEMPLATES
    cd $bm_stuff_folder
    perl begin_end.pl test.cmd test_pp.cmd # this does the substitution
    perl -pli -e "s/_BM_/$bm/"  $bm_stuff_folder/test.cmd
    perl -pli -e "s/_MODE_/$mode/"  $bm_stuff_folder/test.cmd
    perl -pli -e "s/_DESIGN_NAME_/$design_name/"  $bm_stuff_folder/test.cmd
    perl -pli -e "s/__VCD_NAME__/$vcd_name/"  $bm_stuff_folder/test.cmd
    #perl -pli -e "s/__VCD_PATH__/$bm_stuff_folder/"  $bm_stuff_folder/test.cmd
#    #perl -pli -e "s/_BM_/$bm/"  $folder/test_pp.cmd
    cp $bm_stuff_folder/test.env $design_folder/runfiles/$bm.env
    cp $bm_stuff_folder/test.cmd $design_folder/runfiles/$bm.cmd
  #   #cp test_pp.cmd $design_folder/runfiles/$bm\_pp.cmd
    cd -
#  #
  ##RUN POWER OPT (2 stage)
     cd $design_folder
     echo Running PowerOpt on $bm
     ~/PowerOpt/work/bin/PowerOpt  -env $design_folder/runfiles/$bm.env -f $design_folder/runfiles/$bm.cmd |& tee PowerOpt_tee_$bm\_new_$mode
     mv unique_not_toggle_gate_sets untDump
     mv toggle_info $bm_stuff_folder/toggle_info_$bm
     mv PowerOpt_tee_$bm\_new_$mode $bm_stuff_folder
     mv pt.log $bm_stuff_folder/pt.log_$bm
  #  echo Running $bm second post_process
  #  ~/PowerOpt/work/bin/PowerOpt  -env $design_folder/runfiles/$bm.env -f $design_folder/runfiles/$bm\_pp.cmd |& tee output_pp_run_$bm
  #  mv output_pp_run_$bm $bm_stuff_folder
  #  mv untDump $bm_stuff_folder
  #  mv pt.log $folder/pt_pp.log
     cd -
  #MISC
   done
  done
done
#
