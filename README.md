<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0F172A,55:075985,100:06B6D4&height=180&section=header&text=RTL%20to%20GDSII%20Projects&fontSize=35&fontColor=FFFFFF&fontAlignY=38&desc=Design%20%E2%86%92%20Verify%20%E2%86%92%20Synthesize%20%E2%86%92%20Implement&descAlignY=62&descSize=15" width="100%" alt="RTL to GDSII Projects banner" />

<p>
  <img src="https://img.shields.io/badge/RTL-Verilog%20%7C%20SystemVerilog-2563EB?style=for-the-badge" alt="Verilog and SystemVerilog" />
  <img src="https://img.shields.io/badge/Verification-Verilator%20%7C%20Cocotb-0F766E?style=for-the-badge" alt="Verilator and Cocotb" />
  <img src="https://img.shields.io/badge/Physical%20Design-OpenROAD%20%7C%20ORFS-0891B2?style=for-the-badge" alt="OpenROAD and ORFS" />
</p>

**A hands-on portfolio of digital RTL designs, simulation, synthesis, and introductory open-source physical design.**

</div>

---

## 🧭 About This Repository

This repository records my practical learning journey from writing RTL to inspecting implementation results. Each project keeps its design source, testbench, relevant configuration, and available output artifacts together.

The goal is to understand the complete engineering process—not just make code compile:

**Specification → RTL → Verification → Synthesis → Floorplanning → Physical Design → Inspect Results**

> These are educational projects. A generated layout or GDS file does not, by itself, establish timing closure, signoff, or tapeout readiness.

---

## 🏆 Projects

### 🔢 01 · [6-to-64 Decoder](Workflow/01_Decoder_6to64)

A **combinational SystemVerilog decoder** that converts a 6-bit input into a 64-bit one-hot output. For each input value from 0 to 63, exactly one output bit is asserted.

📘 **[Read the decoder project README](Workflow/01_Decoder_6to64/README.md)**

---

### ⏱️ 02 · [Resettable D Flip-Flop](Workflow/02_D_ff)

A **positive-edge-triggered D flip-flop** with an active-high asynchronous reset, written in SystemVerilog. The output captures the input at the rising clock edge and clears immediately when reset is asserted.

📘 **[Read the D flip-flop project README](Workflow/02_D_ff/README.md)**

---

### 🔁 03 · [JK Flip-Flop](Workflow/03_JK_FF)

A **positive-edge-triggered JK flip-flop** with an active-high asynchronous reset. Its J and K inputs select one of four state operations: hold, reset, set, or toggle.

📘 **[Read the JK flip-flop project README](Workflow/03_JK_FF/README.md)**

---
 
## 🧰 Toolchain

| Tool | How it is used here |
|---|---|
| SystemVerilog | RTL design and HDL testbench for the decoder |
| Verilator | Simulation backend for the Cocotb DFF test |
| Cocotb | Python-based DFF and JK FF functional verification |
| GTKWave | Waveform inspection when tracing is enabled and waveform data is generated |
| Yosys | RTL synthesis in the ORFS flow |
| OpenROAD / OpenROAD Flow Scripts | Floorplanning and subsequent physical-design stages |
| Docker | Provides the reproducible ORFS environment |
| Nangate45 | Educational standard-cell platform used by these runs |

---

## 📁 Repository Structure

```text
RTL-to-GDSII-Projects/
├── README.md
├── LICENSE
└── Workflow/
    ├── 01_Decoder_6to64/
    │   ├── README.md
    │   ├── decoder_6to64.sv
    │   ├── tb_decoder_6to64.sv
    │   ├── decoder_6to64_layout.png
    │   ├── load_decoder.tcl
    │   └── openroad_results/
    │       ├── 6_final.odb
    │       ├── 6_final.def
    │       └── 6_final.gds
    ├── 02_D_ff/
    │   ├── README.md
    │   ├── Dff.sv
    │   ├── tb_Dff.py
    │   ├── run.py
    │   ├── Dff.sdc
    │   ├── Dff_config.mk
    │   ├── Dff_layout.png
    │   └── orfs/
    │       └── results/nangate45/Dff/base/
    │           ├── 6_final.odb
    │           ├── 6_final.def
    │           └── 6_final.gds
    └── 03_JK_FF/
        ├── README.md
        ├── JK_FF.sv
        ├── tb_JK_FF.py
        ├── run.py
        ├── JK_FF.sdc
        ├── JK_FF_config.mk
        ├── JK_FF_layout.png
        ├── JK_FF_netlist.v
        ├── results.xml
        └── orfs/
            └── results/nangate45/JK_FF/base/
                ├── 6_final.odb
                ├── 6_final.def
                └── 6_final.gds
```

Generated files shown above are the artifacts currently retained for these project runs; paths can differ when the flow is rerun with a different configuration.

---

## ⚠️ Results and Limitations

- The decoder's introductory ORFS run produced physical-design artifacts. A prior timing log reported that the clock named `*` was not found; this project should not be described as timing-closed or signoff-complete.
- The DFF ORFS run completed and produced final ODB, DEF, and GDS files. Its SDC uses a 10 ns clock and zero input/output delays as learning assumptions; these are not validated product requirements.
- The DFF floorplan uses explicit die/core dimensions to make the default Nangate45 PDN fit the very small design.
- These flows demonstrate tool usage and artifact generation. They are not a claim of production signoff, manufacturing readiness, or tapeout.

---

## 🎯 Next Steps

- Strengthen JK flip-flop verification with reset re-assertion, repeated toggles, and checks that outputs remain stable between clock edges.
- Add counters, shift registers, and FSM projects as they are completed.
- Improve timing constraints and learn to interpret synthesis, timing, and physical-design reports.
- Keep one README per project so its specification, verification, commands, outputs, and limitations are documented locally.

<div align="center">

**Design carefully · Verify behavior · Debug from evidence · Document honestly**

</div>
