create table bmsql_config (
  cfg_name    nvarchar(30) not null primary key,
  cfg_value   nvarchar(50) null
);

create table bmsql_warehouse (
  w_id        int   not null,
  w_ytd       decimal(12,2) null,
  w_tax       decimal(4,4) null,
  w_name      nvarchar(10) null,
  w_street_1  nvarchar(20) null,
  w_street_2  nvarchar(20) null,
  w_city      nvarchar(20) null,
  w_state     nchar(2) null,
  w_zip       nchar(9) null
);

create table bmsql_district (
  d_w_id       int       not null,
  d_id         int       not null,
  d_ytd        decimal(12,2) null,
  d_tax        decimal(4,4) null,
  d_next_o_id  int null,
  d_name       nvarchar(10) null,
  d_street_1   nvarchar(20) null,
  d_street_2   nvarchar(20) null,
  d_city       nvarchar(20) null,
  d_state      nchar(2) null,
  d_zip        nchar(9) null
);

create table bmsql_customer (
  c_w_id         int        not null,
  c_d_id         int        not null,
  c_id           int        not null,
  c_discount     decimal(4,4) null,
  c_credit       nchar(2) null,
  c_last         nvarchar(16) null,
  c_first        nvarchar(16) null,
  c_credit_lim   decimal(12,2) null,
  c_balance      decimal(12,2) null,
  c_ytd_payment  decimal(12,2) null,
  c_payment_cnt  int null,
  c_delivery_cnt int null,
  c_street_1     nvarchar(20) null,
  c_street_2     nvarchar(20) null,
  c_city         nvarchar(20) null,
  c_state        nchar(2) null,
  c_zip          nchar(9) null,
  c_phone        nchar(16) null,
  c_since        datetime null,
  c_middle       nchar(2) null,
  c_data         nvarchar(500) null
);

create table bmsql_history (
  h_c_id   int null,
  h_c_d_id int null,
  h_c_w_id int null,
  h_d_id   int null,
  h_w_id   int null,
  h_date   datetime null,
  h_amount decimal(6,2) null,
  h_data   nvarchar(24) null
);

create table bmsql_new_order (
  no_w_id  int   not null,
  no_d_id  int   not null,
  no_o_id  int   not null
);

create table bmsql_oorder (
  o_w_id       int      not null,
  o_d_id       int      not null,
  o_id         int      not null,
  o_c_id       int null,
  o_carrier_id int null,
  o_ol_cnt     int null,
  o_all_local  int null,
  o_entry_d    datetime null
);

create table bmsql_order_line (
  ol_w_id         int   not null,
  ol_d_id         int   not null,
  ol_o_id         int   not null,
  ol_number       int   not null,
  ol_i_id         int   not null,
  ol_delivery_d   datetime null,
  ol_amount       decimal(6,2) null,
  ol_supply_w_id  int null,
  ol_quantity     int null,
  ol_dist_info    nchar(24) null
);

create table bmsql_item (
  i_id     int      not null,
  i_name   nvarchar(24) null,
  i_price  decimal(5,2) null,
  i_data   nvarchar(50) null,
  i_im_id  int null
);

create table bmsql_stock (
  s_w_id       int       not null,
  s_i_id       int       not null,
  s_quantity   int null,
  s_ytd        int null,
  s_order_cnt  int null,
  s_remote_cnt int null,
  s_data       nvarchar(50) null,
  s_dist_01    nchar(24) null,
  s_dist_02    nchar(24) null,
  s_dist_03    nchar(24) null,
  s_dist_04    nchar(24) null,
  s_dist_05    nchar(24) null,
  s_dist_06    nchar(24) null,
  s_dist_07    nchar(24) null,
  s_dist_08    nchar(24) null,
  s_dist_09    nchar(24) null,
  s_dist_10    nchar(24) null
);


