library verilog;
use verilog.vl_types.all;
entity FancyRegister is
    port(
        d0              : in     vl_logic;
        en              : in     vl_logic;
        clk             : in     vl_logic;
        q0              : out    vl_logic
    );
end FancyRegister;
