library verilog;
use verilog.vl_types.all;
entity top_level_vlg_sample_tst is
    port(
        btn_confirmar   : in     vl_logic;
        btn_desistir    : in     vl_logic;
        btn_inserir_moeda: in     vl_logic;
        ch_produto      : in     vl_logic_vector(2 downto 0);
        ch_reset        : in     vl_logic;
        ch_valor_moeda  : in     vl_logic_vector(2 downto 0);
        clk_50          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end top_level_vlg_sample_tst;
