import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def test_JK_FF(dut):

    #initial inputs
    dut.clk.value = 0
    dut.rst.value = 0
    dut.J.value = 0
    dut.K.value = 0

    #Apply asynchronous reset
    dut.rst.value = 1
    await Timer(1, unit="ns")

    assert int(dut.Q.value) == 0, "Reset failed"

    #Release reset
    dut.rst.value = 0
    await Timer(1, unit="ns")

    #Test all cases
    for J, K in [(0 , 0), (0 , 1), (1 , 0), (1, 1)]:

        #Save previous state
        pre_Q = int(dut.Q.value)

        #Apply input
        dut.J.value = J
        dut.K.value = K
        await Timer(1, unit="ns")

        if J == 0 and K == 0:
            exp_Q = pre_Q
        elif J == 0 and K == 1:
            exp_Q = 0
        elif J == 1 and K == 0:
            exp_Q = 1
        else:
            exp_Q = 1 - pre_Q

        #Generate rising clock
        dut.clk.value = 1
        await Timer(1, unit="ns")


        #Verify output
        assert int(dut.Q.value) == exp_Q, (
        f"FAIL: J={J}, K={K}, Expected Q={exp_Q}, Got Q={int(dut.Q.value)}"
        )

        #Generate falling clock edge
        dut.clk.value = 0
        await Timer(1, unit="ns")


    dut._log.info("All JK Flip-Flop tests passed!")
