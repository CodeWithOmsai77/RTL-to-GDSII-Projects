
import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def test_Dff(dut):

    # Initialize inputs
    dut.clk.value = 0
    dut.rst.value = 0
    dut.D.value = 0

    # Apply asynchronous reset
    dut.rst.value = 1
    await Timer(1, unit="ns")

    assert int(dut.Q.value) == 0, "Reset failed: Q should be 0"

    # Release reset
    dut.rst.value = 0
    await Timer(1, unit="ns")

    # Test both possible data values
    for data in [0, 1]:

        dut.D.value = data
        await Timer(1, unit="ns")

        # Generate rising clock edge
        dut.clk.value = 1
        await Timer(1, unit="ns")

        # Verify captured data
        actual = int(dut.Q.value)
        assert actual == data, (
            f"Capture failed: expected Q={data}, got Q={actual}"
        )

        # Return clock to low
        dut.clk.value = 0
        await Timer(1, unit="ns")

    dut._log.info("DFF test completed successfully")
