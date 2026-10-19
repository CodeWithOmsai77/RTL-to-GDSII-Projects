// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vtop__pch.h"

extern const VlVarTableEntry Vtop___024root__VpiVarTable0[];
extern const VlVarTableEntry Vtop___024root__VpiVarTable1[];
extern const VlScopeTableEntry Vtop__Syms__VpiScopeTable[];


// VPI VARIABLE/SCOPE TABLES
#if defined(__GNUC__)
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Winvalid-offsetof"
#endif
extern const VlVarTableEntry Vtop___024root__VpiVarTable0[] = {
    {"Q", offsetof(Vtop___024root, SR_FF__DOT__Q), VLVT_UINT8, (VLVD_NODIR|VLVF_PUB_RW), 0, 0, {0, 0, 0, 0, 0, 0}},
    {"Qn", offsetof(Vtop___024root, SR_FF__DOT__Qn), VLVT_UINT8, (VLVD_NODIR|VLVF_PUB_RW), 0, 0, {0, 0, 0, 0, 0, 0}},
    {"R", offsetof(Vtop___024root, SR_FF__DOT__R), VLVT_UINT8, (VLVD_NODIR|VLVF_PUB_RW|VLVF_CONTINUOUSLY), 0, 0, {0, 0, 0, 0, 0, 0}},
    {"S", offsetof(Vtop___024root, SR_FF__DOT__S), VLVT_UINT8, (VLVD_NODIR|VLVF_PUB_RW|VLVF_CONTINUOUSLY), 0, 0, {0, 0, 0, 0, 0, 0}},
    {"clk", offsetof(Vtop___024root, SR_FF__DOT__clk), VLVT_UINT8, (VLVD_NODIR|VLVF_PUB_RW|VLVF_CONTINUOUSLY), 0, 0, {0, 0, 0, 0, 0, 0}},
    {"rst", offsetof(Vtop___024root, SR_FF__DOT__rst), VLVT_UINT8, (VLVD_NODIR|VLVF_PUB_RW|VLVF_CONTINUOUSLY), 0, 0, {0, 0, 0, 0, 0, 0}},
};
extern const VlVarTableEntry Vtop___024root__VpiVarTable1[] = {
    {"Q", offsetof(Vtop___024root, Q), VLVT_UINT8, (VLVD_OUT|VLVF_PUB_RW|VLVF_CONTINUOUSLY), 0, 0, {0, 0, 0, 0, 0, 0}},
    {"Qn", offsetof(Vtop___024root, Qn), VLVT_UINT8, (VLVD_OUT|VLVF_PUB_RW|VLVF_CONTINUOUSLY), 0, 0, {0, 0, 0, 0, 0, 0}},
    {"R", offsetof(Vtop___024root, R), VLVT_UINT8, (VLVD_IN|VLVF_PUB_RW), 0, 0, {0, 0, 0, 0, 0, 0}},
    {"S", offsetof(Vtop___024root, S), VLVT_UINT8, (VLVD_IN|VLVF_PUB_RW), 0, 0, {0, 0, 0, 0, 0, 0}},
    {"clk", offsetof(Vtop___024root, clk), VLVT_UINT8, (VLVD_IN|VLVF_PUB_RW), 0, 0, {0, 0, 0, 0, 0, 0}},
    {"rst", offsetof(Vtop___024root, rst), VLVT_UINT8, (VLVD_IN|VLVF_PUB_RW), 0, 0, {0, 0, 0, 0, 0, 0}},
};
extern const VlScopeTableEntry Vtop__Syms__VpiScopeTable[] = {
    {offsetof(Vtop__Syms, __Vscopep_SR_FF), "SR_FF", "SR_FF", "SR_FF", -12, VerilatedScope::SCOPE_MODULE},
    {offsetof(Vtop__Syms, __Vscopep_TOP), "TOP", "TOP", "<null>", 0, VerilatedScope::SCOPE_OTHER},
};
#if defined(__GNUC__)
# pragma GCC diagnostic pop
#endif
Vtop__Syms::Vtop__Syms(VerilatedContext* contextp, const char* namep, Vtop* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    , __Vm_didInit{modelp->m_didInit}
    // Setup top module instance
    , TOP{this, namep}
{
    // Check resources
    Verilated::stackCheck(185);
    // Setup sub module instances
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-12);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup scopes
    VerilatedScope::scopesConstructFromTable(Vtop__Syms__VpiScopeTable, 2, this);
    // Set up scope hierarchy
    __Vhier.add(0, __Vscopep_SR_FF);
    // Setup export functions - final: 0
    // Setup export functions - final: 1
    // Setup public variables
    __Vscopep_SR_FF->varsInsertFromTable(Vtop___024root__VpiVarTable0, 6, &(TOP));
    __Vscopep_TOP->varsInsertFromTable(Vtop___024root__VpiVarTable1, 6, &(TOP));
}

Vtop__Syms::~Vtop__Syms() {
    // Tear down scope hierarchy
    __Vhier.remove(0, __Vscopep_SR_FF);
    // Clear keys from hierarchy map after values have been removed
    __Vhier.clear();
    // Tear down scopes
    VL_DO_CLEAR(delete __Vscopep_SR_FF, __Vscopep_SR_FF = nullptr);
    VL_DO_CLEAR(delete __Vscopep_TOP, __Vscopep_TOP = nullptr);
    // Tear down sub module instances
}
