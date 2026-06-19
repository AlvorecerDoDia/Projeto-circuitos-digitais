library verilog;
use verilog.vl_types.all;
entity top_level is
    port(
        clk_50          : in     vl_logic;
        ch_reset        : in     vl_logic;
        btn_confirmar   : in     vl_logic;
        btn_desistir    : in     vl_logic;
        btn_inserir_moeda: in     vl_logic;
        ch_valor_moeda  : in     vl_logic_vector(2 downto 0);
        ch_produto      : in     vl_logic_vector(2 downto 0);
        led_liberar     : out    vl_logic;
        led_troco       : out    vl_logic;
        led_devolver    : out    vl_logic;
        led_sem_estoque : out    vl_logic;
        hex_centenas    : out    vl_logic_vector(6 downto 0);
        hex_dezenas     : out    vl_logic_vector(6 downto 0);
        hex_unidades    : out    vl_logic_vector(6 downto 0)
    );
end top_level;
