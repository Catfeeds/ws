CREATE TABLE "LIFE".t_member_terminalid2 (
  "ID" NUMBER(9) NOT NULL,
  user_name VARCHAR2(30 BYTE),
  user_pass VARCHAR2(50 BYTE),
  email VARCHAR2(50 BYTE),
  real_name VARCHAR2(54 BYTE),
  terminal_id VARCHAR2(20 BYTE),
  reg_time VARCHAR2(14 BYTE),
  status CHAR,
  update_time VARCHAR2(14 BYTE),
  vid VARCHAR2(50 BYTE),
  nick_name VARCHAR2(50 BYTE),
  area_code VARCHAR2(6 BYTE),
  sex NUMBER(1),
  birthday VARCHAR2(14 BYTE),
  opened NUMBER(1),
  qq VARCHAR2(20 BYTE),
  remark VARCHAR2(1000 BYTE),
  signature VARCHAR2(1000 BYTE),
  reg_source NUMBER(2),
  user_level VARCHAR2(50 BYTE),
  cart_uuid VARCHAR2(50 BYTE),
  red_member NUMBER(1)
);
ALTER TABLE "LIFE".t_member_terminalid2 ADD SUPPLEMENTAL LOG GROUP ggs_244531 (area_code, birthday, cart_uuid, email, "ID", nick_name, opened, qq, real_name, red_member, reg_source, reg_time, remark, sex, signature, status, terminal_id, update_time, user_level, user_name, user_pass, vid) ALWAYS;