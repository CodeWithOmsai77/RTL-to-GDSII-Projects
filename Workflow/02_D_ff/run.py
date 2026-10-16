import os
from cocotb_tools.runner import get_runner

runner = get_runner("verilator")

runner.build(
    sources=["Dff.sv"],
    hdl_toplevel="Dff",
    build_dir="sim_build",
)

runner.test(
    hdl_toplevel="Dff",
    test_module="tb_Dff",
    build_dir="sim_build",
    test_dir=os.getcwd(),
    extra_env={"PYTHONPATH": os.getcwd()},
)
