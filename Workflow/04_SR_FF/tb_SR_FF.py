import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def Test_SR_FF(dut):

#initial input
    dut.clk.value = 0
    dut.rst.value = 0
    dut.S.value = 0
    dut.R.value = 0

    #apply async rst
    dut.rst.value = 1
    await Timer(1, unit="ns")

    assert int(dut.Q.value) == 0, "Reset falied"

    #Release rst
    dut.rst.value = 0
    await Timer(1, unit="ns")

    #Test all cases
    for S, R in [(0, 0), (0, 1), (1, 0), (1, 1)]:

        pre_Q = int(dut.Q.value)

        #Apply input
        dut.S.value = S
        dut.R.value = R
        await Timer (1, unit="ns")

        if S == 0 and R == 0 :
            exp_Q = pre_Q
        elif S == 0 and R == 1 :
            exp_Q = 0
        elif S == 1 and R == 0 :
            exp_Q = 1
        else :
            dut._log.info("Invalid SR input: S=1, R=1")

        #Generate rising clock edge
        dut.clk.value = 1
        await Timer (1, unit="ns")

        int(dut.Q.value) == exp_Q, (
        f"Fail : S = {S}, R = {R}, Expected_Q = {exp_Q}, Got Q = {int(dut.Q.value)}"
        )


        #generate falling edge
        dut.clk.value = 0
        await Timer (1, unit="ns")

    dut._log.info("All SR FF Cases passed")
