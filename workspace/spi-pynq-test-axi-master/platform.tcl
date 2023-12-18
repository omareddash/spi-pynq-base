# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Omar\workspace-pynq\spi-pynq-test-axi-master\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Omar\workspace-pynq\spi-pynq-test-axi-master\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {spi-pynq-test-axi-master}\
-hw {D:\Work\Ataylot217-clone\project_2_axi_master_ila\design_1_wrapper_2022_2.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/Omar/workspace-pynq}

platform write
platform generate -domains 
platform active {spi-pynq-test-axi-master}
platform generate
platform active {spi-pynq-test-axi-master}
platform config -updatehw {D:/Work/Ataylot217-clone/project_2_axi_master_ila/design_1_wrapper_2022_2.xsa}
platform generate -domains 
platform config -updatehw {D:/Work/Ataylot217-clone/project_2_axi_master_ila/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {D:/Work/Ataylot217-clone/project_2_axi_master_ila/design_1_wrapper.xsa}
platform generate -domains 
