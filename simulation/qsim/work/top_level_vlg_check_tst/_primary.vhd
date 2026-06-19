library verilog;
use verilog.vl_types.all;
entity top_level_vlg_check_tst is
    port(
        hex_centenas    : in     vl_logic_vector(6 downto 0);
        hex_dezenas     : in     vl_logic_vector(6 downto 0);
        hex_unidades    : in     vl_logic_vector(6 downto 0);
        led_devolver    : in     vl_logic;
        led_liberar     : in     vl_logic;
        led_sem_estoque : in     vl_logic;
        led_troco       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end top_level_vlg_check_tst;
