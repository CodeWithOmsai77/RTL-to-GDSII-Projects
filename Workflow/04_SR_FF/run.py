import os
from cocotb_tools.runner import get_runner

runner = get_runner("verilator")

runner.build(
    sources=["SR_FF.sv"],
    hdl_toplevel="SR_FF",
    build_dir="sim_build",
)

runner.test(
    hdl_toplevel="SR_FF",
    test_module="tb_SR_FF",
    build_dir="sim_build",
    test_dir=os.getcwd(),
    extra_env={"PYTHONPATH": os.getcwd()},
)
