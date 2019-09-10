library verilog;
use verilog.vl_types.all;
entity FancyRegister_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d0              : in     vl_logic;
        en              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FancyRegister_vlg_sample_tst;
