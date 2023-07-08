//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Wed Jun 28 21:02:55 2023
//Host        : nicholas-desktop running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target mb_preset_wrapper.bd
//Design      : mb_preset_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_preset_wrapper
   (dip_switches_4bits_tri_i,
    iic_main_scl_io,
    iic_main_sda_io,
    lcd_7bits_tri_o,
    led_4bits_tri_o,
    push_buttons_5bits_tri_i,
    reset,
    rotary_switch_tri_i,
    rs232_uart_rxd,
    rs232_uart_txd,
    spi_flash_io0_io,
    spi_flash_io1_io,
    spi_flash_io2_io,
    spi_flash_io3_io,
    spi_flash_ss_io,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  input [3:0]dip_switches_4bits_tri_i;
  inout iic_main_scl_io;
  inout iic_main_sda_io;
  output [6:0]lcd_7bits_tri_o;
  output [3:0]led_4bits_tri_o;
  input [4:0]push_buttons_5bits_tri_i;
  input reset;
  input [2:0]rotary_switch_tri_i;
  input rs232_uart_rxd;
  output rs232_uart_txd;
  inout spi_flash_io0_io;
  inout spi_flash_io1_io;
  inout spi_flash_io2_io;
  inout spi_flash_io3_io;
  inout spi_flash_ss_io;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire [3:0]dip_switches_4bits_tri_i;
  wire iic_main_scl_i;
  wire iic_main_scl_io;
  wire iic_main_scl_o;
  wire iic_main_scl_t;
  wire iic_main_sda_i;
  wire iic_main_sda_io;
  wire iic_main_sda_o;
  wire iic_main_sda_t;
  wire [6:0]lcd_7bits_tri_o;
  wire [3:0]led_4bits_tri_o;
  wire [4:0]push_buttons_5bits_tri_i;
  wire reset;
  wire [2:0]rotary_switch_tri_i;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;
  wire spi_flash_io0_i;
  wire spi_flash_io0_io;
  wire spi_flash_io0_o;
  wire spi_flash_io0_t;
  wire spi_flash_io1_i;
  wire spi_flash_io1_io;
  wire spi_flash_io1_o;
  wire spi_flash_io1_t;
  wire spi_flash_io2_i;
  wire spi_flash_io2_io;
  wire spi_flash_io2_o;
  wire spi_flash_io2_t;
  wire spi_flash_io3_i;
  wire spi_flash_io3_io;
  wire spi_flash_io3_o;
  wire spi_flash_io3_t;
  wire spi_flash_ss_i;
  wire spi_flash_ss_io;
  wire spi_flash_ss_o;
  wire spi_flash_ss_t;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;

  IOBUF iic_main_scl_iobuf
       (.I(iic_main_scl_o),
        .IO(iic_main_scl_io),
        .O(iic_main_scl_i),
        .T(iic_main_scl_t));
  IOBUF iic_main_sda_iobuf
       (.I(iic_main_sda_o),
        .IO(iic_main_sda_io),
        .O(iic_main_sda_i),
        .T(iic_main_sda_t));
  mb_preset mb_preset_i
       (.dip_switches_4bits_tri_i(dip_switches_4bits_tri_i),
        .iic_main_scl_i(iic_main_scl_i),
        .iic_main_scl_o(iic_main_scl_o),
        .iic_main_scl_t(iic_main_scl_t),
        .iic_main_sda_i(iic_main_sda_i),
        .iic_main_sda_o(iic_main_sda_o),
        .iic_main_sda_t(iic_main_sda_t),
        .lcd_7bits_tri_o(lcd_7bits_tri_o),
        .led_4bits_tri_o(led_4bits_tri_o),
        .push_buttons_5bits_tri_i(push_buttons_5bits_tri_i),
        .reset(reset),
        .rotary_switch_tri_i(rotary_switch_tri_i),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd),
        .spi_flash_io0_i(spi_flash_io0_i),
        .spi_flash_io0_o(spi_flash_io0_o),
        .spi_flash_io0_t(spi_flash_io0_t),
        .spi_flash_io1_i(spi_flash_io1_i),
        .spi_flash_io1_o(spi_flash_io1_o),
        .spi_flash_io1_t(spi_flash_io1_t),
        .spi_flash_io2_i(spi_flash_io2_i),
        .spi_flash_io2_o(spi_flash_io2_o),
        .spi_flash_io2_t(spi_flash_io2_t),
        .spi_flash_io3_i(spi_flash_io3_i),
        .spi_flash_io3_o(spi_flash_io3_o),
        .spi_flash_io3_t(spi_flash_io3_t),
        .spi_flash_ss_i(spi_flash_ss_i),
        .spi_flash_ss_o(spi_flash_ss_o),
        .spi_flash_ss_t(spi_flash_ss_t),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
  IOBUF spi_flash_io0_iobuf
       (.I(spi_flash_io0_o),
        .IO(spi_flash_io0_io),
        .O(spi_flash_io0_i),
        .T(spi_flash_io0_t));
  IOBUF spi_flash_io1_iobuf
       (.I(spi_flash_io1_o),
        .IO(spi_flash_io1_io),
        .O(spi_flash_io1_i),
        .T(spi_flash_io1_t));
  IOBUF spi_flash_io2_iobuf
       (.I(spi_flash_io2_o),
        .IO(spi_flash_io2_io),
        .O(spi_flash_io2_i),
        .T(spi_flash_io2_t));
  IOBUF spi_flash_io3_iobuf
       (.I(spi_flash_io3_o),
        .IO(spi_flash_io3_io),
        .O(spi_flash_io3_i),
        .T(spi_flash_io3_t));
  IOBUF spi_flash_ss_iobuf
       (.I(spi_flash_ss_o),
        .IO(spi_flash_ss_io),
        .O(spi_flash_ss_i),
        .T(spi_flash_ss_t));
endmodule
