// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// SECDED Encoder generated by
// util/design/secded_gen.py -s 1592631616 from util/design/data/secded_cfg.hjson

package prim_secded_pkg;

  function automatic logic [21:0] prim_secded_22_16_enc (logic [15:0] in);
    logic [21:0] out;
    out = 22'(in);
    out[16] = ^(out & 22'h009F41);
    out[17] = ^(out & 22'h007A34);
    out[18] = ^(out & 22'h0029CD);
    out[19] = ^(out & 22'h00C0AF);
    out[20] = ^(out & 22'h0074D2);
    out[21] = ^(out & 22'h00873A);
    return out;
  endfunction

  function automatic prim_secded_22_16_dec (
    input  logic [21:0] in,
    output logic [15:0] d_o,
    output logic [5:0] syndrome_o,
    output logic [1:0]  err_o
  );
    logic single_error;

    // Syndrome calculation
    syndrome_o[0] = ^(in & 22'h019F41);
    syndrome_o[1] = ^(in & 22'h027A34);
    syndrome_o[2] = ^(in & 22'h0429CD);
    syndrome_o[3] = ^(in & 22'h08C0AF);
    syndrome_o[4] = ^(in & 22'h1074D2);
    syndrome_o[5] = ^(in & 22'h20873A);

    // Corrected output calculation
    d_o[0] = (syndrome_o == 6'hd) ^ in[0];
    d_o[1] = (syndrome_o == 6'h38) ^ in[1];
    d_o[2] = (syndrome_o == 6'he) ^ in[2];
    d_o[3] = (syndrome_o == 6'h2c) ^ in[3];
    d_o[4] = (syndrome_o == 6'h32) ^ in[4];
    d_o[5] = (syndrome_o == 6'h2a) ^ in[5];
    d_o[6] = (syndrome_o == 6'h15) ^ in[6];
    d_o[7] = (syndrome_o == 6'h1c) ^ in[7];
    d_o[8] = (syndrome_o == 6'h25) ^ in[8];
    d_o[9] = (syndrome_o == 6'h23) ^ in[9];
    d_o[10] = (syndrome_o == 6'h31) ^ in[10];
    d_o[11] = (syndrome_o == 6'h7) ^ in[11];
    d_o[12] = (syndrome_o == 6'h13) ^ in[12];
    d_o[13] = (syndrome_o == 6'h16) ^ in[13];
    d_o[14] = (syndrome_o == 6'h1a) ^ in[14];
    d_o[15] = (syndrome_o == 6'h29) ^ in[15];

    // err_o calc. bit0: single error, bit1: double error
    single_error = ^syndrome_o;
    err_o[0] = single_error;
    err_o[1] = ~single_error & (|syndrome_o);

  endfunction

  function automatic logic [27:0] prim_secded_28_22_enc (logic [21:0] in);
    logic [27:0] out;
    out = 28'(in);
    out[22] = ^(out & 28'h03003FF);
    out[23] = ^(out & 28'h010FC0F);
    out[24] = ^(out & 28'h0371C71);
    out[25] = ^(out & 28'h03B6592);
    out[26] = ^(out & 28'h03DAAA4);
    out[27] = ^(out & 28'h02ED348);
    return out;
  endfunction

  function automatic prim_secded_28_22_dec (
    input  logic [27:0] in,
    output logic [21:0] d_o,
    output logic [5:0] syndrome_o,
    output logic [1:0]  err_o
  );
    logic single_error;

    // Syndrome calculation
    syndrome_o[0] = ^(in & 28'h07003FF);
    syndrome_o[1] = ^(in & 28'h090FC0F);
    syndrome_o[2] = ^(in & 28'h1371C71);
    syndrome_o[3] = ^(in & 28'h23B6592);
    syndrome_o[4] = ^(in & 28'h43DAAA4);
    syndrome_o[5] = ^(in & 28'h82ED348);

    // Corrected output calculation
    d_o[0] = (syndrome_o == 6'h7) ^ in[0];
    d_o[1] = (syndrome_o == 6'hb) ^ in[1];
    d_o[2] = (syndrome_o == 6'h13) ^ in[2];
    d_o[3] = (syndrome_o == 6'h23) ^ in[3];
    d_o[4] = (syndrome_o == 6'hd) ^ in[4];
    d_o[5] = (syndrome_o == 6'h15) ^ in[5];
    d_o[6] = (syndrome_o == 6'h25) ^ in[6];
    d_o[7] = (syndrome_o == 6'h19) ^ in[7];
    d_o[8] = (syndrome_o == 6'h29) ^ in[8];
    d_o[9] = (syndrome_o == 6'h31) ^ in[9];
    d_o[10] = (syndrome_o == 6'he) ^ in[10];
    d_o[11] = (syndrome_o == 6'h16) ^ in[11];
    d_o[12] = (syndrome_o == 6'h26) ^ in[12];
    d_o[13] = (syndrome_o == 6'h1a) ^ in[13];
    d_o[14] = (syndrome_o == 6'h2a) ^ in[14];
    d_o[15] = (syndrome_o == 6'h32) ^ in[15];
    d_o[16] = (syndrome_o == 6'h1c) ^ in[16];
    d_o[17] = (syndrome_o == 6'h2c) ^ in[17];
    d_o[18] = (syndrome_o == 6'h34) ^ in[18];
    d_o[19] = (syndrome_o == 6'h38) ^ in[19];
    d_o[20] = (syndrome_o == 6'h1f) ^ in[20];
    d_o[21] = (syndrome_o == 6'h3d) ^ in[21];

    // err_o calc. bit0: single error, bit1: double error
    single_error = ^syndrome_o;
    err_o[0] = single_error;
    err_o[1] = ~single_error & (|syndrome_o);

  endfunction

  function automatic logic [38:0] prim_secded_39_32_enc (logic [31:0] in);
    logic [38:0] out;
    out = 39'(in);
    out[32] = ^(out & 39'h00850E56A2);
    out[33] = ^(out & 39'h002E534C61);
    out[34] = ^(out & 39'h000901A9FE);
    out[35] = ^(out & 39'h007079A702);
    out[36] = ^(out & 39'h00CABA900D);
    out[37] = ^(out & 39'h00D3C44B18);
    out[38] = ^(out & 39'h0034A430D5);
    return out;
  endfunction

  function automatic prim_secded_39_32_dec (
    input  logic [38:0] in,
    output logic [31:0] d_o,
    output logic [6:0] syndrome_o,
    output logic [1:0]  err_o
  );
    logic single_error;

    // Syndrome calculation
    syndrome_o[0] = ^(in & 39'h01850E56A2);
    syndrome_o[1] = ^(in & 39'h022E534C61);
    syndrome_o[2] = ^(in & 39'h040901A9FE);
    syndrome_o[3] = ^(in & 39'h087079A702);
    syndrome_o[4] = ^(in & 39'h10CABA900D);
    syndrome_o[5] = ^(in & 39'h20D3C44B18);
    syndrome_o[6] = ^(in & 39'h4034A430D5);

    // Corrected output calculation
    d_o[0] = (syndrome_o == 7'h52) ^ in[0];
    d_o[1] = (syndrome_o == 7'hd) ^ in[1];
    d_o[2] = (syndrome_o == 7'h54) ^ in[2];
    d_o[3] = (syndrome_o == 7'h34) ^ in[3];
    d_o[4] = (syndrome_o == 7'h64) ^ in[4];
    d_o[5] = (syndrome_o == 7'h7) ^ in[5];
    d_o[6] = (syndrome_o == 7'h46) ^ in[6];
    d_o[7] = (syndrome_o == 7'h45) ^ in[7];
    d_o[8] = (syndrome_o == 7'h2c) ^ in[8];
    d_o[9] = (syndrome_o == 7'h29) ^ in[9];
    d_o[10] = (syndrome_o == 7'hb) ^ in[10];
    d_o[11] = (syndrome_o == 7'h26) ^ in[11];
    d_o[12] = (syndrome_o == 7'h51) ^ in[12];
    d_o[13] = (syndrome_o == 7'h4c) ^ in[13];
    d_o[14] = (syndrome_o == 7'h23) ^ in[14];
    d_o[15] = (syndrome_o == 7'h1c) ^ in[15];
    d_o[16] = (syndrome_o == 7'he) ^ in[16];
    d_o[17] = (syndrome_o == 7'h13) ^ in[17];
    d_o[18] = (syndrome_o == 7'h61) ^ in[18];
    d_o[19] = (syndrome_o == 7'h19) ^ in[19];
    d_o[20] = (syndrome_o == 7'h1a) ^ in[20];
    d_o[21] = (syndrome_o == 7'h58) ^ in[21];
    d_o[22] = (syndrome_o == 7'h2a) ^ in[22];
    d_o[23] = (syndrome_o == 7'h70) ^ in[23];
    d_o[24] = (syndrome_o == 7'h25) ^ in[24];
    d_o[25] = (syndrome_o == 7'h32) ^ in[25];
    d_o[26] = (syndrome_o == 7'h43) ^ in[26];
    d_o[27] = (syndrome_o == 7'h16) ^ in[27];
    d_o[28] = (syndrome_o == 7'h68) ^ in[28];
    d_o[29] = (syndrome_o == 7'h4a) ^ in[29];
    d_o[30] = (syndrome_o == 7'h38) ^ in[30];
    d_o[31] = (syndrome_o == 7'h31) ^ in[31];

    // err_o calc. bit0: single error, bit1: double error
    single_error = ^syndrome_o;
    err_o[0] = single_error;
    err_o[1] = ~single_error & (|syndrome_o);

  endfunction

  function automatic logic [63:0] prim_secded_64_57_enc (logic [56:0] in);
    logic [63:0] out;
    out = 64'(in);
    out[57] = ^(out & 64'h0103FFF800007FFF);
    out[58] = ^(out & 64'h017C1FF801FF801F);
    out[59] = ^(out & 64'h01BDE1F87E0781E1);
    out[60] = ^(out & 64'h01DEEE3B8E388E22);
    out[61] = ^(out & 64'h01EF76CDB2C93244);
    out[62] = ^(out & 64'h01F7BB56D5525488);
    out[63] = ^(out & 64'h01FBDDA769A46910);
    return out;
  endfunction

  function automatic prim_secded_64_57_dec (
    input  logic [63:0] in,
    output logic [56:0] d_o,
    output logic [6:0] syndrome_o,
    output logic [1:0]  err_o
  );
    logic single_error;

    // Syndrome calculation
    syndrome_o[0] = ^(in & 64'h0303FFF800007FFF);
    syndrome_o[1] = ^(in & 64'h057C1FF801FF801F);
    syndrome_o[2] = ^(in & 64'h09BDE1F87E0781E1);
    syndrome_o[3] = ^(in & 64'h11DEEE3B8E388E22);
    syndrome_o[4] = ^(in & 64'h21EF76CDB2C93244);
    syndrome_o[5] = ^(in & 64'h41F7BB56D5525488);
    syndrome_o[6] = ^(in & 64'h81FBDDA769A46910);

    // Corrected output calculation
    d_o[0] = (syndrome_o == 7'h7) ^ in[0];
    d_o[1] = (syndrome_o == 7'hb) ^ in[1];
    d_o[2] = (syndrome_o == 7'h13) ^ in[2];
    d_o[3] = (syndrome_o == 7'h23) ^ in[3];
    d_o[4] = (syndrome_o == 7'h43) ^ in[4];
    d_o[5] = (syndrome_o == 7'hd) ^ in[5];
    d_o[6] = (syndrome_o == 7'h15) ^ in[6];
    d_o[7] = (syndrome_o == 7'h25) ^ in[7];
    d_o[8] = (syndrome_o == 7'h45) ^ in[8];
    d_o[9] = (syndrome_o == 7'h19) ^ in[9];
    d_o[10] = (syndrome_o == 7'h29) ^ in[10];
    d_o[11] = (syndrome_o == 7'h49) ^ in[11];
    d_o[12] = (syndrome_o == 7'h31) ^ in[12];
    d_o[13] = (syndrome_o == 7'h51) ^ in[13];
    d_o[14] = (syndrome_o == 7'h61) ^ in[14];
    d_o[15] = (syndrome_o == 7'he) ^ in[15];
    d_o[16] = (syndrome_o == 7'h16) ^ in[16];
    d_o[17] = (syndrome_o == 7'h26) ^ in[17];
    d_o[18] = (syndrome_o == 7'h46) ^ in[18];
    d_o[19] = (syndrome_o == 7'h1a) ^ in[19];
    d_o[20] = (syndrome_o == 7'h2a) ^ in[20];
    d_o[21] = (syndrome_o == 7'h4a) ^ in[21];
    d_o[22] = (syndrome_o == 7'h32) ^ in[22];
    d_o[23] = (syndrome_o == 7'h52) ^ in[23];
    d_o[24] = (syndrome_o == 7'h62) ^ in[24];
    d_o[25] = (syndrome_o == 7'h1c) ^ in[25];
    d_o[26] = (syndrome_o == 7'h2c) ^ in[26];
    d_o[27] = (syndrome_o == 7'h4c) ^ in[27];
    d_o[28] = (syndrome_o == 7'h34) ^ in[28];
    d_o[29] = (syndrome_o == 7'h54) ^ in[29];
    d_o[30] = (syndrome_o == 7'h64) ^ in[30];
    d_o[31] = (syndrome_o == 7'h38) ^ in[31];
    d_o[32] = (syndrome_o == 7'h58) ^ in[32];
    d_o[33] = (syndrome_o == 7'h68) ^ in[33];
    d_o[34] = (syndrome_o == 7'h70) ^ in[34];
    d_o[35] = (syndrome_o == 7'h1f) ^ in[35];
    d_o[36] = (syndrome_o == 7'h2f) ^ in[36];
    d_o[37] = (syndrome_o == 7'h4f) ^ in[37];
    d_o[38] = (syndrome_o == 7'h37) ^ in[38];
    d_o[39] = (syndrome_o == 7'h57) ^ in[39];
    d_o[40] = (syndrome_o == 7'h67) ^ in[40];
    d_o[41] = (syndrome_o == 7'h3b) ^ in[41];
    d_o[42] = (syndrome_o == 7'h5b) ^ in[42];
    d_o[43] = (syndrome_o == 7'h6b) ^ in[43];
    d_o[44] = (syndrome_o == 7'h73) ^ in[44];
    d_o[45] = (syndrome_o == 7'h3d) ^ in[45];
    d_o[46] = (syndrome_o == 7'h5d) ^ in[46];
    d_o[47] = (syndrome_o == 7'h6d) ^ in[47];
    d_o[48] = (syndrome_o == 7'h75) ^ in[48];
    d_o[49] = (syndrome_o == 7'h79) ^ in[49];
    d_o[50] = (syndrome_o == 7'h3e) ^ in[50];
    d_o[51] = (syndrome_o == 7'h5e) ^ in[51];
    d_o[52] = (syndrome_o == 7'h6e) ^ in[52];
    d_o[53] = (syndrome_o == 7'h76) ^ in[53];
    d_o[54] = (syndrome_o == 7'h7a) ^ in[54];
    d_o[55] = (syndrome_o == 7'h7c) ^ in[55];
    d_o[56] = (syndrome_o == 7'h7f) ^ in[56];

    // err_o calc. bit0: single error, bit1: double error
    single_error = ^syndrome_o;
    err_o[0] = single_error;
    err_o[1] = ~single_error & (|syndrome_o);

  endfunction

  function automatic logic [71:0] prim_secded_72_64_enc (logic [63:0] in);
    logic [71:0] out;
    out = 72'(in);
    out[64] = ^(out & 72'h009D000000001FFFFF);
    out[65] = ^(out & 72'h007600000FFFE0003F);
    out[66] = ^(out & 72'h0079003FF003E007C1);
    out[67] = ^(out & 72'h00A70FC0F03C207842);
    out[68] = ^(out & 72'h00D371C711C4438884);
    out[69] = ^(out & 72'h00F8B65926488C9108);
    out[70] = ^(out & 72'h00AEDAAA4A91152210);
    out[71] = ^(out & 72'h004FED348D221A4420);
    return out;
  endfunction

  function automatic prim_secded_72_64_dec (
    input  logic [71:0] in,
    output logic [63:0] d_o,
    output logic [7:0] syndrome_o,
    output logic [1:0]  err_o
  );
    logic single_error;

    // Syndrome calculation
    syndrome_o[0] = ^(in & 72'h019D000000001FFFFF);
    syndrome_o[1] = ^(in & 72'h027600000FFFE0003F);
    syndrome_o[2] = ^(in & 72'h0479003FF003E007C1);
    syndrome_o[3] = ^(in & 72'h08A70FC0F03C207842);
    syndrome_o[4] = ^(in & 72'h10D371C711C4438884);
    syndrome_o[5] = ^(in & 72'h20F8B65926488C9108);
    syndrome_o[6] = ^(in & 72'h40AEDAAA4A91152210);
    syndrome_o[7] = ^(in & 72'h804FED348D221A4420);

    // Corrected output calculation
    d_o[0] = (syndrome_o == 8'h7) ^ in[0];
    d_o[1] = (syndrome_o == 8'hb) ^ in[1];
    d_o[2] = (syndrome_o == 8'h13) ^ in[2];
    d_o[3] = (syndrome_o == 8'h23) ^ in[3];
    d_o[4] = (syndrome_o == 8'h43) ^ in[4];
    d_o[5] = (syndrome_o == 8'h83) ^ in[5];
    d_o[6] = (syndrome_o == 8'hd) ^ in[6];
    d_o[7] = (syndrome_o == 8'h15) ^ in[7];
    d_o[8] = (syndrome_o == 8'h25) ^ in[8];
    d_o[9] = (syndrome_o == 8'h45) ^ in[9];
    d_o[10] = (syndrome_o == 8'h85) ^ in[10];
    d_o[11] = (syndrome_o == 8'h19) ^ in[11];
    d_o[12] = (syndrome_o == 8'h29) ^ in[12];
    d_o[13] = (syndrome_o == 8'h49) ^ in[13];
    d_o[14] = (syndrome_o == 8'h89) ^ in[14];
    d_o[15] = (syndrome_o == 8'h31) ^ in[15];
    d_o[16] = (syndrome_o == 8'h51) ^ in[16];
    d_o[17] = (syndrome_o == 8'h91) ^ in[17];
    d_o[18] = (syndrome_o == 8'h61) ^ in[18];
    d_o[19] = (syndrome_o == 8'ha1) ^ in[19];
    d_o[20] = (syndrome_o == 8'hc1) ^ in[20];
    d_o[21] = (syndrome_o == 8'he) ^ in[21];
    d_o[22] = (syndrome_o == 8'h16) ^ in[22];
    d_o[23] = (syndrome_o == 8'h26) ^ in[23];
    d_o[24] = (syndrome_o == 8'h46) ^ in[24];
    d_o[25] = (syndrome_o == 8'h86) ^ in[25];
    d_o[26] = (syndrome_o == 8'h1a) ^ in[26];
    d_o[27] = (syndrome_o == 8'h2a) ^ in[27];
    d_o[28] = (syndrome_o == 8'h4a) ^ in[28];
    d_o[29] = (syndrome_o == 8'h8a) ^ in[29];
    d_o[30] = (syndrome_o == 8'h32) ^ in[30];
    d_o[31] = (syndrome_o == 8'h52) ^ in[31];
    d_o[32] = (syndrome_o == 8'h92) ^ in[32];
    d_o[33] = (syndrome_o == 8'h62) ^ in[33];
    d_o[34] = (syndrome_o == 8'ha2) ^ in[34];
    d_o[35] = (syndrome_o == 8'hc2) ^ in[35];
    d_o[36] = (syndrome_o == 8'h1c) ^ in[36];
    d_o[37] = (syndrome_o == 8'h2c) ^ in[37];
    d_o[38] = (syndrome_o == 8'h4c) ^ in[38];
    d_o[39] = (syndrome_o == 8'h8c) ^ in[39];
    d_o[40] = (syndrome_o == 8'h34) ^ in[40];
    d_o[41] = (syndrome_o == 8'h54) ^ in[41];
    d_o[42] = (syndrome_o == 8'h94) ^ in[42];
    d_o[43] = (syndrome_o == 8'h64) ^ in[43];
    d_o[44] = (syndrome_o == 8'ha4) ^ in[44];
    d_o[45] = (syndrome_o == 8'hc4) ^ in[45];
    d_o[46] = (syndrome_o == 8'h38) ^ in[46];
    d_o[47] = (syndrome_o == 8'h58) ^ in[47];
    d_o[48] = (syndrome_o == 8'h98) ^ in[48];
    d_o[49] = (syndrome_o == 8'h68) ^ in[49];
    d_o[50] = (syndrome_o == 8'ha8) ^ in[50];
    d_o[51] = (syndrome_o == 8'hc8) ^ in[51];
    d_o[52] = (syndrome_o == 8'h70) ^ in[52];
    d_o[53] = (syndrome_o == 8'hb0) ^ in[53];
    d_o[54] = (syndrome_o == 8'hd0) ^ in[54];
    d_o[55] = (syndrome_o == 8'he0) ^ in[55];
    d_o[56] = (syndrome_o == 8'h9d) ^ in[56];
    d_o[57] = (syndrome_o == 8'hda) ^ in[57];
    d_o[58] = (syndrome_o == 8'hcb) ^ in[58];
    d_o[59] = (syndrome_o == 8'he5) ^ in[59];
    d_o[60] = (syndrome_o == 8'h37) ^ in[60];
    d_o[61] = (syndrome_o == 8'h6e) ^ in[61];
    d_o[62] = (syndrome_o == 8'hb6) ^ in[62];
    d_o[63] = (syndrome_o == 8'h79) ^ in[63];

    // err_o calc. bit0: single error, bit1: double error
    single_error = ^syndrome_o;
    err_o[0] = single_error;
    err_o[1] = ~single_error & (|syndrome_o);

  endfunction

  function automatic logic [21:0] prim_secded_hamming_22_16_enc (logic [15:0] in);
    logic [21:0] out;
    out = 22'(in);
    out[16] = ^(out & 22'h00AD5B);
    out[17] = ^(out & 22'h00366D);
    out[18] = ^(out & 22'h00C78E);
    out[19] = ^(out & 22'h0007F0);
    out[20] = ^(out & 22'h00F800);
    out[21] = ^(out & 22'h1FFFFF);
    return out;
  endfunction

  function automatic prim_secded_hamming_22_16_dec (
    input  logic [21:0] in,
    output logic [15:0] d_o,
    output logic [5:0] syndrome_o,
    output logic [1:0]  err_o
  );

    // Syndrome calculation
    syndrome_o[0] = ^(in & 22'h01AD5B);
    syndrome_o[1] = ^(in & 22'h02366D);
    syndrome_o[2] = ^(in & 22'h04C78E);
    syndrome_o[3] = ^(in & 22'h0807F0);
    syndrome_o[4] = ^(in & 22'h10F800);
    syndrome_o[5] = ^(in & 22'h3FFFFF);

    // Corrected output calculation
    d_o[0] = (syndrome_o == 6'h23) ^ in[0];
    d_o[1] = (syndrome_o == 6'h25) ^ in[1];
    d_o[2] = (syndrome_o == 6'h26) ^ in[2];
    d_o[3] = (syndrome_o == 6'h27) ^ in[3];
    d_o[4] = (syndrome_o == 6'h29) ^ in[4];
    d_o[5] = (syndrome_o == 6'h2a) ^ in[5];
    d_o[6] = (syndrome_o == 6'h2b) ^ in[6];
    d_o[7] = (syndrome_o == 6'h2c) ^ in[7];
    d_o[8] = (syndrome_o == 6'h2d) ^ in[8];
    d_o[9] = (syndrome_o == 6'h2e) ^ in[9];
    d_o[10] = (syndrome_o == 6'h2f) ^ in[10];
    d_o[11] = (syndrome_o == 6'h31) ^ in[11];
    d_o[12] = (syndrome_o == 6'h32) ^ in[12];
    d_o[13] = (syndrome_o == 6'h33) ^ in[13];
    d_o[14] = (syndrome_o == 6'h34) ^ in[14];
    d_o[15] = (syndrome_o == 6'h35) ^ in[15];

    // err_o calc. bit0: single error, bit1: double error
    err_o[0] = syndrome_o[5];
    err_o[1] = |syndrome_o[4:0] & ~syndrome_o[5];

  endfunction

  function automatic logic [38:0] prim_secded_hamming_39_32_enc (logic [31:0] in);
    logic [38:0] out;
    out = 39'(in);
    out[32] = ^(out & 39'h0056AAAD5B);
    out[33] = ^(out & 39'h009B33366D);
    out[34] = ^(out & 39'h00E3C3C78E);
    out[35] = ^(out & 39'h0003FC07F0);
    out[36] = ^(out & 39'h0003FFF800);
    out[37] = ^(out & 39'h00FC000000);
    out[38] = ^(out & 39'h3FFFFFFFFF);
    return out;
  endfunction

  function automatic prim_secded_hamming_39_32_dec (
    input  logic [38:0] in,
    output logic [31:0] d_o,
    output logic [6:0] syndrome_o,
    output logic [1:0]  err_o
  );

    // Syndrome calculation
    syndrome_o[0] = ^(in & 39'h0156AAAD5B);
    syndrome_o[1] = ^(in & 39'h029B33366D);
    syndrome_o[2] = ^(in & 39'h04E3C3C78E);
    syndrome_o[3] = ^(in & 39'h0803FC07F0);
    syndrome_o[4] = ^(in & 39'h1003FFF800);
    syndrome_o[5] = ^(in & 39'h20FC000000);
    syndrome_o[6] = ^(in & 39'h7FFFFFFFFF);

    // Corrected output calculation
    d_o[0] = (syndrome_o == 7'h43) ^ in[0];
    d_o[1] = (syndrome_o == 7'h45) ^ in[1];
    d_o[2] = (syndrome_o == 7'h46) ^ in[2];
    d_o[3] = (syndrome_o == 7'h47) ^ in[3];
    d_o[4] = (syndrome_o == 7'h49) ^ in[4];
    d_o[5] = (syndrome_o == 7'h4a) ^ in[5];
    d_o[6] = (syndrome_o == 7'h4b) ^ in[6];
    d_o[7] = (syndrome_o == 7'h4c) ^ in[7];
    d_o[8] = (syndrome_o == 7'h4d) ^ in[8];
    d_o[9] = (syndrome_o == 7'h4e) ^ in[9];
    d_o[10] = (syndrome_o == 7'h4f) ^ in[10];
    d_o[11] = (syndrome_o == 7'h51) ^ in[11];
    d_o[12] = (syndrome_o == 7'h52) ^ in[12];
    d_o[13] = (syndrome_o == 7'h53) ^ in[13];
    d_o[14] = (syndrome_o == 7'h54) ^ in[14];
    d_o[15] = (syndrome_o == 7'h55) ^ in[15];
    d_o[16] = (syndrome_o == 7'h56) ^ in[16];
    d_o[17] = (syndrome_o == 7'h57) ^ in[17];
    d_o[18] = (syndrome_o == 7'h58) ^ in[18];
    d_o[19] = (syndrome_o == 7'h59) ^ in[19];
    d_o[20] = (syndrome_o == 7'h5a) ^ in[20];
    d_o[21] = (syndrome_o == 7'h5b) ^ in[21];
    d_o[22] = (syndrome_o == 7'h5c) ^ in[22];
    d_o[23] = (syndrome_o == 7'h5d) ^ in[23];
    d_o[24] = (syndrome_o == 7'h5e) ^ in[24];
    d_o[25] = (syndrome_o == 7'h5f) ^ in[25];
    d_o[26] = (syndrome_o == 7'h61) ^ in[26];
    d_o[27] = (syndrome_o == 7'h62) ^ in[27];
    d_o[28] = (syndrome_o == 7'h63) ^ in[28];
    d_o[29] = (syndrome_o == 7'h64) ^ in[29];
    d_o[30] = (syndrome_o == 7'h65) ^ in[30];
    d_o[31] = (syndrome_o == 7'h66) ^ in[31];

    // err_o calc. bit0: single error, bit1: double error
    err_o[0] = syndrome_o[6];
    err_o[1] = |syndrome_o[5:0] & ~syndrome_o[6];

  endfunction

  function automatic logic [71:0] prim_secded_hamming_72_64_enc (logic [63:0] in);
    logic [71:0] out;
    out = 72'(in);
    out[64] = ^(out & 72'h00AB55555556AAAD5B);
    out[65] = ^(out & 72'h00CD9999999B33366D);
    out[66] = ^(out & 72'h00F1E1E1E1E3C3C78E);
    out[67] = ^(out & 72'h0001FE01FE03FC07F0);
    out[68] = ^(out & 72'h0001FFFE0003FFF800);
    out[69] = ^(out & 72'h0001FFFFFFFC000000);
    out[70] = ^(out & 72'h00FE00000000000000);
    out[71] = ^(out & 72'h7FFFFFFFFFFFFFFFFF);
    return out;
  endfunction

  function automatic prim_secded_hamming_72_64_dec (
    input  logic [71:0] in,
    output logic [63:0] d_o,
    output logic [7:0] syndrome_o,
    output logic [1:0]  err_o
  );

    // Syndrome calculation
    syndrome_o[0] = ^(in & 72'h01AB55555556AAAD5B);
    syndrome_o[1] = ^(in & 72'h02CD9999999B33366D);
    syndrome_o[2] = ^(in & 72'h04F1E1E1E1E3C3C78E);
    syndrome_o[3] = ^(in & 72'h0801FE01FE03FC07F0);
    syndrome_o[4] = ^(in & 72'h1001FFFE0003FFF800);
    syndrome_o[5] = ^(in & 72'h2001FFFFFFFC000000);
    syndrome_o[6] = ^(in & 72'h40FE00000000000000);
    syndrome_o[7] = ^(in & 72'hFFFFFFFFFFFFFFFFFF);

    // Corrected output calculation
    d_o[0] = (syndrome_o == 8'h83) ^ in[0];
    d_o[1] = (syndrome_o == 8'h85) ^ in[1];
    d_o[2] = (syndrome_o == 8'h86) ^ in[2];
    d_o[3] = (syndrome_o == 8'h87) ^ in[3];
    d_o[4] = (syndrome_o == 8'h89) ^ in[4];
    d_o[5] = (syndrome_o == 8'h8a) ^ in[5];
    d_o[6] = (syndrome_o == 8'h8b) ^ in[6];
    d_o[7] = (syndrome_o == 8'h8c) ^ in[7];
    d_o[8] = (syndrome_o == 8'h8d) ^ in[8];
    d_o[9] = (syndrome_o == 8'h8e) ^ in[9];
    d_o[10] = (syndrome_o == 8'h8f) ^ in[10];
    d_o[11] = (syndrome_o == 8'h91) ^ in[11];
    d_o[12] = (syndrome_o == 8'h92) ^ in[12];
    d_o[13] = (syndrome_o == 8'h93) ^ in[13];
    d_o[14] = (syndrome_o == 8'h94) ^ in[14];
    d_o[15] = (syndrome_o == 8'h95) ^ in[15];
    d_o[16] = (syndrome_o == 8'h96) ^ in[16];
    d_o[17] = (syndrome_o == 8'h97) ^ in[17];
    d_o[18] = (syndrome_o == 8'h98) ^ in[18];
    d_o[19] = (syndrome_o == 8'h99) ^ in[19];
    d_o[20] = (syndrome_o == 8'h9a) ^ in[20];
    d_o[21] = (syndrome_o == 8'h9b) ^ in[21];
    d_o[22] = (syndrome_o == 8'h9c) ^ in[22];
    d_o[23] = (syndrome_o == 8'h9d) ^ in[23];
    d_o[24] = (syndrome_o == 8'h9e) ^ in[24];
    d_o[25] = (syndrome_o == 8'h9f) ^ in[25];
    d_o[26] = (syndrome_o == 8'ha1) ^ in[26];
    d_o[27] = (syndrome_o == 8'ha2) ^ in[27];
    d_o[28] = (syndrome_o == 8'ha3) ^ in[28];
    d_o[29] = (syndrome_o == 8'ha4) ^ in[29];
    d_o[30] = (syndrome_o == 8'ha5) ^ in[30];
    d_o[31] = (syndrome_o == 8'ha6) ^ in[31];
    d_o[32] = (syndrome_o == 8'ha7) ^ in[32];
    d_o[33] = (syndrome_o == 8'ha8) ^ in[33];
    d_o[34] = (syndrome_o == 8'ha9) ^ in[34];
    d_o[35] = (syndrome_o == 8'haa) ^ in[35];
    d_o[36] = (syndrome_o == 8'hab) ^ in[36];
    d_o[37] = (syndrome_o == 8'hac) ^ in[37];
    d_o[38] = (syndrome_o == 8'had) ^ in[38];
    d_o[39] = (syndrome_o == 8'hae) ^ in[39];
    d_o[40] = (syndrome_o == 8'haf) ^ in[40];
    d_o[41] = (syndrome_o == 8'hb0) ^ in[41];
    d_o[42] = (syndrome_o == 8'hb1) ^ in[42];
    d_o[43] = (syndrome_o == 8'hb2) ^ in[43];
    d_o[44] = (syndrome_o == 8'hb3) ^ in[44];
    d_o[45] = (syndrome_o == 8'hb4) ^ in[45];
    d_o[46] = (syndrome_o == 8'hb5) ^ in[46];
    d_o[47] = (syndrome_o == 8'hb6) ^ in[47];
    d_o[48] = (syndrome_o == 8'hb7) ^ in[48];
    d_o[49] = (syndrome_o == 8'hb8) ^ in[49];
    d_o[50] = (syndrome_o == 8'hb9) ^ in[50];
    d_o[51] = (syndrome_o == 8'hba) ^ in[51];
    d_o[52] = (syndrome_o == 8'hbb) ^ in[52];
    d_o[53] = (syndrome_o == 8'hbc) ^ in[53];
    d_o[54] = (syndrome_o == 8'hbd) ^ in[54];
    d_o[55] = (syndrome_o == 8'hbe) ^ in[55];
    d_o[56] = (syndrome_o == 8'hbf) ^ in[56];
    d_o[57] = (syndrome_o == 8'hc1) ^ in[57];
    d_o[58] = (syndrome_o == 8'hc2) ^ in[58];
    d_o[59] = (syndrome_o == 8'hc3) ^ in[59];
    d_o[60] = (syndrome_o == 8'hc4) ^ in[60];
    d_o[61] = (syndrome_o == 8'hc5) ^ in[61];
    d_o[62] = (syndrome_o == 8'hc6) ^ in[62];
    d_o[63] = (syndrome_o == 8'hc7) ^ in[63];

    // err_o calc. bit0: single error, bit1: double error
    err_o[0] = syndrome_o[7];
    err_o[1] = |syndrome_o[6:0] & ~syndrome_o[7];

  endfunction


endpackage
