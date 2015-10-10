-----------------------------------------------
-- Export file for user LIFE                 --
-- Created by Scorpio on 2013/9/16, 16:25:40 --
-----------------------------------------------

set define off
spool life.log

prompt
prompt Creating table COM_AUDIT_TRAIL
prompt ==============================
prompt
create table COM_AUDIT_TRAIL
(
  aud_user      VARCHAR2(100) not null,
  aud_client_ip VARCHAR2(15) not null,
  aud_server_ip VARCHAR2(15) not null,
  aud_resource  VARCHAR2(100) not null,
  aud_action    VARCHAR2(100) not null,
  applic_cd     VARCHAR2(5) not null,
  aud_date      TIMESTAMP(6) not null
)
;
comment on table COM_AUDIT_TRAIL
  is '��¼��Ʊ�';
comment on column COM_AUDIT_TRAIL.aud_user
  is '�û�';
comment on column COM_AUDIT_TRAIL.aud_client_ip
  is '�ͻ���IP';
comment on column COM_AUDIT_TRAIL.aud_server_ip
  is '�����IP';
comment on column COM_AUDIT_TRAIL.aud_resource
  is '���';
comment on column COM_AUDIT_TRAIL.aud_action
  is '����';
comment on column COM_AUDIT_TRAIL.applic_cd
  is 'Ӧ�ñ�ʶ';
comment on column COM_AUDIT_TRAIL.aud_date
  is 'ʱ��';
create index COM_AUDIT_TRAIL_ACTION_DATE_I on COM_AUDIT_TRAIL (AUD_ACTION, AUD_DATE);
create index COM_AUDIT_TRAIL_CLIENT_DATE_I on COM_AUDIT_TRAIL (AUD_CLIENT_IP, AUD_DATE);
create index COM_AUDIT_TRAIL_DATE_I on COM_AUDIT_TRAIL (AUD_DATE);
create index COM_AUDIT_TRAIL_USER_DATE_I on COM_AUDIT_TRAIL (AUD_USER, AUD_DATE);
alter table COM_AUDIT_TRAIL
  add constraint COM_AUDIT_TRAIL_PK primary key (AUD_USER, AUD_CLIENT_IP, AUD_SERVER_IP, AUD_RESOURCE, AUD_ACTION, APPLIC_CD, AUD_DATE);

prompt
prompt Creating table JINWEIDU
prompt =======================
prompt
create table JINWEIDU
(
  city  VARCHAR2(50),
  jindu NUMBER(11,8),
  weidu NUMBER(11,8)
)
;

prompt
prompt Creating table MULTI_FEE_TMP
prompt ============================
prompt
create table MULTI_FEE_TMP
(
  store_id NUMBER,
  item_id  NUMBER,
  fee      NUMBER(9,2),
  fee_id   NUMBER
)
;

prompt
prompt Creating table NEW_FEE_RATE2
prompt ============================
prompt
create table NEW_FEE_RATE2
(
  id         VARCHAR2(50),
  store_name VARCHAR2(200),
  category   VARCHAR2(200),
  fee        VARCHAR2(10),
  describe   VARCHAR2(80),
  type       NUMBER,
  lad        NUMBER,
  starttime  VARCHAR2(8),
  endtime    VARCHAR2(8),
  fee_id     NUMBER
)
;

prompt
prompt Creating table SELL_FEE_TMP
prompt ===========================
prompt
create table SELL_FEE_TMP
(
  merc_id         NUMBER,
  cap_typ         NUMBER,
  trd_mod         NUMBER,
  fee_typ         VARCHAR2(5),
  prod_typ        VARCHAR2(20),
  clr_typ         VARCHAR2(5),
  sts             NUMBER,
  eff_dt          VARCHAR2(10),
  exp_dt          VARCHAR2(10),
  fee_drt_flg     VARCHAR2(5),
  fee_prd_unit    VARCHAR2(5),
  fee_prd_num     VARCHAR2(5),
  next_fee_dt     VARCHAR2(10),
  fee_mod         VARCHAR2(5),
  fee_mtd         VARCHAR2(5),
  beg_amt         VARCHAR2(5),
  min_fee_amt     VARCHAR2(5),
  max_fee_amt     VARCHAR2(20),
  fee_bas_flg     VARCHAR2(5),
  fee_lvl_flg     VARCHAR2(5),
  fee_lvl_bas_flg VARCHAR2(5),
  up_ref1         NUMBER,
  fix_fee_amt1    VARCHAR2(20),
  fee_rate1       NUMBER,
  up_ref2         NUMBER,
  fix_fee_amt2    VARCHAR2(20),
  fee_rate2       NUMBER,
  up_ref3         NUMBER,
  fix_fee_amt3    VARCHAR2(20),
  fee_rate3       NUMBER,
  up_ref4         NUMBER,
  fix_fee_amt4    VARCHAR2(20),
  fee_rate4       NUMBER,
  up_ref5         NUMBER,
  fix_fee_amt5    VARCHAR2(20),
  fee_rate5       NUMBER,
  bus_cre_opr     VARCHAR2(20),
  ui_cre_opr      VARCHAR2(10),
  cre_dt          VARCHAR2(10),
  cre_tm          VARCHAR2(10),
  bus_upd_opr     VARCHAR2(20),
  ui_upd_opr      VARCHAR2(20),
  upd_dt          VARCHAR2(10),
  upd_tm          VARCHAR2(10),
  tm_smp          VARCHAR2(20),
  fee_chk_oppr    VARCHAR2(15),
  return_desc     VARCHAR2(20)
)
;

prompt
prompt Creating table SMS_MT_WAIT
prompt ==========================
prompt
create table SMS_MT_WAIT
(
  sequence_id       NUMBER(9) not null,
  act_code          VARCHAR2(20) not null,
  sp_code           VARCHAR2(60) not null,
  fee_terminal_id   VARCHAR2(64) not null,
  dest_terminal_id  VARCHAR2(64),
  register_delivery VARCHAR2(100),
  msg_content       VARCHAR2(2000),
  request_time      VARCHAR2(14),
  service_id        VARCHAR2(14) not null,
  fee_type          NUMBER(3),
  fee_code          NUMBER(3),
  msg_level         NUMBER(9),
  valid_time        NUMBER(9) default 0 not null,
  operator_code     VARCHAR2(20),
  area_code         VARCHAR2(20),
  pid               VARCHAR2(20),
  userid            VARCHAR2(20),
  linkid            VARCHAR2(20),
  msg_format        VARCHAR2(2)
)
;
alter table SMS_MT_WAIT
  add primary key (SEQUENCE_ID);

prompt
prompt Creating table STORE_FEE_TEMP1
prompt ==============================
prompt
create table STORE_FEE_TEMP1
(
  merc_id  VARCHAR2(40),
  prod_typ VARCHAR2(20),
  cn       NUMBER
)
;

prompt
prompt Creating table STORE_FEE_TEMP2
prompt ==============================
prompt
create table STORE_FEE_TEMP2
(
  merc_id  VARCHAR2(40),
  prod_typ VARCHAR2(20)
)
;

prompt
prompt Creating table SYS_EXPORT_SCHEMA_01
prompt ===================================
prompt
create table SYS_EXPORT_SCHEMA_01
(
  process_order          NUMBER,
  duplicate              NUMBER,
  dump_fileid            NUMBER,
  dump_position          NUMBER,
  dump_length            NUMBER,
  dump_orig_length       NUMBER,
  dump_allocation        NUMBER,
  completed_rows         NUMBER,
  error_count            NUMBER,
  elapsed_time           NUMBER,
  object_type_path       VARCHAR2(200),
  object_path_seqno      NUMBER,
  object_type            VARCHAR2(30),
  in_progress            CHAR(1),
  object_name            VARCHAR2(500),
  object_long_name       VARCHAR2(4000),
  object_schema          VARCHAR2(30),
  original_object_schema VARCHAR2(30),
  original_object_name   VARCHAR2(4000),
  partition_name         VARCHAR2(30),
  subpartition_name      VARCHAR2(30),
  dataobj_num            NUMBER,
  flags                  NUMBER,
  property               NUMBER,
  trigflag               NUMBER,
  creation_level         NUMBER,
  completion_time        DATE,
  object_tablespace      VARCHAR2(30),
  size_estimate          NUMBER,
  object_row             NUMBER,
  processing_state       CHAR(1),
  processing_status      CHAR(1),
  base_process_order     NUMBER,
  base_object_type       VARCHAR2(30),
  base_object_name       VARCHAR2(30),
  base_object_schema     VARCHAR2(30),
  ancestor_process_order NUMBER,
  domain_process_order   NUMBER,
  parallelization        NUMBER,
  unload_method          NUMBER,
  load_method            NUMBER,
  granules               NUMBER,
  scn                    NUMBER,
  grantor                VARCHAR2(30),
  xml_clob               CLOB,
  parent_process_order   NUMBER,
  name                   VARCHAR2(30),
  value_t                VARCHAR2(4000),
  value_n                NUMBER,
  is_default             NUMBER,
  file_type              NUMBER,
  user_directory         VARCHAR2(4000),
  user_file_name         VARCHAR2(4000),
  file_name              VARCHAR2(4000),
  extend_size            NUMBER,
  file_max_size          NUMBER,
  process_name           VARCHAR2(30),
  last_update            DATE,
  work_item              VARCHAR2(30),
  object_number          NUMBER,
  completed_bytes        NUMBER,
  total_bytes            NUMBER,
  metadata_io            NUMBER,
  data_io                NUMBER,
  cumulative_time        NUMBER,
  packet_number          NUMBER,
  instance_id            NUMBER,
  old_value              VARCHAR2(4000),
  seed                   NUMBER,
  last_file              NUMBER,
  user_name              VARCHAR2(30),
  operation              VARCHAR2(30),
  job_mode               VARCHAR2(30),
  queue_tabnum           NUMBER,
  control_queue          VARCHAR2(30),
  status_queue           VARCHAR2(30),
  remote_link            VARCHAR2(4000),
  version                NUMBER,
  job_version            VARCHAR2(30),
  db_version             VARCHAR2(30),
  timezone               VARCHAR2(64),
  state                  VARCHAR2(30),
  phase                  NUMBER,
  guid                   RAW(16),
  start_time             DATE,
  block_size             NUMBER,
  metadata_buffer_size   NUMBER,
  data_buffer_size       NUMBER,
  degree                 NUMBER,
  platform               VARCHAR2(101),
  abort_step             NUMBER,
  instance               VARCHAR2(60),
  cluster_ok             NUMBER,
  service_name           VARCHAR2(100),
  object_int_oid         VARCHAR2(32)
)
;
comment on table SYS_EXPORT_SCHEMA_01
  is 'Data Pump Master Table EXPORT                         SCHEMA                        ';
create index SYS_MTABLE_00003D7DE_IND_1 on SYS_EXPORT_SCHEMA_01 (OBJECT_SCHEMA, OBJECT_NAME, OBJECT_TYPE);
create index SYS_MTABLE_00003D7DE_IND_2 on SYS_EXPORT_SCHEMA_01 (BASE_PROCESS_ORDER);
alter table SYS_EXPORT_SCHEMA_01
  add unique (PROCESS_ORDER, DUPLICATE);

prompt
prompt Creating table SZMALL_ORDER_HISTORY
prompt ===================================
prompt
create table SZMALL_ORDER_HISTORY
(
  order_id    VARCHAR2(64),
  user_id     NUMBER(8),
  order_time  VARCHAR2(14),
  store_name  VARCHAR2(254),
  goods_name  VARCHAR2(254),
  totalcost   NUMBER(13,2),
  productcost NUMBER(13,2),
  status      VARCHAR2(2)
);
-- Add comments to the columns 
comment on column SZMALL_ORDER_HISTORY.order_id
  is '����ID';
comment on column SZMALL_ORDER_HISTORY.user_id
  is '�û�ID';
comment on column SZMALL_ORDER_HISTORY.order_time
  is '�µ�ʱ��';
comment on column SZMALL_ORDER_HISTORY.store_name
  is '�̻���';
comment on column SZMALL_ORDER_HISTORY.goods_name
  is '��Ʒ��';
comment on column SZMALL_ORDER_HISTORY.totalcost
  is '�����ܽ��';
comment on column SZMALL_ORDER_HISTORY.productcost
  is '��Ʒ���';
comment on column SZMALL_ORDER_HISTORY.status
  is '����״̬ 01����������02���տ�δ������03ȱ��������04��Ч������05Ӧ�˿����06�ѷ�����07�ѵ���������08���˿��';
-- Create/Recreate indexes 
create index IDX_SZMALL_ORDER_HISTORY on SZMALL_ORDER_HISTORY (ORDER_TIME)

prompt
prompt Creating table TEST01
prompt =====================
prompt
create table TEST01
(
  a01 VARCHAR2(100),
  a02 VARCHAR2(100),
  a03 VARCHAR2(100),
  a04 VARCHAR2(100),
  a05 VARCHAR2(100),
  a06 VARCHAR2(100),
  a07 VARCHAR2(100),
  a08 VARCHAR2(100),
  a09 VARCHAR2(100),
  a10 VARCHAR2(100),
  a11 VARCHAR2(100)
)
;

prompt
prompt Creating table TEST02
prompt =====================
prompt
create table TEST02
(
  a02 VARCHAR2(100),
  a05 VARCHAR2(100)
)
;

prompt
prompt Creating table TEST111
prompt ======================
prompt
create table TEST111
(
  sp_code        VARCHAR2(21) not null,
  command        VARCHAR2(20),
  target_sp_code VARCHAR2(21),
  target_command VARCHAR2(20)
)
;

prompt
prompt Creating table TMP_ITEM_PRICE_VIP
prompt =================================
prompt
create table TMP_ITEM_PRICE_VIP
(
  sale_id  NUMBER,
  vippirce NUMBER
)
;

prompt
prompt Creating table TMP_PRODUCT_CHECK
prompt ================================
prompt
create table TMP_PRODUCT_CHECK
(
  id NUMBER
)
;

prompt
prompt Creating table TMP_SYS_FEE
prompt ==========================
prompt
create table TMP_SYS_FEE
(
  id       NUMBER not null,
  store_id NUMBER
)
;
alter table TMP_SYS_FEE
  add constraint PK_TMP_FEE primary key (ID);

prompt
prompt Creating table T_ACT_ORDER
prompt ==========================
prompt
create table T_ACT_ORDER
(
  id                 NUMBER(19) not null,
  act_type           NUMBER(10),
  close_description  VARCHAR2(255 CHAR),
  close_status       NUMBER(10),
  close_time         VARCHAR2(255 CHAR),
  create_time        VARCHAR2(255 CHAR),
  expire_time        NUMBER(10),
  pay_description    VARCHAR2(255 CHAR),
  pay_status         NUMBER(10),
  pay_time           VARCHAR2(255 CHAR),
  refund_description VARCHAR2(255 CHAR),
  shop_id            NUMBER(19),
  shop_subject       VARCHAR2(255 CHAR),
  subject            VARCHAR2(255 CHAR),
  user_id            NUMBER(19),
  delete_description VARCHAR2(255 CHAR),
  delete_status      NUMBER(10),
  delete_time        VARCHAR2(14 CHAR),
  invoice_content    VARCHAR2(255 CHAR),
  invoice_subject    VARCHAR2(255 CHAR),
  invoice_type       NUMBER(10),
  create_source      NUMBER(10),
  remark             VARCHAR2(255 CHAR),
  uuid               VARCHAR2(32 CHAR),
  order_type         NUMBER(10),
  ext_info           VARCHAR2(500)
)
;
comment on column T_ACT_ORDER.id
  is 'ID ';
comment on column T_ACT_ORDER.act_type
  is 'ҵ�����ͣ�20���Ź���40��վ��Ʒ��������ֵ�ڲ����� ';
comment on column T_ACT_ORDER.close_description
  is '�����ر� ˵��';
comment on column T_ACT_ORDER.close_status
  is '�����ر� ״̬, 0δ�رգ�1�ѹر�';
comment on column T_ACT_ORDER.close_time
  is '�����ر� ʱ��';
comment on column T_ACT_ORDER.create_time
  is '������Դ�����ڱ����ҳ�����ġ����Ŵ����ġ�wap�����ġ��ֻ��ͻ��˴����ġ����������� 1��վ��2WAP��3�ͻ��ˣ�4���ţ�0����';
comment on column T_ACT_ORDER.expire_time
  is '������ʱʱ�䣨�룩 ';
comment on column T_ACT_ORDER.pay_description
  is '����֧�� ˵��';
comment on column T_ACT_ORDER.pay_status
  is '����֧�� ״̬��0δ֧����1֧���У�2��֧��';
comment on column T_ACT_ORDER.pay_time
  is '����֧�� ʱ��';
comment on column T_ACT_ORDER.shop_id
  is '�̻�ID ';
comment on column T_ACT_ORDER.shop_subject
  is '�̻����� ';
comment on column T_ACT_ORDER.subject
  is '�������� ';
comment on column T_ACT_ORDER.user_id
  is '�û�ID ';
comment on column T_ACT_ORDER.delete_description
  is '����ɾ�� ˵��';
comment on column T_ACT_ORDER.delete_status
  is '����ɾ�� ״̬��0δɾ����1��ɾ��';
comment on column T_ACT_ORDER.delete_time
  is '����ɾ�� ʱ��';
comment on column T_ACT_ORDER.invoice_content
  is '��Ʊ���� ';
comment on column T_ACT_ORDER.invoice_subject
  is '��Ʊ���� ';
comment on column T_ACT_ORDER.invoice_type
  is '��Ʊ���� 0��Ҫ��Ʊ��1��ͨ��Ʊ��2��ֵ˰��Ʊ';
comment on column T_ACT_ORDER.create_source
  is '������Դ ';
comment on column T_ACT_ORDER.remark
  is '������ע ';
comment on column T_ACT_ORDER.uuid
  is 'Ψһ�� ';
comment on column T_ACT_ORDER.ext_info
  is '������չ��Ϣ�������µ�ʱ��д����������Ϣ�� ������Ź��ĻID��Ӫ����ĻID';
alter table T_ACT_ORDER
  add primary key (ID);

prompt
prompt Creating table T_ACT_ORDER_EXPRESS
prompt ==================================
prompt
create table T_ACT_ORDER_EXPRESS
(
  id                   NUMBER(19) not null,
  act_order_id         NUMBER(19),
  address              VARCHAR2(255 CHAR),
  cellphone_number     VARCHAR2(255 CHAR),
  express_company_id   NUMBER(19),
  express_company_name VARCHAR2(255 CHAR),
  express_cost         NUMBER(10),
  express_no           VARCHAR2(255 CHAR),
  receive_time         VARCHAR2(14 CHAR),
  receiver_name        VARCHAR2(255 CHAR),
  send_time            VARCHAR2(14 CHAR),
  status               NUMBER(10),
  status_description   VARCHAR2(255 CHAR),
  status_time          VARCHAR2(255 CHAR),
  telephone_number     VARCHAR2(255 CHAR),
  zip_code             VARCHAR2(255 CHAR),
  remark               VARCHAR2(255 CHAR),
  auto_receive_time    VARCHAR2(255 CHAR)
)
;
comment on column T_ACT_ORDER_EXPRESS.id
  is ' ';
comment on column T_ACT_ORDER_EXPRESS.act_order_id
  is '������ ';
comment on column T_ACT_ORDER_EXPRESS.address
  is '�ջ���ַ ';
comment on column T_ACT_ORDER_EXPRESS.cellphone_number
  is '�ֻ����� ';
comment on column T_ACT_ORDER_EXPRESS.express_company_id
  is '������˾ ';
comment on column T_ACT_ORDER_EXPRESS.express_company_name
  is '������˾���� ';
comment on column T_ACT_ORDER_EXPRESS.express_cost
  is '�����ѣ��֣� ';
comment on column T_ACT_ORDER_EXPRESS.express_no
  is '�������� ';
comment on column T_ACT_ORDER_EXPRESS.receive_time
  is '�ջ�ʱ�� ';
comment on column T_ACT_ORDER_EXPRESS.receiver_name
  is '�ջ������� ';
comment on column T_ACT_ORDER_EXPRESS.send_time
  is '����ʱ�� ';
comment on column T_ACT_ORDER_EXPRESS.status
  is '״̬ 0δ������1�ѷ�����2���ջ�';
comment on column T_ACT_ORDER_EXPRESS.status_description
  is '״̬˵�� ';
comment on column T_ACT_ORDER_EXPRESS.status_time
  is '״̬ʱ�� ';
comment on column T_ACT_ORDER_EXPRESS.telephone_number
  is '�̻����� ';
comment on column T_ACT_ORDER_EXPRESS.zip_code
  is '�������� ';
comment on column T_ACT_ORDER_EXPRESS.remark
  is '������ע ';
create index IDX__ACT_ORDER_EXPRESS_01 on T_ACT_ORDER_EXPRESS (ACT_ORDER_ID);
alter table T_ACT_ORDER_EXPRESS
  add primary key (ID);

prompt
prompt Creating table T_ACT_ORDER_GOODS
prompt ================================
prompt
create table T_ACT_ORDER_GOODS
(
  id                 NUMBER(19) not null,
  act_order_id       NUMBER(19),
  count              NUMBER(10),
  discount           NUMBER(10),
  fee_price          NUMBER(10),
  goods_description  VARCHAR2(255 CHAR),
  goods_id           NUMBER(19),
  goods_subject      VARCHAR2(255 CHAR),
  pay_price          NUMBER(10),
  refund_amount      NUMBER(10),
  refund_count       NUMBER(10),
  refund_status      NUMBER(10),
  refund_time        VARCHAR2(255 CHAR),
  verify_code_id     VARCHAR2(30 CHAR),
  verify_description VARCHAR2(255 CHAR),
  verify_status      NUMBER(10),
  verify_time        VARCHAR2(255 CHAR),
  refund_description VARCHAR2(255 CHAR),
  remark             VARCHAR2(255 CHAR)
)
;
comment on column T_ACT_ORDER_GOODS.id
  is ' ';
comment on column T_ACT_ORDER_GOODS.act_order_id
  is 'ҵ�񶩵�Id ';
comment on column T_ACT_ORDER_GOODS.count
  is '��Ʒ���� ';
comment on column T_ACT_ORDER_GOODS.discount
  is '��Ʒ�ۿۣ��֣� ';
comment on column T_ACT_ORDER_GOODS.fee_price
  is '������֣� ';
comment on column T_ACT_ORDER_GOODS.goods_description
  is '��Ʒ���� ';
comment on column T_ACT_ORDER_GOODS.goods_id
  is '��ƷID ';
comment on column T_ACT_ORDER_GOODS.goods_subject
  is '��Ʒ���� ';
comment on column T_ACT_ORDER_GOODS.pay_price
  is '֧������ ';
comment on column T_ACT_ORDER_GOODS.refund_amount
  is '���ݲ�ʹ�ã� ';
comment on column T_ACT_ORDER_GOODS.refund_count
  is '���ݲ�ʹ�ã� ';
comment on column T_ACT_ORDER_GOODS.refund_status
  is '�˿�״̬ 0δ�˿1���˿�';
comment on column T_ACT_ORDER_GOODS.refund_time
  is '�˿�ʱ�� ';
comment on column T_ACT_ORDER_GOODS.verify_code_id
  is '���ݲ�ʹ�ã� ';
comment on column T_ACT_ORDER_GOODS.verify_description
  is '���ݲ�ʹ�ã� ';
comment on column T_ACT_ORDER_GOODS.verify_status
  is '���ݲ�ʹ�ã� ';
comment on column T_ACT_ORDER_GOODS.verify_time
  is '���ݲ�ʹ�ã� ';
comment on column T_ACT_ORDER_GOODS.refund_description
  is '�˿�˵�� ';
comment on column T_ACT_ORDER_GOODS.remark
  is '��Ʒ��ע ';
alter table T_ACT_ORDER_GOODS
  add primary key (ID);

prompt
prompt Creating table T_ACT_ORDER_HISTORY
prompt ==================================
prompt
create table T_ACT_ORDER_HISTORY
(
  id                  NUMBER(19) not null,
  act_order_id        NUMBER(19),
  status              NUMBER(10),
  status_type         NUMBER(10),
  update_data         VARCHAR2(255 CHAR),
  update_descriptions VARCHAR2(255 CHAR),
  update_time         VARCHAR2(255 CHAR)
)
;
comment on column T_ACT_ORDER_HISTORY.id
  is ' ';
comment on column T_ACT_ORDER_HISTORY.act_order_id
  is '����ID ';
comment on column T_ACT_ORDER_HISTORY.status
  is '״̬ ';
comment on column T_ACT_ORDER_HISTORY.status_type
  is '״̬���� 1֧����2�˿3��֤��4�رա�5����';
comment on column T_ACT_ORDER_HISTORY.update_data
  is '�������� ';
comment on column T_ACT_ORDER_HISTORY.update_descriptions
  is '����˵�� ';
comment on column T_ACT_ORDER_HISTORY.update_time
  is '����ʱ�� ';
alter table T_ACT_ORDER_HISTORY
  add primary key (ID);

prompt
prompt Creating table T_ACT_ORDER_PAYMENT
prompt ==================================
prompt
create table T_ACT_ORDER_PAYMENT
(
  id           NUMBER(19) not null,
  act_order_id NUMBER(19),
  amount       NUMBER(10),
  channal      VARCHAR2(255 CHAR),
  currency     VARCHAR2(255 CHAR),
  splite_info  VARCHAR2(1000 CHAR)
)
;
comment on column T_ACT_ORDER_PAYMENT.id
  is ' ';
comment on column T_ACT_ORDER_PAYMENT.act_order_id
  is '����ID ';
comment on column T_ACT_ORDER_PAYMENT.amount
  is '֧���������֣� ';
comment on column T_ACT_ORDER_PAYMENT.channal
  is '֧������ ';
comment on column T_ACT_ORDER_PAYMENT.currency
  is '֧�����֣��ֽ�cash���̳Ǳ�coin������score�� ';
create index IDX__ACT_ORDER_PAYMENT_01 on T_ACT_ORDER_PAYMENT (ACT_ORDER_ID);
alter table T_ACT_ORDER_PAYMENT
  add primary key (ID);

prompt
prompt Creating table T_ACT_ORDER_SELF
prompt ===============================
prompt
create table T_ACT_ORDER_SELF
(
  id           NUMBER(19) not null,
  act_order_id NUMBER(19),
  self_get     NUMBER(1) default 0
)
;
comment on table T_ACT_ORDER_SELF
  is '������ȡ��¼��';
comment on column T_ACT_ORDER_SELF.act_order_id
  is '����ID';
comment on column T_ACT_ORDER_SELF.self_get
  is '��ȡ��ʾ��0��δȡ��1����ȡ';
alter table T_ACT_ORDER_SELF
  add primary key (ID);

prompt
prompt Creating table T_APP_INFO
prompt =========================
prompt
create table T_APP_INFO
(
  id              NUMBER(9) not null,
  app_code        VARCHAR2(50),
  app_name        VARCHAR2(200),
  app_remark      CLOB,
  app_open_url    VARCHAR2(500),
  app_close_url   VARCHAR2(500),
  app_url         VARCHAR2(500),
  status          NUMBER(2) default 0,
  app_contacts    VARCHAR2(200),
  app_tel         VARCHAR2(200),
  app_mail        VARCHAR2(200),
  app_notice_url1 VARCHAR2(200)
)
;
comment on column T_APP_INFO.status
  is '1������
0��ͣ��';
alter table T_APP_INFO
  add constraint PK_T_APP_INFO primary key (ID);

prompt
prompt Creating table T_AUDIT_STEP
prompt ===========================
prompt
create table T_AUDIT_STEP
(
  id            NUMBER(8) not null,
  bs_id         NUMBER(8),
  bs_type       NUMBER(1),
  status        NUMBER(1),
  remark        VARCHAR2(100),
  audit_user_id NUMBER(8),
  update_time   VARCHAR2(14),
  bs_tabel      VARCHAR2(100)
)
;
comment on table T_AUDIT_STEP
  is '��˲����¼���漰������';
comment on column T_AUDIT_STEP.bs_id
  is '���ݲ�ͬҵ�����ͣ�����Ӧ���̻�id����Ʒid��';
comment on column T_AUDIT_STEP.bs_type
  is '1--ҵ���ŵ�
2--�̻�
3--������
4--��Ʒ
5--�ѷ�����Ʒ';
comment on column T_AUDIT_STEP.status
  is '1--���ͨ��
2--��˲���';
comment on column T_AUDIT_STEP.bs_tabel
  is 'ҵ�����';
alter table T_AUDIT_STEP
  add constraint PK_T_AUDIT_STEP primary key (ID);

prompt
prompt Creating table T_BATCH_SUBTASK
prompt ==============================
prompt
create table T_BATCH_SUBTASK
(
  task_id          NUMBER(9) not null,
  parent_task_id   NUMBER(9) not null,
  mmsc_id          VARCHAR2(50),
  mobile_file_path VARCHAR2(250)
)
;
comment on table T_BATCH_SUBTASK
  is 'PUSHȺ���������';
comment on column T_BATCH_SUBTASK.task_id
  is '����ID';
comment on column T_BATCH_SUBTASK.parent_task_id
  is '������ID';
comment on column T_BATCH_SUBTASK.mmsc_id
  is '�������ı��925001
1������Ⱥ������';
comment on column T_BATCH_SUBTASK.mobile_file_path
  is '�����б��ļ�';
alter table T_BATCH_SUBTASK
  add constraint PK_T_BATCH_SUBTASK primary key (TASK_ID);

prompt
prompt Creating table T_BATCH_TASK
prompt ===========================
prompt
create table T_BATCH_TASK
(
  id                 NUMBER(9) not null,
  custom_tag         NUMBER(3),
  task_type          NUMBER(3) not null,
  unit_id            VARCHAR2(20) not null,
  priority           NUMBER(3) not null,
  speed              NUMBER(3) not null,
  is_report          NUMBER(3) not null,
  start_time         VARCHAR2(14),
  stop_time          VARCHAR2(14),
  sleep_time         VARCHAR2(250),
  status             NUMBER(3) not null,
  sp_code            VARCHAR2(20),
  service_id         VARCHAR2(20),
  fee_type           NUMBER(3),
  fee                NUMBER(5),
  trace_respond      NUMBER(3) not null,
  respond_timeout    VARCHAR2(14),
  info_id            NUMBER(9),
  title              VARCHAR2(200),
  content            VARCHAR2(200),
  smil               VARCHAR2(200),
  exec_start_time    VARCHAR2(14),
  exec_stop_time     VARCHAR2(14),
  mobile_list_file   VARCHAR2(200),
  white_list_file    VARCHAR2(200),
  black_list_file    VARCHAR2(200),
  notice_terminal_id VARCHAR2(200),
  task_name          VARCHAR2(200),
  submit_cnt         NUMBER(9),
  success_cnt        NUMBER(9),
  black_cnt          NUMBER(9),
  fail_cnt           NUMBER(9),
  creator_id         NUMBER(9) not null,
  create_time        VARCHAR2(14) not null,
  auditor_id         NUMBER(9),
  audit_time         VARCHAR2(14),
  advice             VARCHAR2(200),
  submit_localflag   NUMBER(3),
  act_id             NUMBER(19),
  area_code          VARCHAR2(255 CHAR),
  service_doc        VARCHAR2(255 CHAR),
  item_id            VARCHAR2(50),
  batch_type         NUMBER(3),
  router_id          NUMBER(12)
)
;
comment on table T_BATCH_TASK
  is '����Ⱥ�������Լ������ִ��״̬��';
comment on column T_BATCH_TASK.id
  is '����ID';
comment on column T_BATCH_TASK.custom_tag
  is '0���ֹ�Ⱥ������
1������Ⱥ������';
comment on column T_BATCH_TASK.task_type
  is '1������Ⱥ��
2������Ⱥ��
3��WAP Push';
comment on column T_BATCH_TASK.unit_id
  is '��������Ĳ��ŵ�ID';
comment on column T_BATCH_TASK.priority
  is '�������ȼ�0-999:�ߵ���';
comment on column T_BATCH_TASK.speed
  is 'ÿ�뷢�͵�����';
comment on column T_BATCH_TASK.is_report
  is '�Ƿ���ȡ״̬����:
 0:��
 1:��';
comment on column T_BATCH_TASK.start_time
  is '����ķ���ʱ��';
comment on column T_BATCH_TASK.stop_time
  is '�������ֹʱ��';
comment on column T_BATCH_TASK.sleep_time
  is '�Զ���ͣ����ʱ��: HHNN-HHNN,HHNN-HHNN';
comment on column T_BATCH_TASK.status
  is '����״̬��
0��δ���
1�������
2����˲�ͨ��
3����ͣ
4��������
5���������
6������ʧ��
7������Ԥ����
8��Ԥ������ɣ��ȴ�����';
comment on column T_BATCH_TASK.service_id
  is '�ƷѴ���';
comment on column T_BATCH_TASK.fee_type
  is '�Ʒ����� 1���,2�����շ�,3�����շ�';
comment on column T_BATCH_TASK.fee
  is '�Ʒѽ�� ��λ��';
comment on column T_BATCH_TASK.trace_respond
  is '�Ƿ�����û���Ӧ
0����
1����';
comment on column T_BATCH_TASK.respond_timeout
  is '�����û���Ӧ���ʱ�� ��λ����';
comment on column T_BATCH_TASK.info_id
  is '�û�ѡ��ķ�����Ϣ��ID';
comment on column T_BATCH_TASK.title
  is '���ŵ����ݣ����ŵı��⣬WAP�ı���';
comment on column T_BATCH_TASK.content
  is '���ŵ����ݣ����·������WAP��URL';
comment on column T_BATCH_TASK.smil
  is '���ŵ�SMIL';
comment on column T_BATCH_TASK.exec_start_time
  is 'ִ�п�ʼʱ��';
comment on column T_BATCH_TASK.exec_stop_time
  is 'ִ�н���ʱ��';
comment on column T_BATCH_TASK.mobile_list_file
  is '��������';
comment on column T_BATCH_TASK.white_list_file
  is '����������';
comment on column T_BATCH_TASK.black_list_file
  is '����������';
comment on column T_BATCH_TASK.submit_cnt
  is '����������';
comment on column T_BATCH_TASK.success_cnt
  is '�ɹ��·���';
comment on column T_BATCH_TASK.black_cnt
  is '����������';
comment on column T_BATCH_TASK.fail_cnt
  is 'ʧ������';
comment on column T_BATCH_TASK.creator_id
  is '������ID';
comment on column T_BATCH_TASK.create_time
  is '��������YYYYMMDDHHNNSS';
comment on column T_BATCH_TASK.auditor_id
  is '�����ID';
comment on column T_BATCH_TASK.audit_time
  is '�������YYYYMMDDHHNNSS';
comment on column T_BATCH_TASK.advice
  is '���˵��';
comment on column T_BATCH_TASK.submit_localflag
  is '��˲������ͣ�1:�������,2:�ϼ���λ���';
comment on column T_BATCH_TASK.act_id
  is '���Ź��ID
';
comment on column T_BATCH_TASK.item_id
  is '������ƷID';
comment on column T_BATCH_TASK.batch_type
  is '1 ��ͨȺ����2 ���Ź�';
comment on column T_BATCH_TASK.router_id
  is '��Ʒָ��';
alter table T_BATCH_TASK
  add constraint PK_T_BATCH_TASK primary key (ID);

prompt
prompt Creating table T_BATCH_TASK_SCHEDULE
prompt ====================================
prompt
create table T_BATCH_TASK_SCHEDULE
(
  id                    NUMBER(9) not null,
  user_code             VARCHAR2(100) not null,
  status                NUMBER(9) not null,
  upload_terminal_count NUMBER(8),
  result_terminal_count NUMBER(8),
  create_time           VARCHAR2(14) not null,
  end_time              VARCHAR2(14),
  upload_file_path      VARCHAR2(200),
  result_file_path      VARCHAR2(200),
  date_time             VARCHAR2(8) not null,
  filter_type           NUMBER(1) not null,
  limit                 NUMBER(5) default 5,
  failure_reason        VARCHAR2(200),
  remark                VARCHAR2(100),
  task_type             NUMBER(1)
)
;
comment on table T_BATCH_TASK_SCHEDULE
  is 'Ⱥ�����ڱ�';
comment on column T_BATCH_TASK_SCHEDULE.id
  is '���';
comment on column T_BATCH_TASK_SCHEDULE.user_code
  is '�����ʺ�';
comment on column T_BATCH_TASK_SCHEDULE.status
  is '״̬ 0-ɾ��;1-��Ч(δ����);2-��Ч(������);3-������;4-�������;5-����ʧ��';
comment on column T_BATCH_TASK_SCHEDULE.upload_terminal_count
  is '�ϴ�������(�ɺ�̨����ά��)';
comment on column T_BATCH_TASK_SCHEDULE.result_terminal_count
  is '������ʵ�ʹ��˺�����(�ɺ�̨����ά��)';
comment on column T_BATCH_TASK_SCHEDULE.create_time
  is '��ʼʱ��(¼��ϵͳʱ��)';
comment on column T_BATCH_TASK_SCHEDULE.end_time
  is '����ʱ��(��̨���̴�����ʱ��)';
comment on column T_BATCH_TASK_SCHEDULE.upload_file_path
  is '�ϴ��ļ�·��';
comment on column T_BATCH_TASK_SCHEDULE.result_file_path
  is '���̴������ļ�·��';
comment on column T_BATCH_TASK_SCHEDULE.date_time
  is '��������';
comment on column T_BATCH_TASK_SCHEDULE.filter_type
  is '���˷�Χ 0-ȫ����(��������);1-��ͨ����;2;���Ź�';
comment on column T_BATCH_TASK_SCHEDULE.limit
  is '�����յ����������ŵ��û�������';
comment on column T_BATCH_TASK_SCHEDULE.failure_reason
  is '���̴���ʧ��ԭ��';
comment on column T_BATCH_TASK_SCHEDULE.remark
  is '��ע';
comment on column T_BATCH_TASK_SCHEDULE.task_type
  is '1-��ͨȺ����2-���Ź�';
alter table T_BATCH_TASK_SCHEDULE
  add constraint PK_T_BATCH_TASK_SCHEDULE primary key (ID);

prompt
prompt Creating table T_BOSS_PRECONTRACT
prompt =================================
prompt
create table T_BOSS_PRECONTRACT
(
  id           NUMBER(9) not null,
  mobile       VARCHAR2(21),
  prd_code     VARCHAR2(50),
  opr_code     VARCHAR2(4),
  area_code    VARCHAR2(20),
  opr_time     VARCHAR2(20),
  service_id   VARCHAR2(20),
  receive_time VARCHAR2(20),
  insert_time  VARCHAR2(20),
  status       NUMBER(3),
  trans_id     VARCHAR2(40),
  error        VARCHAR2(1000)
)
;
comment on column T_BOSS_PRECONTRACT.id
  is '����';
comment on column T_BOSS_PRECONTRACT.mobile
  is '����';
comment on column T_BOSS_PRECONTRACT.prd_code
  is '��Ҫ��ͨ��Ӧ�ã�����ð�Ƕ��ŷָ�';
comment on column T_BOSS_PRECONTRACT.opr_code
  is '�������ͣ�01��ͨ��02�رգ�03��ͣ��04�ָ���10���';
comment on column T_BOSS_PRECONTRACT.area_code
  is '����';
comment on column T_BOSS_PRECONTRACT.opr_time
  is '����ʱ�䣨ԤԼ����ʱ�䣩��14λʱ��';
comment on column T_BOSS_PRECONTRACT.service_id
  is 'ҵ�����';
comment on column T_BOSS_PRECONTRACT.receive_time
  is '����ʱ�䣬14λʱ��';
comment on column T_BOSS_PRECONTRACT.insert_time
  is '���ʱ�䣬14λʱ��';
comment on column T_BOSS_PRECONTRACT.status
  is '״̬��0δ����1�Ѵ���2����ɹ���3����ʧ�ܣ�4����';
comment on column T_BOSS_PRECONTRACT.trans_id
  is 'Boss����ı��';
comment on column T_BOSS_PRECONTRACT.error
  is '��������';
alter table T_BOSS_PRECONTRACT
  add constraint PK_T_BOSS_PRECONTRACT primary key (ID);

prompt
prompt Creating table T_BOSS_REQUEST
prompt =============================
prompt
create table T_BOSS_REQUEST
(
  id          NUMBER(9) not null,
  terminal_id VARCHAR2(21) not null,
  area_code   VARCHAR2(10) not null,
  type        VARCHAR2(2) not null,
  send_date   VARCHAR2(14),
  status      NUMBER(1) default 0 not null,
  error       VARCHAR2(500),
  product_id  VARCHAR2(10) not null,
  req_src     VARCHAR2(50) not null,
  insert_time VARCHAR2(14) not null
)
;
comment on column T_BOSS_REQUEST.id
  is '����';
comment on column T_BOSS_REQUEST.terminal_id
  is '����';
comment on column T_BOSS_REQUEST.area_code
  is '������NJ��SZ�ȣ�';
comment on column T_BOSS_REQUEST.type
  is '�������ͣ�01��ͨ��02�ر�';
comment on column T_BOSS_REQUEST.send_date
  is '����ʱ��';
comment on column T_BOSS_REQUEST.status
  is '״̬��0δ����1����ɹ���2����ʧ�ܣ�3�Ѵ��������';
comment on column T_BOSS_REQUEST.error
  is '����ʧ�ܵ�ԭ��';
comment on column T_BOSS_REQUEST.product_id
  is '��Ʒ���';
comment on column T_BOSS_REQUEST.req_src
  is '�����¼����Դ';
comment on column T_BOSS_REQUEST.insert_time
  is '�����¼��ʱ��';
alter table T_BOSS_REQUEST
  add constraint PK_T_BOSS_REQUEST primary key (ID);

prompt
prompt Creating table T_BRAND
prompt ======================
prompt
create table T_BRAND
(
  id          NUMBER(9) not null,
  name        VARCHAR2(50),
  remark      VARCHAR2(200),
  website     VARCHAR2(100),
  brand_img   VARCHAR2(100),
  create_time VARCHAR2(14),
  is_valid    NUMBER(1)
)
;
comment on table T_BRAND
  is '��ƷƷ�Ʊ�';
comment on column T_BRAND.name
  is 'Ʒ������';
comment on column T_BRAND.remark
  is 'Ʒ������';
comment on column T_BRAND.website
  is 'Ʒ����վ';
comment on column T_BRAND.brand_img
  is 'Ʒ��ͼƬ';
comment on column T_BRAND.create_time
  is '����ʱ��';
comment on column T_BRAND.is_valid
  is '�Ƿ���Ч
0-��Ч
1-��Ч';
alter table T_BRAND
  add constraint PK_T_BRAND primary key (ID);

prompt
prompt Creating table T_CART
prompt =====================
prompt
create table T_CART
(
  uuid        VARCHAR2(64),
  access_time NUMBER,
  expire_time NUMBER,
  content     CLOB
)
;

prompt
prompt Creating table T_CHANNEL_CATALOG_CONF
prompt =====================================
prompt
create table T_CHANNEL_CATALOG_CONF
(
  id          NUMBER(8) not null,
  item_id     NUMBER(8),
  group_id    NUMBER(4),
  update_time VARCHAR2(14),
  order_index NUMBER(4),
  status      NUMBER(1) default 1,
  channel     NUMBER(4) default 1,
  region_code VARCHAR2(100)
)
;
comment on table T_CHANNEL_CATALOG_CONF
  is '��Ʒ���ͷ������ñ�';
comment on column T_CHANNEL_CATALOG_CONF.id
  is '����';
comment on column T_CHANNEL_CATALOG_CONF.item_id
  is '��ƷID';
comment on column T_CHANNEL_CATALOG_CONF.group_id
  is '�������id 1-1¥, 2-2¥����, 3-3¥����, 4-4¥����,5-��Ʒ�׷�, 11-��Լ��, 12-������ɫ, 13-��Ʒ�Ƽ�, 14-������Ʒ';
comment on column T_CHANNEL_CATALOG_CONF.update_time
  is '����ʱ��';
comment on column T_CHANNEL_CATALOG_CONF.order_index
  is '����';
comment on column T_CHANNEL_CATALOG_CONF.status
  is '״̬ 1-����, 0����';
comment on column T_CHANNEL_CATALOG_CONF.channel
  is 'Ƶ�� 1-�̳���ҳ';
comment on column T_CHANNEL_CATALOG_CONF.region_code
  is 'ʡ�е�������';
alter table T_CHANNEL_CATALOG_CONF
  add constraint T_CHANNEL_CATALOG_ID primary key (ID);

prompt
prompt Creating table T_CHANNEL_CATALOG_RCMD_CONF
prompt ==========================================
prompt
create table T_CHANNEL_CATALOG_RCMD_CONF
(
  id           NUMBER(8) not null,
  group_id     NUMBER(4),
  channel      NUMBER(4),
  display_name VARCHAR2(20),
  link_url     VARCHAR2(500),
  order_index  NUMBER(4),
  type         NUMBER(2) default 1,
  image_path   VARCHAR2(150),
  region_code  VARCHAR2(100)
)
;
comment on column T_CHANNEL_CATALOG_RCMD_CONF.group_id
  is '�������id
1-1¥,
2-2¥����,
3-3¥����,
4-4¥����,
';
comment on column T_CHANNEL_CATALOG_RCMD_CONF.channel
  is 'Ƶ�� 1-�̳���ҳ';
comment on column T_CHANNEL_CATALOG_RCMD_CONF.type
  is '1-������������, 2-ͼƬ��������';
comment on column T_CHANNEL_CATALOG_RCMD_CONF.image_path
  is 'ͼƬ�������������ͼƬ·��';
comment on column T_CHANNEL_CATALOG_RCMD_CONF.region_code
  is 'ʡ�е�������';
alter table T_CHANNEL_CATALOG_RCMD_CONF
  add constraint PK_T_CHANNEL_CATALOG_RCMD_CONF primary key (ID);

prompt
prompt Creating table T_CHANNEL_FLOOR_CONF
prompt ===================================
prompt
create table T_CHANNEL_FLOOR_CONF
(
  id          NUMBER(8) not null,
  title       VARCHAR2(100),
  floor_id    NUMBER(4),
  type_id     NUMBER(8),
  order_index NUMBER(4),
  channel     NUMBER(4) default 1,
  region_code VARCHAR2(100),
  update_time VARCHAR2(14)
)
;
comment on column T_CHANNEL_FLOOR_CONF.id
  is '����ID';
comment on column T_CHANNEL_FLOOR_CONF.title
  is '¥����� ����Ϊ��';
comment on column T_CHANNEL_FLOOR_CONF.floor_id
  is '¥��ID,  0-����, 1-һ��(�Դ�����)';
comment on column T_CHANNEL_FLOOR_CONF.type_id
  is '���ID, ��Ӧ��Ʒ�ķ���ID';
comment on column T_CHANNEL_FLOOR_CONF.order_index
  is '����';
comment on column T_CHANNEL_FLOOR_CONF.channel
  is 'Ƶ�� 1-�̳�';
comment on column T_CHANNEL_FLOOR_CONF.region_code
  is '������';
comment on column T_CHANNEL_FLOOR_CONF.update_time
  is '����ʱ��';
alter table T_CHANNEL_FLOOR_CONF
  add constraint PK_T_CHANNEL_FLOOR_CONF_ID primary key (ID);

prompt
prompt Creating table T_CHANNEL_PIC_CONF
prompt =================================
prompt
create table T_CHANNEL_PIC_CONF
(
  id          NUMBER(8) not null,
  pic_path    VARCHAR2(150),
  pic_alt     VARCHAR2(150),
  pic_index   NUMBER(4),
  link_url    VARCHAR2(150),
  postion     NUMBER(2),
  channel     NUMBER(1) default 1,
  update_time VARCHAR2(14),
  region_code VARCHAR2(100)
)
;
comment on table T_CHANNEL_PIC_CONF
  is '��ҳͼƬ�ֻ���';
comment on column T_CHANNEL_PIC_CONF.id
  is '����';
comment on column T_CHANNEL_PIC_CONF.pic_path
  is 'ͼƬ·��';
comment on column T_CHANNEL_PIC_CONF.pic_alt
  is 'ͼƬ����';
comment on column T_CHANNEL_PIC_CONF.pic_index
  is 'ͼƬ����';
comment on column T_CHANNEL_PIC_CONF.link_url
  is '����';
comment on column T_CHANNEL_PIC_CONF.postion
  is 'λ�� 0-��ʶ���, ��������Ϊ1¥,2,3,4';
comment on column T_CHANNEL_PIC_CONF.channel
  is 'Ƶ��1-�̳�';
comment on column T_CHANNEL_PIC_CONF.update_time
  is '����ʱ��';
comment on column T_CHANNEL_PIC_CONF.region_code
  is 'ʡ�е�������';
alter table T_CHANNEL_PIC_CONF
  add constraint T_CHANNEL_PIC_ID primary key (ID);

prompt
prompt Creating table T_CHANNEL_TYPE
prompt =============================
prompt
create table T_CHANNEL_TYPE
(
  id           NUMBER(20) not null,
  type_id      NUMBER(20) not null,
  display_name VARCHAR2(100),
  region_code  VARCHAR2(100),
  channel      NUMBER(4) default 1
)
;
comment on column T_CHANNEL_TYPE.id
  is '����';
comment on column T_CHANNEL_TYPE.type_id
  is '��Ʒ����ID';
comment on column T_CHANNEL_TYPE.display_name
  is '��ʾ����';
comment on column T_CHANNEL_TYPE.region_code
  is 'ʡ�е�������';
comment on column T_CHANNEL_TYPE.channel
  is 'Ƶ�� 1-�̳���ҳ';
alter table T_CHANNEL_TYPE
  add constraint PK_T_CHANNEL_TYPE primary key (ID);

prompt
prompt Creating table T_CONT_CODE
prompt ==========================
prompt
create table T_CONT_CODE
(
  id        NUMBER(9) not null,
  code      VARCHAR2(20) not null,
  name      VARCHAR2(100) not null,
  area_code VARCHAR2(8),
  cont_type NUMBER(1) default 1 not null,
  code_type NUMBER(2) default 0 not null
)
;
comment on table T_CONT_CODE
  is '12580��Ϣ����Դ��';
comment on column T_CONT_CODE.id
  is '����ԴID��ʹ������SEQ_CONT_CODE';
comment on column T_CONT_CODE.code
  is '����ԴӢ�ı�ʶ��Ψһ';
comment on column T_CONT_CODE.name
  is '����Դ����';
comment on column T_CONT_CODE.area_code
  is '����Դ��������,����025';
comment on column T_CONT_CODE.cont_type
  is '����Դ��Ϣ���ͣ�0��ʾ���ţ�1��ʾ����';
comment on column T_CONT_CODE.code_type
  is '����Դʹ�����ͣ�0��ʾ�㲥��1��ʾ����,3 �ۿ�ȯ����,4�һ�����,5 �һ�����, 6,������,7 �ۿ�ȯ����,8 ���Ӳ���,9 Ⱥ��,10 ����ۿ�ȯ����ʱ¼�����';
create index INDX_12580_CONT_CODE on T_CONT_CODE (CODE_TYPE);
alter table T_CONT_CODE
  add constraint PK_12580_CONT_CODE primary key (ID);
alter table T_CONT_CODE
  add constraint UK_12580_CONT_CODE unique (CODE);

prompt
prompt Creating table T_CONT_MMS
prompt =========================
prompt
create table T_CONT_MMS
(
  id             NUMBER(9) not null,
  content_src    VARCHAR2(20) not null,
  title          VARCHAR2(200) not null,
  content_path   VARCHAR2(100),
  content        VARCHAR2(2000) not null,
  pic_size       VARCHAR2(200),
  smil_name      VARCHAR2(200),
  start_time     VARCHAR2(14) not null,
  end_time       VARCHAR2(14),
  keyword        VARCHAR2(200),
  area_code      VARCHAR2(100),
  remark         VARCHAR2(200),
  param1         VARCHAR2(60),
  param2         VARCHAR2(60),
  unit_id        VARCHAR2(20) not null,
  content_size   NUMBER(9),
  status         NUMBER(3) not null,
  auditor_id     NUMBER(9),
  advice         VARCHAR2(200),
  update_user_id NUMBER(9),
  update_time    VARCHAR2(14)
)
;
comment on table T_CONT_MMS
  is '������Ϣ��';
comment on column T_CONT_MMS.content_src
  is '�����cs��Ʒ�����ֶ���дcs��Ʒ�Ĳ�Ʒid';
comment on column T_CONT_MMS.status
  is '0:δ���   1:���ͨ��   2:��˲���    3:�ڲ����ͨ��   4:�ڲ���˲���';
comment on column T_CONT_MMS.advice
  is '��˲���ʱ���ԭ��';
create index IDX_T_CONT_MMS_01 on T_CONT_MMS (CONTENT_SRC, STATUS, START_TIME, END_TIME);
alter table T_CONT_MMS
  add constraint PK_T_CONT_MMS primary key (ID);

prompt
prompt Creating table T_CONT_SMS
prompt =========================
prompt
create table T_CONT_SMS
(
  id             NUMBER(9) not null,
  content_src    VARCHAR2(20) not null,
  content        VARCHAR2(1000) not null,
  start_time     VARCHAR2(14),
  end_time       VARCHAR2(14),
  keyword        VARCHAR2(200),
  area_code      VARCHAR2(100),
  unit_id        VARCHAR2(20) not null,
  remark         VARCHAR2(200),
  status         NUMBER(3) not null,
  auditor_id     NUMBER(9),
  advice         VARCHAR2(200),
  update_user_id NUMBER(9),
  update_time    VARCHAR2(14)
)
;
comment on table T_CONT_SMS
  is '������Ϣ��';
comment on column T_CONT_SMS.status
  is '0:δ���   1:���ͨ��   2:��˲���    3:�ڲ����ͨ��   4:�ڲ���˲���';
comment on column T_CONT_SMS.advice
  is '��˲���ʱ���ԭ��';

prompt
prompt Creating table T_ES_EVENT_TYPES
prompt ===============================
prompt
create table T_ES_EVENT_TYPES
(
  event_type_id          NUMBER(9),
  event_type_name        VARCHAR2(200),
  event_type_description VARCHAR2(500),
  id                     NUMBER(9)
)
;
comment on table T_ES_EVENT_TYPES
  is '�¼����ͱ������¼����ĵ�UI����չʾ';
comment on column T_ES_EVENT_TYPES.event_type_id
  is '�¼�����ID';
comment on column T_ES_EVENT_TYPES.event_type_name
  is '�¼��������ƣ����硰�û������֤��';
comment on column T_ES_EVENT_TYPES.event_type_description
  is '�¼�����˵����';

prompt
prompt Creating table T_ES_LISTENERS
prompt =============================
prompt
create table T_ES_LISTENERS
(
  listener_id            NUMBER(9) not null,
  listener_name          VARCHAR2(200),
  listener_description   VARCHAR2(500),
  event_send_type        NUMBER(3) default 0,
  event_send_address     VARCHAR2(200),
  event_send_concurrency NUMBER(3) default 1
)
;
comment on table T_ES_LISTENERS
  is '�¼�������';
comment on column T_ES_LISTENERS.listener_id
  is '�¼�������ID';
comment on column T_ES_LISTENERS.listener_name
  is '�¼�����������';
comment on column T_ES_LISTENERS.listener_description
  is '�¼�������˵��';
comment on column T_ES_LISTENERS.event_send_type
  is '�¼����ͷ�ʽ��0��Servlet';
comment on column T_ES_LISTENERS.event_send_address
  is '�¼����͵�ַ��type=0:URL��ַ';
comment on column T_ES_LISTENERS.event_send_concurrency
  is '�����߳�����';
alter table T_ES_LISTENERS
  add constraint PK_ES_LISTENERS primary key (LISTENER_ID);

prompt
prompt Creating table T_ES_LISTENER_EVENTS
prompt ===================================
prompt
create table T_ES_LISTENER_EVENTS
(
  listener_id   NUMBER(9),
  event_type_id NUMBER(9),
  match_text    VARCHAR2(255),
  id            NUMBER(9)
)
;
comment on column T_ES_LISTENER_EVENTS.listener_id
  is '������ID';
comment on column T_ES_LISTENER_EVENTS.event_type_id
  is '��Ϣ����ID';

prompt
prompt Creating table T_FAVORITES
prompt ==========================
prompt
create table T_FAVORITES
(
  id          NUMBER(9) not null,
  name        VARCHAR2(200),
  type        NUMBER(1),
  url         VARCHAR2(200),
  create_time VARCHAR2(14),
  obj_id      NUMBER(9),
  user_id     NUMBER(9)
)
;
comment on column T_FAVORITES.name
  is '����';
comment on column T_FAVORITES.type
  is '����
1-��Ʒ
2-����';
comment on column T_FAVORITES.url
  is '��ַ';
comment on column T_FAVORITES.create_time
  is '�ղ�ʱ��';
comment on column T_FAVORITES.obj_id
  is '����id';
comment on column T_FAVORITES.user_id
  is '�ղ���';
alter table T_FAVORITES
  add constraint PK_T_FAVORITES primary key (ID);

prompt
prompt Creating table T_GOODSHELF_GOODS_REL
prompt ====================================
prompt
create table T_GOODSHELF_GOODS_REL
(
  id       NUMBER(9) not null,
  shelf_id NUMBER(9),
  good_id  NUMBER(9)
)
;
comment on table T_GOODSHELF_GOODS_REL
  is '���ܹ�����Ʒ��ϵ��';
comment on column T_GOODSHELF_GOODS_REL.shelf_id
  is '����ID';
comment on column T_GOODSHELF_GOODS_REL.good_id
  is '��ƷID����Ӧt_item_org��id��';
alter table T_GOODSHELF_GOODS_REL
  add constraint T_GOODSHELF_REL_ID primary key (ID);

prompt
prompt Creating table T_GOODSHELF_GOODS_REL_1
prompt ======================================
prompt
create table T_GOODSHELF_GOODS_REL_1
(
  id            NUMBER(9) not null,
  shelf_id      NUMBER(9),
  good_id       NUMBER(9),
  xw_product_id VARCHAR2(60)
)
;

prompt
prompt Creating table T_GOOD_SHELF
prompt ===========================
prompt
create table T_GOOD_SHELF
(
  id           NUMBER(9) not null,
  title        VARCHAR2(50),
  pid          NUMBER(9),
  level_flag   NUMBER(1),
  order_index  NUMBER(3),
  shop_class   NUMBER(1),
  shop_id      NUMBER(9),
  shop_user_id NUMBER(9),
  update_time  VARCHAR2(14),
  img_url      VARCHAR2(100)
)
;
comment on table T_GOOD_SHELF
  is '���ܷ����';
comment on column T_GOOD_SHELF.title
  is '���ܷ�������';
comment on column T_GOOD_SHELF.pid
  is '������ID';
comment on column T_GOOD_SHELF.level_flag
  is '���ܲ㼶����ֻ֧������:1,2,3��';
comment on column T_GOOD_SHELF.order_index
  is '����';
comment on column T_GOOD_SHELF.shop_class
  is '�̻����ࣺ1--ҵ���ŵ�
2--�̻�
3--������';
comment on column T_GOOD_SHELF.shop_id
  is '�̻����';
comment on column T_GOOD_SHELF.shop_user_id
  is '�����̻��˺�';
comment on column T_GOOD_SHELF.update_time
  is '����ʱ��';
comment on column T_GOOD_SHELF.img_url
  is 'ͼƬ��ַ(��Ե�ַ) ';
alter table T_GOOD_SHELF
  add constraint T_GOOD_SHELF_ID primary key (ID);

prompt
prompt Creating table T_GOOD_SHELF_1
prompt =============================
prompt
create table T_GOOD_SHELF_1
(
  id           NUMBER(9),
  title        VARCHAR2(50),
  pid          NUMBER(9),
  level_flag   NUMBER(1),
  order_index  NUMBER(2),
  shop_class   NUMBER(1),
  shop_id      NUMBER(9),
  shop_user_id NUMBER(9),
  update_time  VARCHAR2(14),
  img_url      VARCHAR2(100),
  xw_store_id  VARCHAR2(32)
)
;

prompt
prompt Creating table T_HISUN_PRODUCTION_LINK
prompt ======================================
prompt
create table T_HISUN_PRODUCTION_LINK
(
  id                  NUMBER(9) not null,
  settle_id           NUMBER(9),
  production_id       VARCHAR2(32),
  item_id             NUMBER(9),
  production_type     VARCHAR2(32),
  settle_price        NUMBER(9,2),
  create_time         VARCHAR2(14),
  production_id_cash  VARCHAR2(32),
  production_id_coin  VARCHAR2(32),
  production_id_score VARCHAR2(32)
)
;
comment on column T_HISUN_PRODUCTION_LINK.settle_id
  is '��Ʒ�������ϱ�id';
comment on column T_HISUN_PRODUCTION_LINK.production_id
  is '������Ʒid';
comment on column T_HISUN_PRODUCTION_LINK.item_id
  is '������Ʒid';
comment on column T_HISUN_PRODUCTION_LINK.production_type
  is '��Ӧt_sys_fee��id';
comment on column T_HISUN_PRODUCTION_LINK.settle_price
  is '����� ��λ��';
comment on column T_HISUN_PRODUCTION_LINK.create_time
  is '����ʱ��';
comment on column T_HISUN_PRODUCTION_LINK.production_id_cash
  is '������Ʒid(�ֽ�)';
comment on column T_HISUN_PRODUCTION_LINK.production_id_coin
  is '������Ʒid(�̳Ǳ�)';
comment on column T_HISUN_PRODUCTION_LINK.production_id_score
  is '������Ʒid(����)';
alter table T_HISUN_PRODUCTION_LINK
  add constraint PK_T_HISUN_PRODUCTION_LINK primary key (ID);

prompt
prompt Creating table T_HISUN_PRODUCTION_SETTLE
prompt ========================================
prompt
create table T_HISUN_PRODUCTION_SETTLE
(
  id                NUMBER(9) not null,
  merchid           VARCHAR2(32) not null,
  store_id          VARCHAR2(32) not null,
  serviceid         VARCHAR2(10) not null,
  contractid        VARCHAR2(32),
  contracteffdate   VARCHAR2(8),
  contractexpdate   VARCHAR2(8),
  productionid      VARCHAR2(32) not null,
  productionname    VARCHAR2(255) not null,
  productiontype    VARCHAR2(32) not null,
  capitaltype3      NUMBER(1) default 0,
  capitaltype2      NUMBER(1) default 0,
  capitaltype1      NUMBER(1) default 0,
  verifyflag        VARCHAR2(1) not null,
  verifysettleflag  VARCHAR2(2),
  productionefftime VARCHAR2(14) not null,
  productionexptime VARCHAR2(14) not null,
  verifyexpdate     VARCHAR2(8),
  cityid            VARCHAR2(32),
  cityname          VARCHAR2(32),
  cityprofitrate    VARCHAR2(2),
  agentid           VARCHAR2(32),
  agentname         VARCHAR2(125),
  agentprofitrate   VARCHAR2(2),
  price             NUMBER(9,2),
  settlementprice   NUMBER(9,2),
  settleperiod      NUMBER(2),
  settleperiodtype  VARCHAR2(4),
  settledate1       VARCHAR2(8),
  settlerate1       VARCHAR2(2),
  settledate2       VARCHAR2(8),
  settlerate2       VARCHAR2(2),
  settledate3       VARCHAR2(8),
  settlerate3       VARCHAR2(2),
  status            NUMBER(1) default 0,
  sync_gy_status1   NUMBER(2) default 0,
  create_time       VARCHAR2(14),
  create_user       NUMBER(9),
  type              NUMBER(1),
  file_path         VARCHAR2(200),
  sync_gy_status2   NUMBER(2) default 0,
  sync_gy_status3   NUMBER(2) default 0
)
;
comment on column T_HISUN_PRODUCTION_SETTLE.merchid
  is '�����̻����
�̻���ͳһ����ƽ̨�еı��';
comment on column T_HISUN_PRODUCTION_SETTLE.store_id
  is '�̻����
��ҵ��ƽ̨�е��̻����';
comment on column T_HISUN_PRODUCTION_SETTLE.serviceid
  is 'ҵ����';
comment on column T_HISUN_PRODUCTION_SETTLE.contractid
  is '��ͬ���
���˱���';
comment on column T_HISUN_PRODUCTION_SETTLE.contracteffdate
  is '��ͬ��Ч����
YYYYMMDD�����˱���';
comment on column T_HISUN_PRODUCTION_SETTLE.contractexpdate
  is '��ͬʧЧ����';
comment on column T_HISUN_PRODUCTION_SETTLE.productionid
  is '��Ʒ���';
comment on column T_HISUN_PRODUCTION_SETTLE.productionname
  is '��Ʒ����';
comment on column T_HISUN_PRODUCTION_SETTLE.productiontype
  is '��Ӧt_sys_fee��id';
comment on column T_HISUN_PRODUCTION_SETTLE.capitaltype3
  is '�ʽ�����3-����
1-֧�� 0-no';
comment on column T_HISUN_PRODUCTION_SETTLE.capitaltype2
  is '�ʽ�����2-�̳Ǳ�
1-֧�� 0-no';
comment on column T_HISUN_PRODUCTION_SETTLE.capitaltype1
  is '�ʽ�����-�ֽ�
1-֧�� 0-no';
comment on column T_HISUN_PRODUCTION_SETTLE.verifyflag
  is '��֤��ʶ
Y-��֤��N-����֤��Ĭ�ϣ�';
comment on column T_HISUN_PRODUCTION_SETTLE.verifysettleflag
  is '��֤����
������Ҫ��֤����Ʒ��һ����֧����֤���ɹ������������㣬��һ����֧���ɹ�������û����֤�ľ�Ҫ������㣬ͨ�����ֶ������֣�����ֶε�veriflag=Yʱ���䡣
S1-֧�������
S2-��֤�����
';
comment on column T_HISUN_PRODUCTION_SETTLE.productionefftime
  is '��Ʒ����ʱ��YYYYMMDDHHMISS';
comment on column T_HISUN_PRODUCTION_SETTLE.productionexptime
  is '��Ʒ����ʱ��YYYYMMDDHHMISS';
comment on column T_HISUN_PRODUCTION_SETTLE.verifyexpdate
  is '��֤��ֹ����
YYYYMMDD�����˱���';
comment on column T_HISUN_PRODUCTION_SETTLE.cityid
  is '���б���
���˱���';
comment on column T_HISUN_PRODUCTION_SETTLE.cityname
  is '��������
���˱���';
comment on column T_HISUN_PRODUCTION_SETTLE.cityprofitrate
  is '���зֳɱ���
���˱���';
comment on column T_HISUN_PRODUCTION_SETTLE.agentid
  is '�����̱���
���˱���';
comment on column T_HISUN_PRODUCTION_SETTLE.agentname
  is '����������
���˱���';
comment on column T_HISUN_PRODUCTION_SETTLE.agentprofitrate
  is '�����̷ֳɱ���
���˱���';
comment on column T_HISUN_PRODUCTION_SETTLE.price
  is '��Ʒ���� �Է�Ϊ��λ';
comment on column T_HISUN_PRODUCTION_SETTLE.settlementprice
  is '���㵥�� �Է�Ϊ��λ';
comment on column T_HISUN_PRODUCTION_SETTLE.settleperiod
  is '��������� ���˱���';
comment on column T_HISUN_PRODUCTION_SETTLE.settleperiodtype
  is '�����������
1P2P��һ��֧������֧��
1P2V��һ��֧��������֤
1V2V��һ����֤������֤
';
comment on column T_HISUN_PRODUCTION_SETTLE.settledate1
  is '����ʱ�� YYYYMMDD';
comment on column T_HISUN_PRODUCTION_SETTLE.settlerate1
  is '�������';
comment on column T_HISUN_PRODUCTION_SETTLE.settledate2
  is '����ʱ��2';
comment on column T_HISUN_PRODUCTION_SETTLE.settlerate2
  is '�������2';
comment on column T_HISUN_PRODUCTION_SETTLE.settledate3
  is '����ʱ��3';
comment on column T_HISUN_PRODUCTION_SETTLE.settlerate3
  is '�������3';
comment on column T_HISUN_PRODUCTION_SETTLE.status
  is '״̬
0-δ���
1-���ͨ��';
comment on column T_HISUN_PRODUCTION_SETTLE.sync_gy_status1
  is '����״̬:��ӦCAPITALTYPE1
0-δͬ��
1-��ͬ��
2-�����
3-ͬ���ɹ�
4-��˲���5-ɾ��';
comment on column T_HISUN_PRODUCTION_SETTLE.create_time
  is '����ʱ��';
comment on column T_HISUN_PRODUCTION_SETTLE.create_user
  is '������';
comment on column T_HISUN_PRODUCTION_SETTLE.type
  is 'Э������ 0-��ƷЭ�� 1-��Ʒ����';
comment on column T_HISUN_PRODUCTION_SETTLE.file_path
  is 'Э���ļ�·��';
comment on column T_HISUN_PRODUCTION_SETTLE.sync_gy_status2
  is '����״̬:��ӦCAPITALTYPE2
0-δͬ��
1-��ͬ��
2-�����
3-ͬ���ɹ�
4-��˲���5-ɾ��';
comment on column T_HISUN_PRODUCTION_SETTLE.sync_gy_status3
  is '����״̬:��ӦCAPITALTYPE3
0-δͬ��
1-��ͬ��
2-�����
3-ͬ���ɹ�
4-��˲���5-ɾ��';
alter table T_HISUN_PRODUCTION_SETTLE
  add constraint PK_T_HISUN_PRODUCTION_SETTLE primary key (ID);

prompt
prompt Creating table T_ITEM_COMMENT
prompt =============================
prompt
create table T_ITEM_COMMENT
(
  id            NUMBER(8) not null,
  content       VARCHAR2(500),
  type          NUMBER(1) default 1,
  question_type NUMBER(1),
  update_time   VARCHAR2(14),
  nickname      VARCHAR2(100),
  user_id       NUMBER(19),
  status        NUMBER(1),
  sale_id       NUMBER(8),
  audit_user    NUMBER(8),
  audit_time    VARCHAR2(14),
  rank          NUMBER(3),
  useful_num    NUMBER(5) default 0,
  useless_num   NUMBER(5) default 0,
  store_id      NUMBER(8),
  act_order_id  NUMBER(19)
)
;
comment on column T_ITEM_COMMENT.content
  is '��������';
comment on column T_ITEM_COMMENT.type
  is '�������
1-����
2-��ѯ
';
comment on column T_ITEM_COMMENT.question_type
  is '��ѯ����
0-��Ʒ��ѯ
1-���ѯ';
comment on column T_ITEM_COMMENT.update_time
  is '����ʱ��';
comment on column T_ITEM_COMMENT.nickname
  is '�������ǳ�';
comment on column T_ITEM_COMMENT.user_id
  is '������ID';
comment on column T_ITEM_COMMENT.status
  is '0-δ���
1-���ͨ��
2-��˲���';
comment on column T_ITEM_COMMENT.sale_id
  is '��Ʒid ';
comment on column T_ITEM_COMMENT.audit_user
  is '�����';
comment on column T_ITEM_COMMENT.audit_time
  is '���ʱ��';
comment on column T_ITEM_COMMENT.rank
  is '����';
comment on column T_ITEM_COMMENT.useful_num
  is '����
����';
comment on column T_ITEM_COMMENT.useless_num
  is '����';
comment on column T_ITEM_COMMENT.store_id
  is '�̻�id';
comment on column T_ITEM_COMMENT.act_order_id
  is '����id����������';
alter table T_ITEM_COMMENT
  add constraint PK_T_ITEM_COMMENT primary key (ID);

prompt
prompt Creating table T_ITEM_COMMENT_REPLY
prompt ===================================
prompt
create table T_ITEM_COMMENT_REPLY
(
  id          NUMBER(9) not null,
  content     VARCHAR2(500),
  update_time VARCHAR2(14),
  nickname    VARCHAR2(100),
  user_id     NUMBER(19),
  comment_id  NUMBER(9)
)
;
comment on table T_ITEM_COMMENT_REPLY
  is '��Ʒ�ظ���';
comment on column T_ITEM_COMMENT_REPLY.content
  is '�ظ�����';
comment on column T_ITEM_COMMENT_REPLY.update_time
  is '����ʱ��';
comment on column T_ITEM_COMMENT_REPLY.nickname
  is '�������ǳ�';
comment on column T_ITEM_COMMENT_REPLY.user_id
  is '������ID';
comment on column T_ITEM_COMMENT_REPLY.comment_id
  is '����id';
alter table T_ITEM_COMMENT_REPLY
  add constraint PK_T_ITEM_COMMENT_REPLY primary key (ID);

prompt
prompt Creating table T_ITEM_COMMENT_TEMP
prompt ==================================
prompt
create table T_ITEM_COMMENT_TEMP
(
  id            NUMBER(8) not null,
  content       VARCHAR2(500),
  type          NUMBER(1) default 1,
  question_type NUMBER(1),
  update_time   VARCHAR2(14),
  nickname      VARCHAR2(100),
  user_id       NUMBER(19),
  status        NUMBER(1),
  sale_id       NUMBER(8),
  audit_user    NUMBER(8),
  audit_time    VARCHAR2(14),
  rank          NUMBER(3),
  useful_num    NUMBER(5) default 0,
  useless_num   NUMBER(5) default 0,
  store_id      NUMBER(8),
  reply_comment VARCHAR2(500),
  reply_time    VARCHAR2(14)
)
;

prompt
prompt Creating table T_ITEM_EXT_PIC_TMP
prompt =================================
prompt
create table T_ITEM_EXT_PIC_TMP
(
  product_id    NUMBER,
  pic_path      VARCHAR2(150),
  switch_status NUMBER
)
;

prompt
prompt Creating table T_ITEM_EXT_PIC_TMP_0909
prompt ======================================
prompt
create table T_ITEM_EXT_PIC_TMP_0909
(
  product_id    NUMBER,
  pic_path      VARCHAR2(150),
  switch_status NUMBER
)
;

prompt
prompt Creating table T_ITEM_GROUP_LINK
prompt ================================
prompt
create table T_ITEM_GROUP_LINK
(
  id           NUMBER(8),
  item_org_id  NUMBER(8),
  item_sale_id NUMBER(8)
)
;

prompt
prompt Creating table T_ITEM_LOGISTICS_FEE
prompt ===================================
prompt
create table T_ITEM_LOGISTICS_FEE
(
  id      NUMBER(8) not null,
  sale_id NUMBER(8),
  qd_id   NUMBER(8),
  fee_num NUMBER(8,2)
)
;
comment on table T_ITEM_LOGISTICS_FEE
  is '�����˷�';
alter table T_ITEM_LOGISTICS_FEE
  add constraint PK_T_ITEM_LOGISTICS_FEE primary key (ID);

prompt
prompt Creating table T_ITEM_ORG
prompt =========================
prompt
create table T_ITEM_ORG
(
  id             NUMBER(8) not null,
  item_mode      NUMBER(1),
  type_id        NUMBER(8),
  group_flag     NUMBER(1),
  virtual_flag   NUMBER(1),
  virtual_type   NUMBER(1),
  name           VARCHAR2(100),
  short_name     VARCHAR2(100),
  warm_prompt    VARCHAR2(200),
  remark         CLOB,
  status         NUMBER(1),
  shop_user_id   NUMBER(8),
  shop_class     NUMBER(1),
  shop_id        NUMBER(8),
  update_time    VARCHAR2(14),
  brand          VARCHAR2(20),
  weight         NUMBER(8,2),
  create_time    VARCHAR2(14),
  create_user_id NUMBER(9),
  update_user_id NUMBER(9),
  market_content VARCHAR2(200)
)
;
comment on table T_ITEM_ORG
  is '��Ʒ�������Դ洢��';
comment on column T_ITEM_ORG.type_id
  is '��Ʒ����';
comment on column T_ITEM_ORG.group_flag
  is '�Ƿ����Ż��ײͣ����������N����Ʒ�����
0-��ͨ��Ʒ
1-�Ż��ײ�';
comment on column T_ITEM_ORG.virtual_flag
  is '�Ƿ�������Ʒ
0-��
1-��';
comment on column T_ITEM_ORG.virtual_type
  is '������Ʒ����
1-����
2-ֱ��';
comment on column T_ITEM_ORG.name
  is '��Ʒ����';
comment on column T_ITEM_ORG.short_name
  is '��Ʒ���';
comment on column T_ITEM_ORG.warm_prompt
  is '��ܰ��ʾ';
comment on column T_ITEM_ORG.remark
  is '��Ʒ����';
comment on column T_ITEM_ORG.status
  is '0--�ݸ�
1--�����
2--�����
3--���ͨ��
4--��˲���';
comment on column T_ITEM_ORG.shop_class
  is '1--ҵ���ŵ�
2--�̻�
3--������';
comment on column T_ITEM_ORG.shop_id
  is '�̻����';
comment on column T_ITEM_ORG.update_time
  is '����ʱ��';
comment on column T_ITEM_ORG.brand
  is 'Ʒ��';
comment on column T_ITEM_ORG.weight
  is '����';
comment on column T_ITEM_ORG.create_time
  is '����ʱ��';
comment on column T_ITEM_ORG.create_user_id
  is '������';
comment on column T_ITEM_ORG.update_user_id
  is '������';
comment on column T_ITEM_ORG.market_content
  is 'Ӫ����';
alter table T_ITEM_ORG
  add constraint PK_T_ITEM_ORG primary key (ID);

prompt
prompt Creating table T_ITEM_PARAM
prompt ===========================
prompt
create table T_ITEM_PARAM
(
  id          NUMBER(9) not null,
  type_id     NUMBER(9),
  item_id     NUMBER(9),
  param_id    NUMBER(9),
  param_key   VARCHAR2(20),
  param_value VARCHAR2(200),
  rank        NUMBER(8)
)
;
comment on column T_ITEM_PARAM.type_id
  is '������';
comment on column T_ITEM_PARAM.item_id
  is '��Ʒ���';
comment on column T_ITEM_PARAM.param_id
  is '������id (t_sys_type_item_param)';
comment on column T_ITEM_PARAM.param_key
  is '��������';
comment on column T_ITEM_PARAM.param_value
  is '������ֵ';
comment on column T_ITEM_PARAM.rank
  is '�������';
create index IDX_ITEM_PARAM_1 on T_ITEM_PARAM (ITEM_ID);
alter table T_ITEM_PARAM
  add constraint PK_ITEM_PARAM primary key (ID);

prompt
prompt Creating table T_ITEM_POST_AREA_LINK
prompt ====================================
prompt
create table T_ITEM_POST_AREA_LINK
(
  id            NUMBER(8) not null,
  sale_id       NUMBER(8),
  province_code VARCHAR2(10),
  city_code     VARCHAR2(10),
  region_code   VARCHAR2(10)
)
;
alter table T_ITEM_POST_AREA_LINK
  add constraint PK_T_ITEM_POST_AREA_LINK primary key (ID);

prompt
prompt Creating table T_ITEM_PRICE
prompt ===========================
prompt
create table T_ITEM_PRICE
(
  id              NUMBER(9) not null,
  province        VARCHAR2(20),
  area_code       VARCHAR2(20),
  store_id        NUMBER(9) not null,
  item_id         NUMBER(9),
  price_type_code VARCHAR2(20) not null,
  price           NUMBER(11,2) not null,
  remark          VARCHAR2(500),
  sale_id         NUMBER(9) not null
)
;
comment on table T_ITEM_PRICE
  is '�����Ʒ�ĸ���۸���Ϣ�����ݱ���ʽչʾ��';
comment on column T_ITEM_PRICE.id
  is 'ΨһID';
comment on column T_ITEM_PRICE.province
  is 'ʡ��';
comment on column T_ITEM_PRICE.area_code
  is '����';
comment on column T_ITEM_PRICE.store_id
  is '�̻�ID';
comment on column T_ITEM_PRICE.item_id
  is '��ƷID';
comment on column T_ITEM_PRICE.price_type_code
  is '��Դ:T_ITEM_PRICE_TYPE';
comment on column T_ITEM_PRICE.price
  is '��Ʒ�۸�';
comment on column T_ITEM_PRICE.remark
  is '��ע';
comment on column T_ITEM_PRICE.sale_id
  is '��Ʒid';
create index IDX_SALE_ID on T_ITEM_PRICE (SALE_ID);
alter table T_ITEM_PRICE
  add constraint PK_T_ITEM_PRICE primary key (ID);

prompt
prompt Creating table T_ITEM_PRICE_COIN_PAY_PROPORTI
prompt =============================================
prompt
create table T_ITEM_PRICE_COIN_PAY_PROPORTI
(
  id              NUMBER(9) not null,
  range           VARCHAR2(20) not null,
  item_type_id    NUMBER(9),
  cash_proportion NUMBER(11,2) not null,
  coin_proportion NUMBER(11,2) not null,
  remark          VARCHAR2(500)
)
;
comment on table T_ITEM_PRICE_COIN_PAY_PROPORTI
  is '�̳Ǳ�+�ֽ�=100%';
comment on column T_ITEM_PRICE_COIN_PAY_PROPORTI.id
  is 'ΨһID';
comment on column T_ITEM_PRICE_COIN_PAY_PROPORTI.range
  is 'ʹ�÷�Χ��ȫ��/�ֲ���';
comment on column T_ITEM_PRICE_COIN_PAY_PROPORTI.item_type_id
  is '��Ʒ����ID';
comment on column T_ITEM_PRICE_COIN_PAY_PROPORTI.cash_proportion
  is '�ֽ�֧������';
comment on column T_ITEM_PRICE_COIN_PAY_PROPORTI.coin_proportion
  is '�̳Ǳ�֧������';
comment on column T_ITEM_PRICE_COIN_PAY_PROPORTI.remark
  is '��ע';
alter table T_ITEM_PRICE_COIN_PAY_PROPORTI
  add constraint PK_T_ITEM_PRICE_COIN_PAY_PROPO primary key (ID);

prompt
prompt Creating table T_ITEM_PRICE_TYPE
prompt ================================
prompt
create table T_ITEM_PRICE_TYPE
(
  id              NUMBER(9) not null,
  province        VARCHAR2(20) not null,
  area_code       VARCHAR2(20) not null,
  price_type      VARCHAR2(20),
  price_type_code VARCHAR2(20) not null,
  remark          VARCHAR2(500)
)
;
comment on table T_ITEM_PRICE_TYPE
  is '�����Ʒ�������ͱ��뼰���ƣ�������Ʒʱ���Զ�̬������ҳ�棬¼�벻ͬ���͵ļ۸�';
comment on column T_ITEM_PRICE_TYPE.id
  is 'ΨһID';
comment on column T_ITEM_PRICE_TYPE.province
  is '��Ʒ��������ʡ��';
comment on column T_ITEM_PRICE_TYPE.area_code
  is '����';
comment on column T_ITEM_PRICE_TYPE.price_type
  is '�۸���������,�г���,�̳Ǽ�,�����';
comment on column T_ITEM_PRICE_TYPE.price_type_code
  is '�۸����ͱ���,���ݶ�����ϵ���еĻ�Ա����ȷ��';
comment on column T_ITEM_PRICE_TYPE.remark
  is '��ע';
create index IDX_ITEM_PRICE_TYPE_1 on T_ITEM_PRICE_TYPE (PRICE_TYPE_CODE);
alter table T_ITEM_PRICE_TYPE
  add constraint PK_T_ITEM_PRICE_TYPE primary key (ID);

prompt
prompt Creating table T_ITEM_PROPERTY
prompt ==============================
prompt
create table T_ITEM_PROPERTY
(
  id          NUMBER(8),
  item_id     NUMBER(8),
  property_id NUMBER(8),
  content     VARCHAR2(50),
  file_id     NUMBER(8),
  img_path    VARCHAR2(100)
)
;
comment on table T_ITEM_PROPERTY
  is '��Ʒ���ԣ�������ɫ���ߴ�ȣ��漰����Ϻͼ۸����';
comment on column T_ITEM_PROPERTY.item_id
  is '��Ӧt_item_org����ID�ֶ�';
comment on column T_ITEM_PROPERTY.property_id
  is '����t_sys_property��id';
comment on column T_ITEM_PROPERTY.file_id
  is '��Ӧt_sys_file����ID';
comment on column T_ITEM_PROPERTY.img_path
  is 'ͼƬ·��';

prompt
prompt Creating table T_ITEM_SALE
prompt ==========================
prompt
create table T_ITEM_SALE
(
  id                NUMBER(8) not null,
  org_id            NUMBER(8),
  sale_price_id     NUMBER(8),
  verify_code_type  NUMBER(1),
  send_code_mode    NUMBER(1),
  send_code_channel NUMBER(1),
  send_code_src     NUMBER(2),
  post_flag         NUMBER(1),
  sale_start_time   VARCHAR2(14),
  sale_stop_time    VARCHAR2(14),
  verify_start_time VARCHAR2(14),
  verify_stop_time  VARCHAR2(14),
  stock_num         NUMBER(19),
  user_per_buy_num  NUMBER(8),
  status            NUMBER(1),
  is_valid          NUMBER(1),
  sync_gy_flag      NUMBER(1),
  shop_class        NUMBER(1),
  store_id          NUMBER(8),
  market_price      NUMBER(9,2),
  item_mode         NUMBER(1),
  type_id           NUMBER(8),
  group_flag        NUMBER(1),
  virtual_flag      NUMBER(1),
  virtual_type      NUMBER(1),
  name              VARCHAR2(200),
  short_name        VARCHAR2(200),
  warm_prompt       VARCHAR2(200),
  remark            CLOB,
  shop_user_id      NUMBER(8),
  update_time       VARCHAR2(14),
  brand             VARCHAR2(20),
  weight            NUMBER(8,2),
  create_time       VARCHAR2(14),
  create_user_id    NUMBER(9),
  update_user_id    NUMBER(9),
  market_content    VARCHAR2(200),
  shop_price        NUMBER(9,2),
  img_path          VARCHAR2(200),
  fee_type          NUMBER(9),
  settle_price      NUMBER(9,2),
  verify_day        NUMBER(5),
  is_view           NUMBER(1) default 1,
  iseckill          NUMBER(2) default 0,
  cash_idgoods      NUMBER(1),
  coin_idgoods      NUMBER(1),
  score_idgoods     NUMBER(1),
  grounding_time    VARCHAR2(14),
  audit_time        VARCHAR2(14),
  iseckill_price    NUMBER(9,2)
)
;
comment on table T_ITEM_SALE
  is '������Ʒ�����������������۵���Ʒ��';
comment on column T_ITEM_SALE.org_id
  is '��t_item_orgƥ��';
comment on column T_ITEM_SALE.verify_code_type
  is '1-ά�� 2-��ά��';
comment on column T_ITEM_SALE.send_code_mode
  is '0-������ 1-���ն������� 2-������Ʒ��������';
comment on column T_ITEM_SALE.send_code_channel
  is '0-ƽ̨�Լ� 1-������ƽ̨ 2-������Ӧ��';
comment on column T_ITEM_SALE.send_code_src
  is '������뷽ѡ�������Ӧ�ã�����ֶ����� 10-85��C 11-������ ...';
comment on column T_ITEM_SALE.post_flag
  is '0-����Ҫ�������� 1-��Ҫ��������';
comment on column T_ITEM_SALE.sale_start_time
  is '������Ч��ʼʱ��';
comment on column T_ITEM_SALE.sale_stop_time
  is '������Ч����ʱ��';
comment on column T_ITEM_SALE.verify_start_time
  is '��֤��Ч��ʼʱ��';
comment on column T_ITEM_SALE.verify_stop_time
  is '��֤��Ч����ʱ��';
comment on column T_ITEM_SALE.stock_num
  is '��Ʒ�������';
comment on column T_ITEM_SALE.user_per_buy_num
  is '0������  �����û���������';
comment on column T_ITEM_SALE.status
  is '-1��ɾ��0-�ݸ� 1-����� 2-����� 3-���ͨ�� 4-��˲���';
comment on column T_ITEM_SALE.is_valid
  is '0-�¼� 1-�ϼ�';
comment on column T_ITEM_SALE.sync_gy_flag
  is '0-δͬ�� 1-��ͬ�� 2-����� 3-���ͨ��4-��˲���5-ɾ��';
comment on column T_ITEM_SALE.shop_class
  is '"1--ҵ���ŵ�2--�̻�3--������"';
comment on column T_ITEM_SALE.store_id
  is 'ƥ���t_store �̻�id';
comment on column T_ITEM_SALE.market_price
  is '�г���';
comment on column T_ITEM_SALE.item_mode
  is '��Ʒ����0--ʵ�� 1--������';
comment on column T_ITEM_SALE.type_id
  is '��Ʒ����';
comment on column T_ITEM_SALE.group_flag
  is '"�Ƿ����Ż��ײͣ����������N����Ʒ����� 0-��ͨ��Ʒ 1-�Ż��ײ�"';
comment on column T_ITEM_SALE.virtual_flag
  is '"�Ƿ�������Ʒ 0-�� 1-��"    (�����ô�)';
comment on column T_ITEM_SALE.virtual_type
  is '"������Ʒ���� 1-���� 2-ֱ��"';
comment on column T_ITEM_SALE.name
  is '��Ʒ����';
comment on column T_ITEM_SALE.short_name
  is '��Ʒ���';
comment on column T_ITEM_SALE.warm_prompt
  is '��ܰ��ʾ';
comment on column T_ITEM_SALE.remark
  is '��Ʒ����';
comment on column T_ITEM_SALE.shop_user_id
  is '�̻��û�id';
comment on column T_ITEM_SALE.update_time
  is '����ʱ��';
comment on column T_ITEM_SALE.brand
  is 'Ʒ��';
comment on column T_ITEM_SALE.weight
  is '����';
comment on column T_ITEM_SALE.create_time
  is '����ʱ��';
comment on column T_ITEM_SALE.create_user_id
  is '������';
comment on column T_ITEM_SALE.update_user_id
  is '������';
comment on column T_ITEM_SALE.market_content
  is 'Ӫ����';
comment on column T_ITEM_SALE.shop_price
  is '�̳Ǽ�';
comment on column T_ITEM_SALE.img_path
  is '����ͼ·��';
comment on column T_ITEM_SALE.fee_type
  is '��Ӧt_sys_fee��id';
comment on column T_ITEM_SALE.settle_price
  is '�����';
comment on column T_ITEM_SALE.verify_day
  is '��֤����';
comment on column T_ITEM_SALE.is_view
  is '��Ʒ�Ƿ���ʾ 0������ʾ��1��ʾ';
comment on column T_ITEM_SALE.iseckill
  is '�Ƿ���ɱ�� 0����ɱ ��1��ɱ��';
comment on column T_ITEM_SALE.cash_idgoods
  is '��Ʒ֧����ʽΪ�ֽ� ��0��֧�֣� 1֧�֡�';
comment on column T_ITEM_SALE.coin_idgoods
  is '��Ʒ֧����ʽΪ�̳Ǳ� ��0��֧�֣� 1֧�֡�';
comment on column T_ITEM_SALE.score_idgoods
  is '��Ʒ֧����ʽΪ���֣�0��֧�֣� 1֧�֡�';
comment on column T_ITEM_SALE.grounding_time
  is '�ϼ�ʱ��';
comment on column T_ITEM_SALE.audit_time
  is '���ʱ��';
comment on column T_ITEM_SALE.iseckill_price
  is '��ɱ�۸�';
create index IDX_ITEM_SALE_TYPE on T_ITEM_SALE (TYPE_ID);
create index IDX_STORE_ID on T_ITEM_SALE (STORE_ID);
alter table T_ITEM_SALE
  add constraint PK_T_ITEM_SALE primary key (ID);

prompt
prompt Creating table T_ITEM_SALE_0909
prompt ===============================
prompt
create table T_ITEM_SALE_0909
(
  id                NUMBER(8) not null,
  org_id            NUMBER(8),
  sale_price_id     NUMBER(8),
  verify_code_type  NUMBER(1),
  send_code_mode    NUMBER(1),
  send_code_channel NUMBER(1),
  send_code_src     NUMBER(2),
  post_flag         NUMBER(1),
  sale_start_time   VARCHAR2(14),
  sale_stop_time    VARCHAR2(14),
  verify_start_time VARCHAR2(14),
  verify_stop_time  VARCHAR2(14),
  stock_num         NUMBER(19),
  user_per_buy_num  NUMBER(8),
  status            NUMBER(1),
  is_valid          NUMBER(1),
  sync_gy_flag      NUMBER(1),
  shop_class        NUMBER(1),
  store_id          NUMBER(8),
  market_price      NUMBER(9,2),
  item_mode         NUMBER(1),
  type_id           NUMBER(8),
  group_flag        NUMBER(1),
  virtual_flag      NUMBER(1),
  virtual_type      NUMBER(1),
  name              VARCHAR2(200),
  short_name        VARCHAR2(200),
  warm_prompt       VARCHAR2(200),
  remark            CLOB,
  shop_user_id      NUMBER(8),
  update_time       VARCHAR2(14),
  brand             VARCHAR2(20),
  weight            NUMBER(8,2),
  create_time       VARCHAR2(14),
  create_user_id    NUMBER(9),
  update_user_id    NUMBER(9),
  market_content    VARCHAR2(200),
  shop_price        NUMBER(9,2),
  img_path          VARCHAR2(200),
  fee_type          NUMBER(9),
  settle_price      NUMBER(9,2),
  verify_day        NUMBER(5),
  is_view           NUMBER(1) default 1,
  iseckill          NUMBER(2) default 0,
  cash_idgoods      NUMBER(1),
  coin_idgoods      NUMBER(1),
  score_idgoods     NUMBER(1),
  grounding_time    VARCHAR2(14),
  audit_time        VARCHAR2(14),
  iseckill_price    NUMBER(9,2)
)
;

prompt
prompt Creating table T_ITEM_SALE_0909_FULL
prompt ====================================
prompt
create table T_ITEM_SALE_0909_FULL
(
  id                NUMBER(8) not null,
  org_id            NUMBER(8),
  sale_price_id     NUMBER(8),
  verify_code_type  NUMBER(1),
  send_code_mode    NUMBER(1),
  send_code_channel NUMBER(1),
  send_code_src     NUMBER(2),
  post_flag         NUMBER(1),
  sale_start_time   VARCHAR2(14),
  sale_stop_time    VARCHAR2(14),
  verify_start_time VARCHAR2(14),
  verify_stop_time  VARCHAR2(14),
  stock_num         NUMBER(19),
  user_per_buy_num  NUMBER(8),
  status            NUMBER(1),
  is_valid          NUMBER(1),
  sync_gy_flag      NUMBER(1),
  shop_class        NUMBER(1),
  store_id          NUMBER(8),
  market_price      NUMBER(9,2),
  item_mode         NUMBER(1),
  type_id           NUMBER(8),
  group_flag        NUMBER(1),
  virtual_flag      NUMBER(1),
  virtual_type      NUMBER(1),
  name              VARCHAR2(200),
  short_name        VARCHAR2(200),
  warm_prompt       VARCHAR2(200),
  remark            CLOB,
  shop_user_id      NUMBER(8),
  update_time       VARCHAR2(14),
  brand             VARCHAR2(20),
  weight            NUMBER(8,2),
  create_time       VARCHAR2(14),
  create_user_id    NUMBER(9),
  update_user_id    NUMBER(9),
  market_content    VARCHAR2(200),
  shop_price        NUMBER(9,2),
  img_path          VARCHAR2(200),
  fee_type          NUMBER(9),
  settle_price      NUMBER(9,2),
  verify_day        NUMBER(5),
  is_view           NUMBER(1),
  iseckill          NUMBER(2),
  cash_idgoods      NUMBER(1),
  coin_idgoods      NUMBER(1),
  score_idgoods     NUMBER(1),
  grounding_time    VARCHAR2(14),
  audit_time        VARCHAR2(14),
  iseckill_price    NUMBER(9,2)
)
;

prompt
prompt Creating table T_ITEM_SALE_1
prompt ============================
prompt
create table T_ITEM_SALE_1
(
  id                NUMBER(8) not null,
  org_id            NUMBER(8),
  sale_price_id     NUMBER(8),
  verify_code_type  NUMBER(1),
  send_code_mode    NUMBER(1),
  send_code_channel NUMBER(1),
  send_code_src     NUMBER(2),
  post_flag         NUMBER(1),
  sale_start_time   VARCHAR2(14),
  sale_stop_time    VARCHAR2(14),
  verify_start_time VARCHAR2(14),
  verify_stop_time  VARCHAR2(14),
  stock_num         NUMBER(8),
  user_per_buy_num  NUMBER(8),
  status            NUMBER(1),
  is_valid          NUMBER(1),
  sync_gy_flag      NUMBER(1),
  shop_class        NUMBER(1),
  store_id          NUMBER(8),
  market_price      NUMBER(9,2),
  item_mode         NUMBER(1),
  type_id           NUMBER(8),
  group_flag        NUMBER(1),
  virtual_flag      NUMBER(1),
  virtual_type      NUMBER(1),
  name              VARCHAR2(200),
  short_name        VARCHAR2(100),
  warm_prompt       VARCHAR2(200),
  remark            CLOB,
  shop_user_id      NUMBER(8),
  update_time       VARCHAR2(14),
  brand             VARCHAR2(20),
  weight            NUMBER(8,2),
  create_time       VARCHAR2(14),
  create_user_id    NUMBER(9),
  update_user_id    NUMBER(9),
  market_content    VARCHAR2(200),
  shop_price        NUMBER(9,2),
  img_path          VARCHAR2(200)
)
;

prompt
prompt Creating table T_ITEM_SALE_ADD_0910
prompt ===================================
prompt
create table T_ITEM_SALE_ADD_0910
(
  id                NUMBER(8) not null,
  org_id            NUMBER(8),
  sale_price_id     NUMBER(8),
  verify_code_type  NUMBER(1),
  send_code_mode    NUMBER(1),
  send_code_channel NUMBER(1),
  send_code_src     NUMBER(2),
  post_flag         NUMBER(1),
  sale_start_time   VARCHAR2(14),
  sale_stop_time    VARCHAR2(14),
  verify_start_time VARCHAR2(14),
  verify_stop_time  VARCHAR2(14),
  stock_num         NUMBER(19),
  user_per_buy_num  NUMBER(8),
  status            NUMBER(1),
  is_valid          NUMBER(1),
  sync_gy_flag      NUMBER(1),
  shop_class        NUMBER(1),
  store_id          NUMBER(8),
  market_price      NUMBER(9,2),
  item_mode         NUMBER(1),
  type_id           NUMBER(8),
  group_flag        NUMBER(1),
  virtual_flag      NUMBER(1),
  virtual_type      NUMBER(1),
  name              VARCHAR2(200),
  short_name        VARCHAR2(200),
  warm_prompt       VARCHAR2(200),
  remark            CLOB,
  shop_user_id      NUMBER(8),
  update_time       VARCHAR2(14),
  brand             VARCHAR2(20),
  weight            NUMBER(8,2),
  create_time       VARCHAR2(14),
  create_user_id    NUMBER(9),
  update_user_id    NUMBER(9),
  market_content    VARCHAR2(200),
  shop_price        NUMBER(9,2),
  img_path          VARCHAR2(200),
  fee_type          NUMBER(9),
  settle_price      NUMBER(9,2),
  verify_day        NUMBER(5),
  is_view           NUMBER(1),
  iseckill          NUMBER(2),
  cash_idgoods      NUMBER(1),
  coin_idgoods      NUMBER(1),
  score_idgoods     NUMBER(1),
  grounding_time    VARCHAR2(14),
  audit_time        VARCHAR2(14),
  iseckill_price    NUMBER(9,2)
)
;

prompt
prompt Creating table T_ITEM_SALE_AREA_LINK
prompt ====================================
prompt
create table T_ITEM_SALE_AREA_LINK
(
  id            NUMBER(8) not null,
  sale_id       NUMBER(8),
  province_code VARCHAR2(10),
  city_code     VARCHAR2(10),
  region_code   VARCHAR2(10)
)
;
create index IDX_ITEM_SALE_AREA_LINK_1 on T_ITEM_SALE_AREA_LINK (SALE_ID);
alter table T_ITEM_SALE_AREA_LINK
  add constraint PK_T_ITEM_SALE_AREA_LINK primary key (ID);

prompt
prompt Creating table T_ITEM_SALE_EXT
prompt ==============================
prompt
create table T_ITEM_SALE_EXT
(
  id                 NUMBER(9) not null,
  sale_id            NUMBER(8),
  sale_num           NUMBER(8) default 0,
  click_num          NUMBER(8) default 0,
  comment_num        NUMBER(8) default 0,
  user_num           NUMBER(8) default 0,
  collect_num        NUMBER(8) default 0,
  rank               NUMBER(9,2) default 0,
  logistics_fee      NUMBER(9,2) default 0,
  logistics_fee_type NUMBER(1) default 0
)
;
comment on table T_ITEM_SALE_EXT
  is '���ڷ�����Ʒ��ĸ����������Ա�';
comment on column T_ITEM_SALE_EXT.sale_id
  is '��t_item_saleƥ��';
comment on column T_ITEM_SALE_EXT.sale_num
  is '��������';
comment on column T_ITEM_SALE_EXT.click_num
  is '������';
comment on column T_ITEM_SALE_EXT.comment_num
  is '������';
comment on column T_ITEM_SALE_EXT.user_num
  is '��������';
comment on column T_ITEM_SALE_EXT.collect_num
  is '�ղ�����';
comment on column T_ITEM_SALE_EXT.rank
  is '��Ʒ����';
comment on column T_ITEM_SALE_EXT.logistics_fee
  is '�����˷�';
comment on column T_ITEM_SALE_EXT.logistics_fee_type
  is '�������㷽ʽ 0-���ۼ�
1-������';
create index IDX_ITEM_SALE_EXT_1 on T_ITEM_SALE_EXT (SALE_ID);
alter table T_ITEM_SALE_EXT
  add constraint PK_T_ITEM_SALE_EXT primary key (ID);

prompt
prompt Creating table T_ITEM_SALE_EXT_0910
prompt ===================================
prompt
create table T_ITEM_SALE_EXT_0910
(
  id                 NUMBER(9) not null,
  sale_id            NUMBER(8),
  sale_num           NUMBER(8),
  click_num          NUMBER(8),
  comment_num        NUMBER(8),
  user_num           NUMBER(8),
  collect_num        NUMBER(8),
  rank               NUMBER(9,2),
  logistics_fee      NUMBER(9,2),
  logistics_fee_type NUMBER(1)
)
;

prompt
prompt Creating table T_ITEM_SALE_SHOP_LINK
prompt ====================================
prompt
create table T_ITEM_SALE_SHOP_LINK
(
  id       NUMBER(8) not null,
  sale_id  NUMBER(8),
  store_id NUMBER(8),
  shop_id  NUMBER(8)
)
;
comment on column T_ITEM_SALE_SHOP_LINK.shop_id
  is '�����ȫ�̻��ŵ궼����ʹ�ã���ֻ���̻�ID����ҵ���ŵ�ID��������Ϊ��';
alter table T_ITEM_SALE_SHOP_LINK
  add constraint PK_T_ITEM_SALE_SHOP_LINK primary key (ID);

prompt
prompt Creating table T_ITEM_SALE_TMP
prompt ==============================
prompt
create table T_ITEM_SALE_TMP
(
  id                 NUMBER(8) not null,
  org_id             NUMBER(8),
  sale_price_id      NUMBER(8),
  verify_code_type   NUMBER(1),
  send_code_mode     NUMBER(1),
  send_code_channel  NUMBER(1),
  send_code_src      NUMBER(2),
  post_flag          NUMBER(1),
  sale_start_time    VARCHAR2(14),
  sale_stop_time     VARCHAR2(14),
  verify_start_time  VARCHAR2(14),
  verify_stop_time   VARCHAR2(14),
  stock_num          NUMBER(19),
  user_per_buy_num   NUMBER(8),
  status             NUMBER(1),
  is_valid           NUMBER(1),
  sync_gy_flag       NUMBER(1),
  shop_class         NUMBER(1),
  store_id           NUMBER(8),
  market_price       NUMBER(9,2),
  item_mode          NUMBER(1),
  type_id            NUMBER(8),
  group_flag         NUMBER(1),
  virtual_flag       NUMBER(1),
  virtual_type       NUMBER(1),
  name               VARCHAR2(200),
  short_name         VARCHAR2(100),
  warm_prompt        VARCHAR2(200),
  remark             CLOB,
  shop_user_id       NUMBER(8),
  update_time        VARCHAR2(14),
  brand              VARCHAR2(20),
  weight             NUMBER(8,2),
  create_time        VARCHAR2(14),
  create_user_id     NUMBER(9),
  update_user_id     NUMBER(9),
  market_content     VARCHAR2(200),
  shop_price         NUMBER(9,2),
  img_path           VARCHAR2(200),
  fee_type           NUMBER(9),
  settle_price       NUMBER(9,2),
  verify_day         NUMBER(5),
  xw_main_category   VARCHAR2(40),
  xw_settlement_type VARCHAR2(10)
)
;

prompt
prompt Creating table T_ITEM_SALE_USER_AREA_LINK
prompt =========================================
prompt
create table T_ITEM_SALE_USER_AREA_LINK
(
  id            NUMBER(8) not null,
  sale_id       NUMBER(8),
  province_code VARCHAR2(10),
  city_code     VARCHAR2(10),
  region_code   VARCHAR2(10)
)
;
create index IDX_SALE_USER_AREA_LINK_1 on T_ITEM_SALE_USER_AREA_LINK (SALE_ID);
create index IDX_SALE_USER_AREA_LINK_2 on T_ITEM_SALE_USER_AREA_LINK (SALE_ID, REGION_CODE);
alter table T_ITEM_SALE_USER_AREA_LINK
  add constraint PK_T_ITEM_SALE_USER_AREA_LINK primary key (ID);

prompt
prompt Creating table T_ITEM_SALE_USER_LEVEL_LINK
prompt ==========================================
prompt
create table T_ITEM_SALE_USER_LEVEL_LINK
(
  id         NUMBER(8) not null,
  sale_id    NUMBER(8),
  user_level VARCHAR2(4)
)
;
create index IDX_SALE_USER_LEVEL_LINK_1 on T_ITEM_SALE_USER_LEVEL_LINK (SALE_ID);
alter table T_ITEM_SALE_USER_LEVEL_LINK
  add constraint PK_T_ITEM_SALE_USER_LEVEL_LINK primary key (ID);

prompt
prompt Creating table T_ITEM_TAG
prompt =========================
prompt
create table T_ITEM_TAG
(
  id      NUMBER(8) not null,
  item_id NUMBER(8),
  tag     VARCHAR2(20)
)
;
comment on table T_ITEM_TAG
  is '�����Ʒ��ǩ��ʶ��������';
create index IDX_ITEM_TAG_1 on T_ITEM_TAG (ITEM_ID);
alter table T_ITEM_TAG
  add constraint PK_T_ITEM_TAG primary key (ID);

prompt
prompt Creating table T_ITEM_VERIFY_SHOP_LINK
prompt ======================================
prompt
create table T_ITEM_VERIFY_SHOP_LINK
(
  id       NUMBER(8) not null,
  sale_id  NUMBER(8),
  store_id NUMBER(8),
  shop_id  NUMBER(8)
)
;
comment on column T_ITEM_VERIFY_SHOP_LINK.shop_id
  is '�����ȫ�̻��ŵ궼������֤����ֻ���̻�ID����ҵ���ŵ�ID��������Ϊ��';
alter table T_ITEM_VERIFY_SHOP_LINK
  add constraint PK_T_ITEM_VERIFY_SHOP_LINK primary key (ID);

prompt
prompt Creating table T_LIMIT_PURCH_TMP
prompt ================================
prompt
create table T_LIMIT_PURCH_TMP
(
  product_id   NUMBER,
  limite_count NUMBER
)
;

prompt
prompt Creating table T_LOTTERY_ACTIVE
prompt ===============================
prompt
create table T_LOTTERY_ACTIVE
(
  id               NUMBER(8) not null,
  name             VARCHAR2(100),
  start_time       VARCHAR2(14),
  stop_time        VARCHAR2(14),
  active_type      NUMBER(1),
  active_desc      VARCHAR2(200),
  unhit            NUMBER(1),
  unhit_msg        VARCHAR2(50),
  create_time      VARCHAR2(14),
  create_member_id NUMBER(8),
  status           NUMBER(1),
  hit_limit        NUMBER(2) default -1
)
;
comment on table T_LOTTERY_ACTIVE
  is '�齱���';
comment on column T_LOTTERY_ACTIVE.name
  is '�����';
comment on column T_LOTTERY_ACTIVE.start_time
  is '���ʼʱ��';
comment on column T_LOTTERY_ACTIVE.stop_time
  is '�����ʱ��';
comment on column T_LOTTERY_ACTIVE.active_type
  is '�����';
comment on column T_LOTTERY_ACTIVE.active_desc
  is '�����';
comment on column T_LOTTERY_ACTIVE.unhit
  is 'δ�н�����(Ԥ��)';
comment on column T_LOTTERY_ACTIVE.unhit_msg
  is 'δ�н���ʾ��';
comment on column T_LOTTERY_ACTIVE.create_time
  is '����ʱ��';
comment on column T_LOTTERY_ACTIVE.create_member_id
  is '������ID';
comment on column T_LOTTERY_ACTIVE.status
  is '�״̬:0�ݸ壬1����У�2���ͨ����3����';
comment on column T_LOTTERY_ACTIVE.hit_limit
  is '�н��������ƣ�-1��ʾ�����ƴ���';
alter table T_LOTTERY_ACTIVE
  add constraint PK_T_LOTTERY_ACTIVE primary key (ID);

prompt
prompt Creating table T_LOTTERY_ACTIVE_CONF
prompt ====================================
prompt
create table T_LOTTERY_ACTIVE_CONF
(
  id        NUMBER(8) not null,
  active_id NUMBER(8),
  key       VARCHAR2(400),
  value     VARCHAR2(400)
)
;
comment on table T_LOTTERY_ACTIVE_CONF
  is '����ñ�';
comment on column T_LOTTERY_ACTIVE_CONF.active_id
  is '�����ID';
comment on column T_LOTTERY_ACTIVE_CONF.key
  is '�����key-value��ʽ��š�';
comment on column T_LOTTERY_ACTIVE_CONF.value
  is '�����key-value��ʽ��š�';
alter table T_LOTTERY_ACTIVE_CONF
  add constraint PK_T_LOTTERY_ACTIVE_CONF primary key (ID);

prompt
prompt Creating table T_LOTTERY_LOG
prompt ============================
prompt
create table T_LOTTERY_LOG
(
  id        NUMBER(8) not null,
  active_id NUMBER(8),
  target_id VARCHAR2(21),
  content   VARCHAR2(200),
  hit_time  VARCHAR2(14),
  prize_id  NUMBER(8)
)
;
comment on table T_LOTTERY_LOG
  is '�齱��־��';
comment on column T_LOTTERY_LOG.active_id
  is '�ID';
comment on column T_LOTTERY_LOG.target_id
  is '�н��ֻ���';
comment on column T_LOTTERY_LOG.content
  is '�н�����';
comment on column T_LOTTERY_LOG.hit_time
  is '�н�ʱ��';
comment on column T_LOTTERY_LOG.prize_id
  is '��ƷID';
alter table T_LOTTERY_LOG
  add constraint PK_T_LOTTERY_LOG primary key (ID);

prompt
prompt Creating table T_LOTTERY_PRIZE
prompt ==============================
prompt
create table T_LOTTERY_PRIZE
(
  id              NUMBER(8) not null,
  active_id       NUMBER(8),
  hit_level       NUMBER(2),
  hit_probability VARCHAR2(5),
  hit_limit       NUMBER(2),
  hit_msg         VARCHAR2(100),
  numbers         NUMBER(6),
  name            VARCHAR2(200),
  description     VARCHAR2(200),
  position        VARCHAR2(20),
  used            NUMBER(8)
)
;
comment on table T_LOTTERY_PRIZE
  is '��Ʒ��';
comment on column T_LOTTERY_PRIZE.active_id
  is '�����ID';
comment on column T_LOTTERY_PRIZE.hit_level
  is '������ţ���Ʒ�ȼ���';
comment on column T_LOTTERY_PRIZE.hit_probability
  is '�н�����15,35,55)';
comment on column T_LOTTERY_PRIZE.hit_limit
  is 'ÿ���н����ƴ���';
comment on column T_LOTTERY_PRIZE.hit_msg
  is '�н���ʾ��';
comment on column T_LOTTERY_PRIZE.numbers
  is '��Ʒ����';
comment on column T_LOTTERY_PRIZE.name
  is '��Ʒ����';
comment on column T_LOTTERY_PRIZE.description
  is '��ע';
comment on column T_LOTTERY_PRIZE.position
  is '�н�λ��';
comment on column T_LOTTERY_PRIZE.used
  is 'ʹ�ô���';
alter table T_LOTTERY_PRIZE
  add constraint PK_T_LOTTERY_PRIZE primary key (ID);

prompt
prompt Creating table T_LOTTERY_TARGET
prompt ===============================
prompt
create table T_LOTTERY_TARGET
(
  id        NUMBER(8) not null,
  active_id NUMBER(8),
  phone     VARCHAR2(13),
  num_had   NUMBER(2),
  num_could NUMBER(2)
)
;
comment on table T_LOTTERY_TARGET
  is '�齱Ŀ���';
comment on column T_LOTTERY_TARGET.active_id
  is '�����ID';
comment on column T_LOTTERY_TARGET.phone
  is '�ֻ�����';
comment on column T_LOTTERY_TARGET.num_had
  is '��������н�����';
comment on column T_LOTTERY_TARGET.num_could
  is '������н�����';
alter table T_LOTTERY_TARGET
  add constraint PK_T_LOTTERY_TARGET primary key (ID);

prompt
prompt Creating table T_MARKET_AUCTION
prompt ===============================
prompt
create table T_MARKET_AUCTION
(
  goods_no      NUMBER(20) not null,
  floor_no      VARCHAR2(5) not null,
  operator_id   NUMBER(12) not null,
  auction_price NUMBER(12,2) not null,
  auction_time  TIMESTAMP(6) not null,
  goods_name    VARCHAR2(50),
  id            NUMBER(9) default 0 not null
)
;
comment on table T_MARKET_AUCTION
  is '���ĳ��ۼ�¼';
comment on column T_MARKET_AUCTION.goods_no
  is '������Ʒ���';
comment on column T_MARKET_AUCTION.floor_no
  is '�Ӽ�¥��';
comment on column T_MARKET_AUCTION.operator_id
  is '�����˱��';
comment on column T_MARKET_AUCTION.auction_price
  is '���۽��';
comment on column T_MARKET_AUCTION.auction_time
  is '����ʱ��';
comment on column T_MARKET_AUCTION.goods_name
  is '��Ʒ��';
comment on column T_MARKET_AUCTION.id
  is '���';
alter table T_MARKET_AUCTION
  add constraint PK_ID primary key (ID);

prompt
prompt Creating table T_MARKET_BLACKLIST
prompt =================================
prompt
create table T_MARKET_BLACKLIST
(
  id          NUMBER(8) not null,
  user_id     VARCHAR2(8),
  mobile      VARCHAR2(13),
  mistaketime DATE not null,
  reason      VARCHAR2(100),
  status      VARCHAR2(1),
  type        VARCHAR2(10) not null
)
;
comment on table T_MARKET_BLACKLIST
  is '������';
comment on column T_MARKET_BLACKLIST.id
  is '���';
comment on column T_MARKET_BLACKLIST.user_id
  is '�û�ID';
comment on column T_MARKET_BLACKLIST.mobile
  is '�ֻ�';
comment on column T_MARKET_BLACKLIST.mistaketime
  is 'Υ��ʱ��';
comment on column T_MARKET_BLACKLIST.reason
  is 'Υ��ԭ��';
comment on column T_MARKET_BLACKLIST.status
  is '״̬';
comment on column T_MARKET_BLACKLIST.type
  is 'Υ������� 1Ϊ���ģ�2Ϊ��ɱ';
alter table T_MARKET_BLACKLIST
  add primary key (ID);

prompt
prompt Creating table T_MARKET_CHANNEL
prompt ===============================
prompt
create table T_MARKET_CHANNEL
(
  id         NUMBER(20) not null,
  goods_no   NUMBER(20) not null,
  goods_name NVARCHAR2(50) not null,
  position   NVARCHAR2(2) not null
)
;
comment on table T_MARKET_CHANNEL
  is '��ɱƵ����';
comment on column T_MARKET_CHANNEL.id
  is '���';
comment on column T_MARKET_CHANNEL.goods_no
  is '��ɱ��Ʒ���';
comment on column T_MARKET_CHANNEL.goods_name
  is '��ɱ��Ʒ����';
comment on column T_MARKET_CHANNEL.position
  is '��ɱƵ��λ��';
alter table T_MARKET_CHANNEL
  add constraint PK_T_MARKET_CHANNEL primary key (ID);

prompt
prompt Creating table T_MARKET_CONTENT
prompt ===============================
prompt
create table T_MARKET_CONTENT
(
  id               VARCHAR2(2) not null,
  title            VARCHAR2(20),
  last_modify_time VARCHAR2(20),
  content          CLOB
)
;
comment on table T_MARKET_CONTENT
  is '�����İ���';
comment on column T_MARKET_CONTENT.id
  is '���';
comment on column T_MARKET_CONTENT.title
  is '�İ�����';
comment on column T_MARKET_CONTENT.last_modify_time
  is '������ʱ��';
comment on column T_MARKET_CONTENT.content
  is '�İ�����';
alter table T_MARKET_CONTENT
  add primary key (ID);

prompt
prompt Creating table T_MARKET_GOODS
prompt =============================
prompt
create table T_MARKET_GOODS
(
  goods_no            NUMBER(20) not null,
  goods_name          VARCHAR2(50) not null,
  goods_photo_path    VARCHAR2(250) not null,
  marche_price        NUMBER(12,2) not null,
  time_range          VARCHAR2(15) not null,
  product_id          VARCHAR2(20),
  date_range          DATE,
  price_range         NUMBER(12,2),
  margin_flag         VARCHAR2(2) default '1',
  vip_margin_flag     VARCHAR2(2) default '1',
  status              VARCHAR2(2) default 1,
  auction_type        VARCHAR2(2) default 1,
  min_auction_time    VARCHAR2(3) default 0,
  delay_time          VARCHAR2(3) default 0,
  end_time            VARCHAR2(8) default 0,
  account_for_auction CLOB,
  goods_description   CLOB,
  shop_goods_id       NUMBER(8),
  goods_small_pic_a   VARCHAR2(250),
  goods_small_pic_b   VARCHAR2(250),
  goods_small_pic_c   VARCHAR2(250),
  start_price         NUMBER(12,2) default 0,
  check_status        VARCHAR2(2) default 0,
  check_content       VARCHAR2(600),
  check_man           VARCHAR2(20),
  check_time          VARCHAR2(20)
)
;
comment on table T_MARKET_GOODS
  is '������Ʒ��';
comment on column T_MARKET_GOODS.goods_no
  is '��Ʒ���';
comment on column T_MARKET_GOODS.goods_name
  is '��Ʒ��';
comment on column T_MARKET_GOODS.goods_photo_path
  is '��ͼƬ·��';
comment on column T_MARKET_GOODS.marche_price
  is '�г���';
comment on column T_MARKET_GOODS.time_range
  is '����ʱ��';
comment on column T_MARKET_GOODS.product_id
  is '��֤����';
comment on column T_MARKET_GOODS.date_range
  is '��������';
comment on column T_MARKET_GOODS.price_range
  is '�Ӽ۷���';
comment on column T_MARKET_GOODS.margin_flag
  is '��ͨ��Ա�Ƿ���Ҫ����֤��0����Ҫ��1������Ҫ';
comment on column T_MARKET_GOODS.vip_margin_flag
  is 'VIP��Ա�Ƿ���Ҫ����֤��0����Ҫ��1������Ҫ';
comment on column T_MARKET_GOODS.status
  is '��Ч״̬��0���ϼܣ�1���¼�';
comment on column T_MARKET_GOODS.auction_type
  is '1����ʱ���ģ�2����ʱ����';
comment on column T_MARKET_GOODS.min_auction_time
  is '��ʱ���Ļ���ʱ�������ӣ�';
comment on column T_MARKET_GOODS.delay_time
  is '��ʱʱ�������ӣ�';
comment on column T_MARKET_GOODS.end_time
  is '�����ʱ��';
comment on column T_MARKET_GOODS.account_for_auction
  is '����';
comment on column T_MARKET_GOODS.goods_description
  is '��Ʒ����';
comment on column T_MARKET_GOODS.shop_goods_id
  is '��Ʒ����';
comment on column T_MARKET_GOODS.goods_small_pic_a
  is '�ֻ�ͼƬ·��';
comment on column T_MARKET_GOODS.goods_small_pic_b
  is '�ֻ�ͼƬ·��';
comment on column T_MARKET_GOODS.goods_small_pic_c
  is '�ֻ�ͼƬ·��';
comment on column T_MARKET_GOODS.start_price
  is '���ļ�';
comment on column T_MARKET_GOODS.check_status
  is '0-δ��ˣ�1-����ˣ�2-���ͨ���� 3-��˲�ͨ��';
comment on column T_MARKET_GOODS.check_content
  is '������';
comment on column T_MARKET_GOODS.check_man
  is '�����';
comment on column T_MARKET_GOODS.check_time
  is '���ʱ��';
alter table T_MARKET_GOODS
  add constraint PK_GOODS primary key (GOODS_NO);

prompt
prompt Creating table T_MARKET_ORDER
prompt =============================
prompt
create table T_MARKET_ORDER
(
  id               NUMBER(9) not null,
  product_id       VARCHAR2(32) not null,
  auction_quantity INTEGER not null,
  auction_price    NUMBER(13,2) not null,
  auction_time     TIMESTAMP(6),
  status           INTEGER,
  operator_id      VARCHAR2(32),
  product_name     VARCHAR2(254),
  product_price    NUMBER(13,2),
  goods_no         VARCHAR2(20),
  orderid          VARCHAR2(64),
  create_time      TIMESTAMP(6),
  update_time      TIMESTAMP(6),
  del_flag         INTEGER default 0 not null
)
;
comment on table T_MARKET_ORDER
  is '���Ķ�����';
comment on column T_MARKET_ORDER.id
  is '���';
comment on column T_MARKET_ORDER.product_id
  is '��ƷID';
comment on column T_MARKET_ORDER.auction_quantity
  is '������Ʒ����';
comment on column T_MARKET_ORDER.auction_price
  is '���ļ�';
comment on column T_MARKET_ORDER.auction_time
  is '����ʱ��';
comment on column T_MARKET_ORDER.status
  is '0-δ֧����δ���ɶ���  1-֧���ɹ�   2-�ѹ���  3-�����ɶ���';
comment on column T_MARKET_ORDER.operator_id
  is '�ĵ��߿���';
comment on column T_MARKET_ORDER.product_name
  is '��Ʒ����';
comment on column T_MARKET_ORDER.product_price
  is '��Ʒ����';
comment on column T_MARKET_ORDER.goods_no
  is '������Ʒ��';
comment on column T_MARKET_ORDER.orderid
  is '������ţ����ڸ��ݶ�����״̬���¾�����Ʒ��״̬';
comment on column T_MARKET_ORDER.create_time
  is '��¼����ʱ��';
comment on column T_MARKET_ORDER.update_time
  is '��¼����ʱ��';
comment on column T_MARKET_ORDER.del_flag
  is 'ɾ����־��0-δɾ�� 1-��ɾ��';
alter table T_MARKET_ORDER
  add constraint PK_ORDER_ID primary key (ID);

prompt
prompt Creating table T_MARKET_PRODUCT
prompt ===============================
prompt
create table T_MARKET_PRODUCT
(
  id           VARCHAR2(4) not null,
  product_name VARCHAR2(200),
  list_price   NUMBER(12,2),
  sc_price     NUMBER(12,2),
  product_pic  VARCHAR2(50),
  product_link VARCHAR2(150)
)
;
comment on table T_MARKET_PRODUCT
  is '������Ʒ���';
comment on column T_MARKET_PRODUCT.id
  is '���';
comment on column T_MARKET_PRODUCT.product_name
  is '��Ʒ��';
comment on column T_MARKET_PRODUCT.list_price
  is '�г���';
comment on column T_MARKET_PRODUCT.sc_price
  is '�̳Ǽ�';
comment on column T_MARKET_PRODUCT.product_pic
  is '��ƷͼƬ·��';
comment on column T_MARKET_PRODUCT.product_link
  is '��Ʒҳ������';
alter table T_MARKET_PRODUCT
  add primary key (ID);

prompt
prompt Creating table T_MARKET_REMIND
prompt ==============================
prompt
create table T_MARKET_REMIND
(
  id         NUMBER(8) not null,
  mobile     VARCHAR2(11),
  goods_no   NUMBER(8),
  status     VARCHAR2(2) default 0,
  begin_time TIMESTAMP(6),
  type       VARCHAR2(2) default 1,
  goods_name VARCHAR2(70)
)
;
comment on table T_MARKET_REMIND
  is '��ʱ����';
comment on column T_MARKET_REMIND.id
  is '���';
comment on column T_MARKET_REMIND.mobile
  is '�ֻ���';
comment on column T_MARKET_REMIND.goods_no
  is '������Ʒ���';
comment on column T_MARKET_REMIND.status
  is '״̬ 0�� δ���ͣ� 1���ѷ���';
comment on column T_MARKET_REMIND.begin_time
  is '��Ʒ���ʼʱ��';
comment on column T_MARKET_REMIND.type
  is '1:��������,2:��ɱ���� ';
comment on column T_MARKET_REMIND.goods_name
  is '��Ʒ����';
alter table T_MARKET_REMIND
  add primary key (ID);

prompt
prompt Creating table T_MARKET_SECKILL
prompt ===============================
prompt
create table T_MARKET_SECKILL
(
  goods_no      NUMBER(9) not null,
  goods_name    VARCHAR2(250) not null,
  goods_price   NUMBER(13,2) not null,
  seckill_price NUMBER(13,2) not null,
  goods_pic1    VARCHAR2(250),
  goods_pic2    VARCHAR2(250),
  goods_pic3    VARCHAR2(250),
  goods_pic4    VARCHAR2(250),
  start_time    TIMESTAMP(6) not null,
  end_time      TIMESTAMP(6) not null,
  update_time   TIMESTAMP(6),
  status        VARCHAR2(1),
  imagepath     VARCHAR2(100),
  user_id       NUMBER(8) not null,
  order_id      VARCHAR2(13),
  create_time   TIMESTAMP(6),
  id            NUMBER(9) not null
)
;
comment on table T_MARKET_SECKILL
  is '��ɱ������';
comment on column T_MARKET_SECKILL.goods_no
  is '��Ʒ���';
comment on column T_MARKET_SECKILL.goods_name
  is '��Ʒ����';
comment on column T_MARKET_SECKILL.goods_price
  is '�г���';
comment on column T_MARKET_SECKILL.seckill_price
  is '��ɱ��';
comment on column T_MARKET_SECKILL.goods_pic1
  is 'ͼƬ1';
comment on column T_MARKET_SECKILL.goods_pic2
  is 'ͼƬ2';
comment on column T_MARKET_SECKILL.goods_pic3
  is 'ͼƬ3';
comment on column T_MARKET_SECKILL.goods_pic4
  is 'ͼƬ4';
comment on column T_MARKET_SECKILL.start_time
  is '��ɱ��ʼʱ��';
comment on column T_MARKET_SECKILL.end_time
  is '��ɱ����ʱ��';
comment on column T_MARKET_SECKILL.update_time
  is '����ʱ��';
comment on column T_MARKET_SECKILL.status
  is '0-δ֧����δ���ɶ���  1-֧���ɹ�   2-�ѹ���  3-�����ɶ���';
comment on column T_MARKET_SECKILL.imagepath
  is '����ͼƬ';
comment on column T_MARKET_SECKILL.user_id
  is '֧����id';
comment on column T_MARKET_SECKILL.order_id
  is '֧�����ֻ�';
comment on column T_MARKET_SECKILL.create_time
  is '������';
comment on column T_MARKET_SECKILL.id
  is '���';
alter table T_MARKET_SECKILL
  add constraint SECKILL_ID primary key (ID);

prompt
prompt Creating table T_MARKET_SECKILL_CONTENT
prompt =======================================
prompt
create table T_MARKET_SECKILL_CONTENT
(
  id               VARCHAR2(2) not null,
  title            VARCHAR2(20),
  last_modify_time VARCHAR2(20),
  content          CLOB
)
;
comment on table T_MARKET_SECKILL_CONTENT
  is '��ɱ�İ����ñ�';
comment on column T_MARKET_SECKILL_CONTENT.id
  is '���';
comment on column T_MARKET_SECKILL_CONTENT.title
  is '��ɱ�İ�����';
comment on column T_MARKET_SECKILL_CONTENT.last_modify_time
  is '����޸�ʱ��';
comment on column T_MARKET_SECKILL_CONTENT.content
  is '��ɱ�İ�����';
alter table T_MARKET_SECKILL_CONTENT
  add primary key (ID);

prompt
prompt Creating table T_MARKET_SECKILL_LOG
prompt ===================================
prompt
create table T_MARKET_SECKILL_LOG
(
  id          NUMBER(8) not null,
  goods_no    NUMBER(8) not null,
  user_id     NUMBER(8) not null,
  create_time TIMESTAMP(6) not null,
  status      VARCHAR2(1) default 0 not null
)
;
comment on table T_MARKET_SECKILL_LOG
  is '��ɱ��¼��';
comment on column T_MARKET_SECKILL_LOG.id
  is '���';
comment on column T_MARKET_SECKILL_LOG.goods_no
  is '��Ʒ���';
comment on column T_MARKET_SECKILL_LOG.user_id
  is '�û����';
comment on column T_MARKET_SECKILL_LOG.create_time
  is '��ɱʱ��';
comment on column T_MARKET_SECKILL_LOG.status
  is '0����ɱʧ�ܣ�1����ɱ�ɹ�';
alter table T_MARKET_SECKILL_LOG
  add primary key (ID);

prompt
prompt Creating table T_MEMBER
prompt =======================
prompt
create table T_MEMBER
(
  id          NUMBER(9) not null,
  user_name   VARCHAR2(30),
  user_pass   VARCHAR2(50),
  email       VARCHAR2(50),
  real_name   VARCHAR2(50),
  terminal_id VARCHAR2(20),
  reg_time    VARCHAR2(14),
  status      CHAR(1),
  update_time VARCHAR2(14),
  vid         VARCHAR2(50),
  nick_name   VARCHAR2(50),
  area_code   VARCHAR2(6),
  sex         NUMBER(1),
  birthday    VARCHAR2(14),
  opened      NUMBER(1),
  qq          VARCHAR2(20),
  remark      VARCHAR2(1000),
  signature   VARCHAR2(1000),
  reg_source  NUMBER(2),
  user_level  VARCHAR2(50),
  cart_uuid   VARCHAR2(50),
  red_member  NUMBER(1)
)
;
alter table T_MEMBER
  add constraint PK_T_MEMBER_0905 primary key (ID);

prompt
prompt Creating table T_MEMBER_0910
prompt ============================
prompt
create table T_MEMBER_0910
(
  id          NUMBER(9) not null,
  user_name   VARCHAR2(30),
  user_pass   VARCHAR2(50),
  email       VARCHAR2(50),
  real_name   VARCHAR2(50),
  terminal_id VARCHAR2(20),
  reg_time    VARCHAR2(14),
  status      CHAR(1),
  update_time VARCHAR2(14),
  vid         VARCHAR2(50),
  nick_name   VARCHAR2(50),
  area_code   VARCHAR2(6),
  sex         NUMBER(1) default 1,
  birthday    VARCHAR2(14),
  opened      NUMBER(1) default 0,
  qq          VARCHAR2(20),
  remark      VARCHAR2(1000),
  signature   VARCHAR2(1000),
  reg_source  NUMBER(2) default 1,
  user_level  VARCHAR2(50) default 0,
  cart_uuid   VARCHAR2(50),
  red_member  NUMBER(1) default 0
)
;
comment on table T_MEMBER_0910
  is '�̳��û��ʺű�';
comment on column T_MEMBER_0910.user_name
  is '�û���¼��';
comment on column T_MEMBER_0910.user_pass
  is '�û�����';
comment on column T_MEMBER_0910.email
  is '�û�����';
comment on column T_MEMBER_0910.real_name
  is '��ʵ����';
comment on column T_MEMBER_0910.terminal_id
  is '�ֻ�����';
comment on column T_MEMBER_0910.reg_time
  is 'ע��ʱ��';
comment on column T_MEMBER_0910.status
  is '״̬ 1���� 2��ͣ';
comment on column T_MEMBER_0910.update_time
  is '����ʱ��';
comment on column T_MEMBER_0910.vid
  is 'JSSSO VID';
comment on column T_MEMBER_0910.nick_name
  is '�ǳ�';
comment on column T_MEMBER_0910.area_code
  is '������������';
comment on column T_MEMBER_0910.sex
  is '�Ա�1Ů2��';
comment on column T_MEMBER_0910.birthday
  is '����';
comment on column T_MEMBER_0910.opened
  is '��Ϣ�Ƿ񹫿� 0������ 1����';
comment on column T_MEMBER_0910.qq
  is 'QQ';
comment on column T_MEMBER_0910.remark
  is '������Ϣ����';
comment on column T_MEMBER_0910.signature
  is '����ǩ��';
comment on column T_MEMBER_0910.reg_source
  is 'ע����Դ 1WEBSSO 3-BOSS(ˢ�»�Ա�ȼ�ʱ��Ա������ʱ������) 2 ���Ź�';
comment on column T_MEMBER_0910.user_level
  is '��Ա����
0 ��ͨ��Ա
10 �����Ա ������ѡ�
11 �����Ա ������ѡ�
20 ��ͨ��Ա 1Ԫ/�¡�
21 ��ͨ��Ա 3Ԫ/�¡�
22 ��ͨ��Ա 5Ԫ/�¡�
30 �м���Ա 30Ԫ/�ꡣ
40 �߼���Ա 30Ԫ/�¡�
';
comment on column T_MEMBER_0910.cart_uuid
  is '���ﳵ��ʶ';
comment on column T_MEMBER_0910.red_member
  is '�Ƿ���� 0�� 1��';
create index IDX_T_MEMBER on T_MEMBER_0910 (TERMINAL_ID);
alter table T_MEMBER_0910
  add constraint PK_MEMBER_ID primary key (ID);

prompt
prompt Creating table T_MEMBER_ADDRESS
prompt ===============================
prompt
create table T_MEMBER_ADDRESS
(
  id               NUMBER(9) not null,
  mid              NUMBER(9) not null,
  remark           VARCHAR2(10),
  region           VARCHAR2(10) not null,
  address          VARCHAR2(200) not null,
  zipcode          VARCHAR2(10),
  name             VARCHAR2(50) not null,
  mobile           VARCHAR2(40),
  phone            VARCHAR2(40),
  update_time      VARCHAR2(14),
  create_time      VARCHAR2(14),
  last_use_time    VARCHAR2(14),
  default_shipping CHAR(1) default '0',
  default_pay_type VARCHAR2(2)
)
;
comment on table T_MEMBER_ADDRESS
  is '�ջ���ַ';
comment on column T_MEMBER_ADDRESS.mid
  is '�û����';
comment on column T_MEMBER_ADDRESS.remark
  is '��ַ��ע';
comment on column T_MEMBER_ADDRESS.region
  is '��������';
comment on column T_MEMBER_ADDRESS.address
  is '��ϸ��ַ';
comment on column T_MEMBER_ADDRESS.zipcode
  is '��������';
comment on column T_MEMBER_ADDRESS.name
  is '�ջ���';
comment on column T_MEMBER_ADDRESS.mobile
  is '��ϵ�绰���ֻ�';
comment on column T_MEMBER_ADDRESS.phone
  is '��ϵ�绰���̻�';
comment on column T_MEMBER_ADDRESS.update_time
  is '����ʱ��';
comment on column T_MEMBER_ADDRESS.create_time
  is '����ʱ��';
comment on column T_MEMBER_ADDRESS.last_use_time
  is '���ʹ��ʱ��';
comment on column T_MEMBER_ADDRESS.default_shipping
  is 'Ĭ�ϵ�ַ��־ 1�� 0��';
comment on column T_MEMBER_ADDRESS.default_pay_type
  is 'Ĭ��֧����ʽ��������';
alter table T_MEMBER_ADDRESS
  add constraint PK_MEMBER_ADDRESS primary key (ID);

prompt
prompt Creating table T_MEMBER_ADDRESS_0905
prompt ====================================
prompt
create table T_MEMBER_ADDRESS_0905
(
  id               NUMBER(9) not null,
  mid              NUMBER(9) not null,
  remark           VARCHAR2(10),
  region           VARCHAR2(10) not null,
  address          VARCHAR2(200) not null,
  zipcode          VARCHAR2(12),
  name             VARCHAR2(50) not null,
  mobile           VARCHAR2(20),
  phone            VARCHAR2(20),
  update_time      VARCHAR2(14),
  create_time      VARCHAR2(14),
  last_use_time    VARCHAR2(14),
  default_shipping CHAR(1),
  default_pay_type VARCHAR2(2)
)
;
alter table T_MEMBER_ADDRESS_0905
  add constraint PK_T_MEMBER_ADDRESS_0905 primary key (ID);

prompt
prompt Creating table T_MEMBER_BAK
prompt ===========================
prompt
create table T_MEMBER_BAK
(
  id          NUMBER(9) not null,
  user_name   VARCHAR2(30),
  user_pass   VARCHAR2(50),
  email       VARCHAR2(50),
  real_name   VARCHAR2(50),
  terminal_id VARCHAR2(20),
  reg_time    VARCHAR2(14),
  status      CHAR(1),
  update_time VARCHAR2(14),
  vid         VARCHAR2(50),
  nick_name   VARCHAR2(50),
  area_code   VARCHAR2(6),
  sex         NUMBER(1),
  birthday    VARCHAR2(14),
  opened      NUMBER(1),
  qq          VARCHAR2(20),
  remark      VARCHAR2(1000),
  signature   VARCHAR2(1000),
  reg_source  NUMBER(2),
  user_level  VARCHAR2(50),
  cart_uuid   VARCHAR2(50),
  red_member  NUMBER(1)
)
;

prompt
prompt Creating table T_MEMBER_FAVORITE
prompt ================================
prompt
create table T_MEMBER_FAVORITE
(
  id            NUMBER(9) not null,
  favorite_id   NUMBER(9),
  update_time   VARCHAR2(14),
  favorite_type NUMBER(1),
  user_id       NUMBER(9)
)
;
comment on table T_MEMBER_FAVORITE
  is '�û��ղر�';
comment on column T_MEMBER_FAVORITE.favorite_id
  is '��Ʒid���̻�id';
comment on column T_MEMBER_FAVORITE.favorite_type
  is '�ղ����� 1����Ʒ 2���̻�';
alter table T_MEMBER_FAVORITE
  add constraint PK_MEMBER_FAVORITE_ID primary key (ID);

prompt
prompt Creating table T_MEMBER_INVOICE
prompt ===============================
prompt
create table T_MEMBER_INVOICE
(
  id                 NUMBER(9) not null,
  mid                NUMBER(9),
  invoice_type       CHAR(1),
  invoice_title_type CHAR(1),
  invoice_title      VARCHAR2(40)
)
;
comment on column T_MEMBER_INVOICE.id
  is 'id';
comment on column T_MEMBER_INVOICE.mid
  is '��Ա���';
comment on column T_MEMBER_INVOICE.invoice_type
  is '��Ʊ���� 1��ͨ��Ʊ';
comment on column T_MEMBER_INVOICE.invoice_title_type
  is '��Ʊ̧ͷ���� 1����2��λ';
comment on column T_MEMBER_INVOICE.invoice_title
  is '��Ʊ̧ͷ����';
alter table T_MEMBER_INVOICE
  add constraint PK_MEMBER_INVOICE primary key (ID);

prompt
prompt Creating table T_MEMBER_ORGI
prompt ============================
prompt
create table T_MEMBER_ORGI
(
  id          NUMBER(9) not null,
  user_name   VARCHAR2(30),
  user_pass   VARCHAR2(50),
  email       VARCHAR2(50),
  real_name   VARCHAR2(54),
  terminal_id VARCHAR2(20),
  reg_time    VARCHAR2(14),
  status      CHAR(1),
  update_time VARCHAR2(14),
  vid         VARCHAR2(50),
  nick_name   VARCHAR2(50),
  area_code   VARCHAR2(6),
  sex         NUMBER(1),
  birthday    VARCHAR2(14),
  opened      NUMBER(1),
  qq          VARCHAR2(20),
  remark      VARCHAR2(1000),
  signature   VARCHAR2(1000),
  reg_source  NUMBER(2),
  user_level  VARCHAR2(50),
  cart_uuid   VARCHAR2(50),
  red_member  NUMBER(1)
)
;

prompt
prompt Creating table T_MEMBER_TERMINALID
prompt ==================================
prompt
create table T_MEMBER_TERMINALID
(
  id          NUMBER(9) not null,
  user_name   VARCHAR2(30),
  user_pass   VARCHAR2(50),
  email       VARCHAR2(50),
  real_name   VARCHAR2(54),
  terminal_id VARCHAR2(20),
  reg_time    VARCHAR2(14),
  status      CHAR(1),
  update_time VARCHAR2(14),
  vid         VARCHAR2(50),
  nick_name   VARCHAR2(50),
  area_code   VARCHAR2(6),
  sex         NUMBER(1),
  birthday    VARCHAR2(14),
  opened      NUMBER(1),
  qq          VARCHAR2(20),
  remark      VARCHAR2(1000),
  signature   VARCHAR2(1000),
  reg_source  NUMBER(2),
  user_level  VARCHAR2(50),
  cart_uuid   VARCHAR2(50),
  red_member  NUMBER(1)
)
;

prompt
prompt Creating table T_MEMBER_TERMINALID2
prompt ===================================
prompt
create table T_MEMBER_TERMINALID2
(
  id          NUMBER(9) not null,
  user_name   VARCHAR2(30),
  user_pass   VARCHAR2(50),
  email       VARCHAR2(50),
  real_name   VARCHAR2(54),
  terminal_id VARCHAR2(20),
  reg_time    VARCHAR2(14),
  status      CHAR(1),
  update_time VARCHAR2(14),
  vid         VARCHAR2(50),
  nick_name   VARCHAR2(50),
  area_code   VARCHAR2(6),
  sex         NUMBER(1),
  birthday    VARCHAR2(14),
  opened      NUMBER(1),
  qq          VARCHAR2(20),
  remark      VARCHAR2(1000),
  signature   VARCHAR2(1000),
  reg_source  NUMBER(2),
  user_level  VARCHAR2(50),
  cart_uuid   VARCHAR2(50),
  red_member  NUMBER(1)
)
;

prompt
prompt Creating table T_MEMBER_VERIFY_LOG
prompt ==================================
prompt
create table T_MEMBER_VERIFY_LOG
(
  id          NUMBER(9) not null,
  member_id   NUMBER(9),
  verify_time VARCHAR2(14),
  shop_class  NUMBER(1),
  shop_id     NUMBER(9)
)
;
comment on table T_MEMBER_VERIFY_LOG
  is '��Ա��֤��¼��';
comment on column T_MEMBER_VERIFY_LOG.member_id
  is '��֤�ɹ��Ļ�Աid';
comment on column T_MEMBER_VERIFY_LOG.verify_time
  is '��֤ʱ��';
comment on column T_MEMBER_VERIFY_LOG.shop_class
  is '"1--ҵ���ŵ� 2--�̻� 3--������"';
alter table T_MEMBER_VERIFY_LOG
  add constraint PK_MEMBER_VERIFY_LOG primary key (ID);

prompt
prompt Creating table T_MEMBER_XW
prompt ==========================
prompt
create table T_MEMBER_XW
(
  id          NUMBER(9) not null,
  user_name   VARCHAR2(30),
  user_pass   VARCHAR2(50),
  email       VARCHAR2(50),
  real_name   VARCHAR2(50),
  terminal_id VARCHAR2(20),
  reg_time    VARCHAR2(14),
  status      CHAR(1),
  update_time VARCHAR2(14),
  vid         VARCHAR2(50),
  nick_name   VARCHAR2(50),
  area_code   VARCHAR2(6),
  sex         NUMBER(1) default 1,
  birthday    VARCHAR2(14),
  opened      NUMBER(1) default 0,
  qq          VARCHAR2(20),
  remark      VARCHAR2(1000),
  signature   VARCHAR2(1000),
  reg_source  NUMBER(2) default 1,
  user_level  VARCHAR2(50) default 0,
  cart_uuid   VARCHAR2(50),
  red_member  NUMBER(1) default 0
)
;
comment on table T_MEMBER_XW
  is '�̳��û��ʺű�';
comment on column T_MEMBER_XW.user_name
  is '�û���¼��';
comment on column T_MEMBER_XW.user_pass
  is '�û�����';
comment on column T_MEMBER_XW.email
  is '�û�����';
comment on column T_MEMBER_XW.real_name
  is '��ʵ����';
comment on column T_MEMBER_XW.terminal_id
  is '�ֻ�����';
comment on column T_MEMBER_XW.reg_time
  is 'ע��ʱ��';
comment on column T_MEMBER_XW.status
  is '״̬ 1���� 2��ͣ';
comment on column T_MEMBER_XW.update_time
  is '����ʱ��';
comment on column T_MEMBER_XW.vid
  is 'JSSSO VID';
comment on column T_MEMBER_XW.nick_name
  is '�ǳ�';
comment on column T_MEMBER_XW.area_code
  is '������������';
comment on column T_MEMBER_XW.sex
  is '�Ա�1Ů2��';
comment on column T_MEMBER_XW.birthday
  is '����';
comment on column T_MEMBER_XW.opened
  is '��Ϣ�Ƿ񹫿� 0������ 1����';
comment on column T_MEMBER_XW.qq
  is 'QQ';
comment on column T_MEMBER_XW.remark
  is '������Ϣ����';
comment on column T_MEMBER_XW.signature
  is '����ǩ��';
comment on column T_MEMBER_XW.reg_source
  is 'ע����Դ 1WEBSSO';
comment on column T_MEMBER_XW.user_level
  is '��Ա����
0 ��ͨ��Ա
10 �����Ա ������ѡ�
11 �����Ա ������ѡ�
20 ��ͨ��Ա 1Ԫ/�¡�
21 ��ͨ��Ա 3Ԫ/�¡�
22 ��ͨ��Ա 5Ԫ/�¡�
30 �м���Ա 30Ԫ/�ꡣ
40 �߼���Ա 30Ԫ/�¡�
';
comment on column T_MEMBER_XW.cart_uuid
  is '���ﳵ��ʶ';
comment on column T_MEMBER_XW.red_member
  is '�Ƿ���� 0�� 1��';
alter table T_MEMBER_XW
  add constraint PK_MEMBER_ID_XW primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_01
prompt =================================
prompt
create table T_MMS_BATCH_LOG_01
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_01
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_01.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_01.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_01.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_01.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_01.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_01
  add constraint PK_T_MMS_BATCH_LOG_01 primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_02
prompt =================================
prompt
create table T_MMS_BATCH_LOG_02
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_02
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_02.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_02.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_02.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_02.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_02.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_02
  add constraint PK_T_MMS_BATCH_LOG_02 primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_03
prompt =================================
prompt
create table T_MMS_BATCH_LOG_03
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_03
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_03.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_03.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_03.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_03.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_03.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_03
  add constraint PK_T_MMS_BATCH_LOG_03 primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_04
prompt =================================
prompt
create table T_MMS_BATCH_LOG_04
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_04
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_04.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_04.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_04.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_04.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_04.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_04
  add constraint PK_T_MMS_BATCH_LOG_04 primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_05
prompt =================================
prompt
create table T_MMS_BATCH_LOG_05
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_05
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_05.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_05.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_05.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_05.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_05.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_05
  add constraint PK_T_MMS_BATCH_LOG_05 primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_06
prompt =================================
prompt
create table T_MMS_BATCH_LOG_06
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_06
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_06.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_06.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_06.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_06.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_06.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_06
  add constraint PK_T_MMS_BATCH_LOG_06 primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_07
prompt =================================
prompt
create table T_MMS_BATCH_LOG_07
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_07
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_07.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_07.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_07.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_07.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_07.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_07
  add constraint PK_T_MMS_BATCH_LOG_07 primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_08
prompt =================================
prompt
create table T_MMS_BATCH_LOG_08
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_08
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_08.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_08.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_08.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_08.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_08.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_08
  add constraint PK_T_MMS_BATCH_LOG_08 primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_09
prompt =================================
prompt
create table T_MMS_BATCH_LOG_09
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_09
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_09.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_09.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_09.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_09.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_09.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_09
  add constraint PK_T_MMS_BATCH_LOG_09 primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_10
prompt =================================
prompt
create table T_MMS_BATCH_LOG_10
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_10
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_10.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_10.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_10.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_10.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_10.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_10
  add constraint PK_T_MMS_BATCH_LOG_10 primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_11
prompt =================================
prompt
create table T_MMS_BATCH_LOG_11
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_11
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_11.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_11.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_11.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_11.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_11.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_11
  add constraint PK_T_MMS_BATCH_LOG_11 primary key (ID);

prompt
prompt Creating table T_MMS_BATCH_LOG_12
prompt =================================
prompt
create table T_MMS_BATCH_LOG_12
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  msg_id      VARCHAR2(50)
)
;
comment on table T_MMS_BATCH_LOG_12
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_MMS_BATCH_LOG_12.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_BATCH_LOG_12.task_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_12.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_BATCH_LOG_12.status
  is 'submit_resp�ذ��е�״̬��';
comment on column T_MMS_BATCH_LOG_12.msg_id
  is 'ͨѶ��ϢID';
alter table T_MMS_BATCH_LOG_12
  add constraint PK_T_MMS_BATCH_LOG_12 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_01
prompt ==============================
prompt
create table T_MMS_MO_LOG_01
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_01
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_01.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_01.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_01.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_01.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_01.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_01.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_01.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_01.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_01.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_01.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_01.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_01.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_01.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_01.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_01
  add constraint PK_T_MMS_MO_LOG_01 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_02
prompt ==============================
prompt
create table T_MMS_MO_LOG_02
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_02
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_02.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_02.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_02.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_02.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_02.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_02.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_02.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_02.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_02.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_02.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_02.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_02.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_02.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_02.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_02
  add constraint PK_T_MMS_MO_LOG_02 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_03
prompt ==============================
prompt
create table T_MMS_MO_LOG_03
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_03
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_03.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_03.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_03.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_03.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_03.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_03.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_03.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_03.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_03.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_03.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_03.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_03.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_03.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_03.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_03
  add constraint PK_T_MMS_MO_LOG_03 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_04
prompt ==============================
prompt
create table T_MMS_MO_LOG_04
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_04
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_04.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_04.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_04.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_04.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_04.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_04.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_04.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_04.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_04.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_04.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_04.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_04.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_04.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_04.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_04
  add constraint PK_T_MMS_MO_LOG_04 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_05
prompt ==============================
prompt
create table T_MMS_MO_LOG_05
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_05
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_05.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_05.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_05.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_05.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_05.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_05.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_05.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_05.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_05.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_05.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_05.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_05.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_05.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_05.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_05
  add constraint PK_T_MMS_MO_LOG_05 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_06
prompt ==============================
prompt
create table T_MMS_MO_LOG_06
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_06
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_06.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_06.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_06.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_06.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_06.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_06.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_06.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_06.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_06.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_06.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_06.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_06.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_06.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_06.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_06
  add constraint PK_T_MMS_MO_LOG_06 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_07
prompt ==============================
prompt
create table T_MMS_MO_LOG_07
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_07
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_07.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_07.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_07.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_07.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_07.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_07.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_07.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_07.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_07.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_07.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_07.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_07.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_07.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_07.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_07
  add constraint PK_T_MMS_MO_LOG_07 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_08
prompt ==============================
prompt
create table T_MMS_MO_LOG_08
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_08
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_08.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_08.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_08.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_08.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_08.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_08.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_08.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_08.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_08.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_08.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_08.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_08.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_08.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_08.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_08
  add constraint PK_T_MMS_MO_LOG_08 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_09
prompt ==============================
prompt
create table T_MMS_MO_LOG_09
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_09
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_09.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_09.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_09.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_09.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_09.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_09.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_09.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_09.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_09.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_09.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_09.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_09.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_09.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_09.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_09
  add constraint PK_T_MMS_MO_LOG_09 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_10
prompt ==============================
prompt
create table T_MMS_MO_LOG_10
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_10
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_10.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_10.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_10.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_10.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_10.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_10.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_10.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_10.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_10.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_10.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_10.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_10.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_10.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_10.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_10
  add constraint PK_T_MMS_MO_LOG_10 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_11
prompt ==============================
prompt
create table T_MMS_MO_LOG_11
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_11
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_11.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_11.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_11.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_11.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_11.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_11.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_11.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_11.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_11.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_11.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_11.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_11.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_11.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_11.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_11
  add constraint PK_T_MMS_MO_LOG_11 primary key (ID);

prompt
prompt Creating table T_MMS_MO_LOG_12
prompt ==============================
prompt
create table T_MMS_MO_LOG_12
(
  id              NUMBER(9) not null,
  title           VARCHAR2(200),
  mms_dir         VARCHAR2(250),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_MMS_MO_LOG_12
  is '����������־����·��ģ�����·�ɺ��¼��';
comment on column T_MMS_MO_LOG_12.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MO_LOG_12.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MO_LOG_12.mms_dir
  is '�����������·������ʽΪ��DELIVER/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MO_LOG_12.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_MMS_MO_LOG_12.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_MMS_MO_LOG_12.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_12.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_MMS_MO_LOG_12.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_MMS_MO_LOG_12.act_id
  is '�ID';
comment on column T_MMS_MO_LOG_12.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_MMS_MO_LOG_12.unit_id
  is '��λ����';
comment on column T_MMS_MO_LOG_12.area_code
  is '������ʶ';
comment on column T_MMS_MO_LOG_12.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MO_LOG_12.linkid
  is 'LINKID�������ֶ�';
alter table T_MMS_MO_LOG_12
  add constraint PK_T_MMS_MO_LOG_12 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_01
prompt ==============================
prompt
create table T_MMS_MT_LOG_01
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_01
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_01.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_01.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_01.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_01.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_01.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_01.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_01.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_01.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_01.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_01.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_01.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_01.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_01.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_01.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_01.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_01.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_01.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_01.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_01.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_01.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_01.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_01.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_01.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_01
  add constraint PK_T_MMS_MT_LOG_01 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_02
prompt ==============================
prompt
create table T_MMS_MT_LOG_02
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_02
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_02.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_02.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_02.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_02.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_02.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_02.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_02.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_02.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_02.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_02.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_02.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_02.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_02.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_02.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_02.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_02.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_02.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_02.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_02.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_02.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_02.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_02.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_02.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_02
  add constraint PK_T_MMS_MT_LOG_02 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_03
prompt ==============================
prompt
create table T_MMS_MT_LOG_03
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_03
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_03.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_03.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_03.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_03.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_03.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_03.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_03.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_03.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_03.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_03.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_03.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_03.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_03.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_03.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_03.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_03.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_03.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_03.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_03.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_03.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_03.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_03.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_03.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_03
  add constraint PK_T_MMS_MT_LOG_03 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_04
prompt ==============================
prompt
create table T_MMS_MT_LOG_04
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_04
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_04.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_04.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_04.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_04.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_04.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_04.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_04.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_04.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_04.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_04.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_04.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_04.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_04.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_04.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_04.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_04.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_04.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_04.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_04.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_04.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_04.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_04.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_04.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_04
  add constraint PK_T_MMS_MT_LOG_04 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_05
prompt ==============================
prompt
create table T_MMS_MT_LOG_05
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_05
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_05.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_05.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_05.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_05.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_05.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_05.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_05.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_05.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_05.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_05.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_05.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_05.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_05.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_05.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_05.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_05.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_05.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_05.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_05.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_05.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_05.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_05.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_05.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_05
  add constraint PK_T_MMS_MT_LOG_05 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_06
prompt ==============================
prompt
create table T_MMS_MT_LOG_06
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_06
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_06.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_06.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_06.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_06.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_06.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_06.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_06.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_06.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_06.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_06.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_06.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_06.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_06.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_06.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_06.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_06.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_06.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_06.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_06.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_06.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_06.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_06.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_06.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_06
  add constraint PK_T_MMS_MT_LOG_06 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_07
prompt ==============================
prompt
create table T_MMS_MT_LOG_07
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_07
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_07.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_07.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_07.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_07.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_07.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_07.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_07.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_07.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_07.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_07.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_07.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_07.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_07.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_07.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_07.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_07.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_07.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_07.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_07.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_07.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_07.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_07.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_07.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_07
  add constraint PK_T_MMS_MT_LOG_07 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_08
prompt ==============================
prompt
create table T_MMS_MT_LOG_08
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_08
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_08.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_08.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_08.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_08.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_08.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_08.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_08.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_08.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_08.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_08.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_08.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_08.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_08.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_08.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_08.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_08.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_08.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_08.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_08.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_08.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_08.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_08.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_08.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_08
  add constraint PK_T_MMS_MT_LOG_08 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_09
prompt ==============================
prompt
create table T_MMS_MT_LOG_09
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_09
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_09.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_09.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_09.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_09.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_09.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_09.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_09.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_09.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_09.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_09.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_09.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_09.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_09.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_09.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_09.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_09.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_09.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_09.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_09.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_09.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_09.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_09.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_09.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_09
  add constraint PK_T_MMS_MT_LOG_09 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_10
prompt ==============================
prompt
create table T_MMS_MT_LOG_10
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_10
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_10.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_10.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_10.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_10.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_10.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_10.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_10.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_10.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_10.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_10.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_10.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_10.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_10.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_10.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_10.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_10.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_10.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_10.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_10.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_10.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_10.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_10.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_10.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_10
  add constraint PK_T_MMS_MT_LOG_10 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_11
prompt ==============================
prompt
create table T_MMS_MT_LOG_11
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_11
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_11.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_11.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_11.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_11.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_11.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_11.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_11.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_11.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_11.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_11.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_11.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_11.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_11.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_11.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_11.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_11.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_11.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_11.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_11.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_11.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_11.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_11.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_11.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_11
  add constraint PK_T_MMS_MT_LOG_11 primary key (ID);

prompt
prompt Creating table T_MMS_MT_LOG_12
prompt ==============================
prompt
create table T_MMS_MT_LOG_12
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  status_sign      VARCHAR2(100),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_LOG_12
  is '����ҵ��������־�����·ֱ�洢';
comment on column T_MMS_MT_LOG_12.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_MT_LOG_12.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_LOG_12.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_LOG_12.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_LOG_12.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_LOG_12.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_LOG_12.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_LOG_12.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_LOG_12.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_LOG_12.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_LOG_12.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_LOG_12.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_12.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_LOG_12.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_LOG_12.act_id
  is '�ID';
comment on column T_MMS_MT_LOG_12.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_LOG_12.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_LOG_12.area_code
  is '������ʶ';
comment on column T_MMS_MT_LOG_12.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_LOG_12.msg_id
  is '���б�ʶ���������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_12.status
  is '����״̬�룬�������ķ��أ��ǿ�';
comment on column T_MMS_MT_LOG_12.status_sign
  is '����״̬ע��';
comment on column T_MMS_MT_LOG_12.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_LOG_12
  add constraint PK_T_MMS_MT_LOG_12 primary key (ID);

prompt
prompt Creating table T_MMS_MT_WAIT
prompt ============================
prompt
create table T_MMS_MT_WAIT
(
  id               NUMBER(9) not null,
  title            VARCHAR2(200),
  smil_name        VARCHAR2(40),
  mms_dir          VARCHAR2(250),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(120),
  cc_terminal_id   VARCHAR2(250),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(9),
  is_report        NUMBER(1),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  sale_mode        NUMBER(3),
  act_id           NUMBER(9),
  mms_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  mms_type         NUMBER(3)
)
;
comment on table T_MMS_MT_WAIT
  is '����ҵ�����еȴ�����Ŵ����͵Ĳ������У�
һ�����ڶ�ʱ�������С�';
comment on column T_MMS_MT_WAIT.id
  is '���У�������ʵ�⣬������SEQ_MMS_MT_WAIT';
comment on column T_MMS_MT_WAIT.title
  is '���ű��⣬��Ϊ��';
comment on column T_MMS_MT_WAIT.smil_name
  is '����SMIL�ļ������п���';
comment on column T_MMS_MT_WAIT.mms_dir
  is '�����������·������ʽΪ����ϢԴ����/���ڣ�YYYYMM��/ ���ű��';
comment on column T_MMS_MT_WAIT.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_MMS_MT_WAIT.dest_terminal_id
  is '���շ��ֻ����룬�ǿ�';
comment on column T_MMS_MT_WAIT.cc_terminal_id
  is '���ͷ��ֻ����룬����Ϊ0-9���ԡ�,�����';
comment on column T_MMS_MT_WAIT.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_MMS_MT_WAIT.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_MMS_MT_WAIT.fee
  is '���ʣ��ǿ�';
comment on column T_MMS_MT_WAIT.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_MMS_MT_WAIT.request_time
  is '��¼����ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_WAIT.submit_time
  is 'Ҫ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_MMS_MT_WAIT.sale_mode
  is '���ֶ���Ч��Ĭ����0';
comment on column T_MMS_MT_WAIT.act_id
  is '�ID';
comment on column T_MMS_MT_WAIT.mms_id
  is '���ű�ţ��ǿ�';
comment on column T_MMS_MT_WAIT.unit_id
  is '��λ�����������������';
comment on column T_MMS_MT_WAIT.area_code
  is '������ʶ';
comment on column T_MMS_MT_WAIT.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_MMS_MT_WAIT.mms_type
  is '1������
2��ͼƬ
3������';
alter table T_MMS_MT_WAIT
  add constraint PK_T_MMS_MT_WAIT primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_01
prompt ==============================
prompt
create table T_MMS_REPORT_01
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_01
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_01.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_01.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_01.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_01.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_01.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_01.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_01
  add constraint PK_T_MMS_REPORT_01 primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_02
prompt ==============================
prompt
create table T_MMS_REPORT_02
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_02
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_02.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_02.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_02.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_02.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_02.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_02.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_02
  add constraint PK_T_MMS_REPORT_02 primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_03
prompt ==============================
prompt
create table T_MMS_REPORT_03
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_03
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_03.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_03.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_03.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_03.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_03.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_03.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_03
  add constraint PK_T_MMS_REPORT_03 primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_04
prompt ==============================
prompt
create table T_MMS_REPORT_04
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_04
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_04.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_04.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_04.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_04.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_04.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_04.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_04
  add constraint PK_T_MMS_REPORT_04 primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_05
prompt ==============================
prompt
create table T_MMS_REPORT_05
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_05
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_05.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_05.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_05.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_05.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_05.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_05.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_05
  add constraint PK_T_MMS_REPORT_05 primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_06
prompt ==============================
prompt
create table T_MMS_REPORT_06
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_06
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_06.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_06.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_06.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_06.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_06.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_06.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_06
  add constraint PK_T_MMS_REPORT_06 primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_07
prompt ==============================
prompt
create table T_MMS_REPORT_07
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_07
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_07.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_07.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_07.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_07.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_07.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_07.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_07
  add constraint PK_T_MMS_REPORT_07 primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_08
prompt ==============================
prompt
create table T_MMS_REPORT_08
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_08
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_08.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_08.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_08.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_08.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_08.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_08.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_08
  add constraint PK_T_MMS_REPORT_08 primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_09
prompt ==============================
prompt
create table T_MMS_REPORT_09
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_09
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_09.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_09.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_09.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_09.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_09.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_09.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_09
  add constraint PK_T_MMS_REPORT_09 primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_10
prompt ==============================
prompt
create table T_MMS_REPORT_10
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_10
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_10.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_10.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_10.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_10.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_10.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_10.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_10
  add constraint PK_T_MMS_REPORT_10 primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_11
prompt ==============================
prompt
create table T_MMS_REPORT_11
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_11
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_11.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_11.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_11.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_11.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_11.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_11.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_11
  add constraint PK_T_MMS_REPORT_11 primary key (ID);

prompt
prompt Creating table T_MMS_REPORT_12
prompt ==============================
prompt
create table T_MMS_REPORT_12
(
  id            NUMBER(9) not null,
  msg_id        VARCHAR2(50),
  status        VARCHAR2(10),
  status_detail VARCHAR2(50),
  get_time      VARCHAR2(14),
  sender        VARCHAR2(21)
)
;
comment on table T_MMS_REPORT_12
  is '��������״̬��������·ֱ���';
comment on column T_MMS_REPORT_12.id
  is '���У�������ʵ�⣬����';
comment on column T_MMS_REPORT_12.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_MMS_REPORT_12.status
  is '״̬����״̬�룬�ǿ�';
comment on column T_MMS_REPORT_12.status_detail
  is '״̬����״̬ϸ�ڴ���';
comment on column T_MMS_REPORT_12.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_MMS_REPORT_12.sender
  is '�ֻ�����';
alter table T_MMS_REPORT_12
  add constraint PK_T_MMS_REPORT_12 primary key (ID);

prompt
prompt Creating table T_OPEN_CUSTOMER
prompt ==============================
prompt
create table T_OPEN_CUSTOMER
(
  app_id     VARCHAR2(32) not null,
  app_key    VARCHAR2(32),
  name       VARCHAR2(100),
  remark     VARCHAR2(1000),
  ips        VARCHAR2(300),
  status     CHAR(1) default 0,
  pay_notify VARCHAR2(200),
  app_type   CHAR(1) default 1,
  shop_class NUMBER(1),
  shop_id    NUMBER(9) default 0,
  store_id   NUMBER(9) default 0
)
;
comment on table T_OPEN_CUSTOMER
  is '����ƽ̨������Ӧ����Ϣ';
comment on column T_OPEN_CUSTOMER.app_id
  is 'app id';
comment on column T_OPEN_CUSTOMER.app_key
  is 'app key';
comment on column T_OPEN_CUSTOMER.name
  is 'Ӧ������';
comment on column T_OPEN_CUSTOMER.remark
  is 'Ӧ������';
comment on column T_OPEN_CUSTOMER.ips
  is '���20���Ŀ�����ip��ַ��Ϊ�ձ�ʾ������ip�����ŷָ�';
comment on column T_OPEN_CUSTOMER.status
  is 'Ӧ��״̬��0�½� 1��˲��� 2������ 3���� 4����';
comment on column T_OPEN_CUSTOMER.pay_notify
  is '֧��֪ͨ�ӿ�';
comment on column T_OPEN_CUSTOMER.app_type
  is 'Ӧ�����ͣ�1��ֱƵ�� 2�̻�';
comment on column T_OPEN_CUSTOMER.shop_class
  is '�̻����ͣ�1ҵ���ŵ�
2�̻�
3������';
comment on column T_OPEN_CUSTOMER.shop_id
  is '�ŵ�ID�����Ϊ�̻�������������0';
comment on column T_OPEN_CUSTOMER.store_id
  is '�̻���������ID';
alter table T_OPEN_CUSTOMER
  add constraint PK_OPEN_CUSTOMER primary key (APP_ID);

prompt
prompt Creating table T_OPEN_CUSTOMER_ROLE
prompt ===================================
prompt
create table T_OPEN_CUSTOMER_ROLE
(
  app_id  VARCHAR2(32) not null,
  role_id NUMBER(9) not null
)
;
comment on table T_OPEN_CUSTOMER_ROLE
  is '������Ӧ�ú�Ȩ�޵Ķ�Ӧ��ϵ��';
comment on column T_OPEN_CUSTOMER_ROLE.app_id
  is 'app id';
comment on column T_OPEN_CUSTOMER_ROLE.role_id
  is 'role_id';
alter table T_OPEN_CUSTOMER_ROLE
  add constraint PK_OPEN_CUSTOMER_ROLE primary key (APP_ID, ROLE_ID);

prompt
prompt Creating table T_OPEN_ROLE_ITEM
prompt ===============================
prompt
create table T_OPEN_ROLE_ITEM
(
  id   NUMBER(9),
  name VARCHAR2(20),
  path VARCHAR2(200)
)
;
comment on table T_OPEN_ROLE_ITEM
  is '���Žӿ�����ҪȨ�޵���Ŀ��';
comment on column T_OPEN_ROLE_ITEM.id
  is 'id';
comment on column T_OPEN_ROLE_ITEM.name
  is '����';
comment on column T_OPEN_ROLE_ITEM.path
  is '��Ӧ�����·����antpath��񡣶���ö��ŷָ�';

prompt
prompt Creating table T_ORDER_EXCEPTION
prompt ================================
prompt
create table T_ORDER_EXCEPTION
(
  id           NUMBER(19) not null,
  act_order_id VARCHAR2(50 CHAR),
  create_time  VARCHAR2(14 CHAR),
  description  VARCHAR2(500 CHAR),
  source       VARCHAR2(100 CHAR),
  type         VARCHAR2(50 CHAR),
  user_id      VARCHAR2(50 CHAR)
)
;
alter table T_ORDER_EXCEPTION
  add primary key (ID);

prompt
prompt Creating table T_ORDER_REFUND
prompt =============================
prompt
create table T_ORDER_REFUND
(
  id                    NUMBER(9) not null,
  order_id              NUMBER(19),
  store_id              NUMBER(9),
  status                NUMBER(1),
  refund_fee            NUMBER(9,2),
  create_time           VARCHAR2(14),
  user_id               NUMBER(9),
  reason                VARCHAR2(300),
  shop_user_id          NUMBER(9),
  update_time           VARCHAR2(14),
  shop_remark           VARCHAR2(300),
  audit_user_id         NUMBER(9),
  audit_time            VARCHAR2(14),
  audit_remark          VARCHAR2(300),
  deal_time             VARCHAR2(14),
  cash_fee              NUMBER(9,2),
  coin_fee              NUMBER(9,2),
  total_code            NUMBER(9),
  success_code          NUMBER(9),
  order_record_cash_id  NUMBER(19),
  order_record_coin_id  NUMBER(19),
  order_record_score_id NUMBER(19)
)
;
comment on column T_ORDER_REFUND.order_id
  is '����id';
comment on column T_ORDER_REFUND.store_id
  is '�̻�id';
comment on column T_ORDER_REFUND.status
  is '״̬
		 1-�ȴ��̻�ȷ��
		2-�ȴ����
		3-�̻��ܾ�ȷ��
		4-�ȴ�ϵͳ�˿� 
		5-���ʧ��
		6-�˿�ɹ� 7-�˿�ʧ��';
comment on column T_ORDER_REFUND.refund_fee
  is 'ʵ���˿���';
comment on column T_ORDER_REFUND.create_time
  is '����ʱ��';
comment on column T_ORDER_REFUND.user_id
  is '������';
comment on column T_ORDER_REFUND.reason
  is '����ԭ��';
comment on column T_ORDER_REFUND.shop_user_id
  is '�̻�������';
comment on column T_ORDER_REFUND.update_time
  is '�̻�����ʱ��';
comment on column T_ORDER_REFUND.shop_remark
  is '�̻�˵��';
comment on column T_ORDER_REFUND.audit_user_id
  is '�����';
comment on column T_ORDER_REFUND.audit_time
  is '���ʱ��';
comment on column T_ORDER_REFUND.audit_remark
  is '���˵��';
comment on column T_ORDER_REFUND.deal_time
  is '����ʱ��';
comment on column T_ORDER_REFUND.cash_fee
  is 'ʵ���˿��ֽ�';
comment on column T_ORDER_REFUND.coin_fee
  is 'ʵ���˿��̳Ǳ�';
comment on column T_ORDER_REFUND.total_code
  is '����������';
comment on column T_ORDER_REFUND.success_code
  is '����ɹ�����';
comment on column T_ORDER_REFUND.order_record_cash_id
  is '�ɹ��˿���ֽ�id��0��ʾ���ýӿ��쳣';
comment on column T_ORDER_REFUND.order_record_coin_id
  is '�ɹ��˿���̳Ǳ�id��0��ʾ���ýӿ��쳣';
comment on column T_ORDER_REFUND.order_record_score_id
  is '�ɹ��˿�Ļ���id��0��ʾ���ýӿ��쳣';
alter table T_ORDER_REFUND
  add constraint PK_T_ORDER_REFUND primary key (ID);

prompt
prompt Creating table T_ORDER_REFUND_GOODS
prompt ===================================
prompt
create table T_ORDER_REFUND_GOODS
(
  id             NUMBER(9) not null,
  refund_id      NUMBER(9),
  order_goods_id NUMBER(19),
  goods_id       NUMBER(9),
  back_number    NUMBER(5),
  cash           NUMBER(9,2),
  coin           NUMBER(9,2)
)
;
comment on column T_ORDER_REFUND_GOODS.refund_id
  is '�˻������';
comment on column T_ORDER_REFUND_GOODS.order_goods_id
  is '������Ʒid';
comment on column T_ORDER_REFUND_GOODS.goods_id
  is '��Ʒid';
comment on column T_ORDER_REFUND_GOODS.back_number
  is '�˻�����';
comment on column T_ORDER_REFUND_GOODS.cash
  is '�ֽ�';
comment on column T_ORDER_REFUND_GOODS.coin
  is '�̳Ǳ�';
alter table T_ORDER_REFUND_GOODS
  add constraint PK_T_ORDER_REFUND_GOODS primary key (ID);

prompt
prompt Creating table T_PAGE_STATIC_INFO
prompt =================================
prompt
create table T_PAGE_STATIC_INFO
(
  id          NUMBER(8) not null,
  type        NUMBER(1) not null,
  resource_id NUMBER(8) not null,
  status      NUMBER(1) not null,
  create_time VARCHAR2(14) not null
)
;
comment on column T_PAGE_STATIC_INFO.type
  is '���ͣ�0����Ʒ��1���̻�';
comment on column T_PAGE_STATIC_INFO.resource_id
  is '��ԴID����ƷID���̻�ID';
comment on column T_PAGE_STATIC_INFO.status
  is '״̬��0�Ǿ�̬��ʧ�ܣ�1�Ǿ�̬���ɹ�';
alter table T_PAGE_STATIC_INFO
  add constraint PAGESTATICINFOID primary key (ID);

prompt
prompt Creating table T_PAY_ORDER
prompt ==========================
prompt
create table T_PAY_ORDER
(
  id             NUMBER(19) not null,
  act_order_id   NUMBER(19),
  pay_order_id   NUMBER(19),
  operate        NUMBER(3),
  pay_mode       NUMBER(3),
  pay_channel    VARCHAR2(50),
  user_id        NUMBER(19),
  shop_id        NUMBER(19),
  payment_amount NUMBER(9),
  status         NUMBER(3),
  status_text    VARCHAR2(500),
  create_time    VARCHAR2(14),
  update_time    VARCHAR2(14),
  remark         VARCHAR2(500),
  charge_time    VARCHAR2(14)
)
;
comment on table T_PAY_ORDER
  is '֧����������';
comment on column T_PAY_ORDER.id
  is '��¼ID';
comment on column T_PAY_ORDER.act_order_id
  is 'ҵ�񶩵�Id';
comment on column T_PAY_ORDER.pay_order_id
  is '֧������Id';
comment on column T_PAY_ORDER.operate
  is '1-֧��,2-�˿�';
comment on column T_PAY_ORDER.pay_mode
  is '1-web, 2-��̨';
comment on column T_PAY_ORDER.pay_channel
  is '֧������������֧����-ali, ����umpay, �ֻ�֧��cmpay,...';
comment on column T_PAY_ORDER.user_id
  is '�û�Id';
comment on column T_PAY_ORDER.shop_id
  is '�̻�Id���û������̻���';
comment on column T_PAY_ORDER.payment_amount
  is 'Ӧ����ȼ۽��(��λ:��)';
comment on column T_PAY_ORDER.status
  is '״̬, -1�쳣��0δִ�С�1ִ���С�2�ɹ���3ʧ��';
comment on column T_PAY_ORDER.status_text
  is '״̬����˵��';
comment on column T_PAY_ORDER.create_time
  is '����ʱ��';
comment on column T_PAY_ORDER.update_time
  is '״̬����ʱ��';
comment on column T_PAY_ORDER.remark
  is '������ע';
comment on column T_PAY_ORDER.charge_time
  is '֧��ƽ̨�ص��еġ�֧��/�˿��ʱ��';
create index IDX__PAY_ORDER_01 on T_PAY_ORDER (ACT_ORDER_ID);
create index IDX__PAY_ORDER_02 on T_PAY_ORDER (PAY_ORDER_ID);
alter table T_PAY_ORDER
  add constraint PK_PAY_ORDER primary key (ID);

prompt
prompt Creating table T_PAY_ORDER_PAYMENT
prompt ==================================
prompt
create table T_PAY_ORDER_PAYMENT
(
  id       NUMBER(19) not null,
  pid      NUMBER(19) not null,
  currency VARCHAR2(10),
  amount   NUMBER(9),
  remark   VARCHAR2(50)
)
;
comment on column T_PAY_ORDER_PAYMENT.id
  is '��¼ID';
comment on column T_PAY_ORDER_PAYMENT.pid
  is '����¼ID';
comment on column T_PAY_ORDER_PAYMENT.currency
  is '֧�����ң��ֽ�cache, ����score, �̳Ǳ�coin��...';
comment on column T_PAY_ORDER_PAYMENT.amount
  is '֧������';
comment on column T_PAY_ORDER_PAYMENT.remark
  is '��ע';
create index IDX_PAY_ORDER_PAYMENT on T_PAY_ORDER_PAYMENT (PID);

prompt
prompt Creating table T_PKG_DEBUG_LOG
prompt ==============================
prompt
create table T_PKG_DEBUG_LOG
(
  vtime     DATE,
  log_step  NUMBER(3),
  vtable    VARCHAR2(30),
  op_type   VARCHAR2(8),
  op_result VARCHAR2(500)
)
;

prompt
prompt Creating table T_RED_TMP
prompt ========================
prompt
create table T_RED_TMP
(
  id         NUMBER,
  red_member NUMBER
)
;

prompt
prompt Creating table T_ROUTER_RULE
prompt ============================
prompt
create table T_ROUTER_RULE
(
  sp_code VARCHAR2(22) not null,
  target  VARCHAR2(40) not null
)
;
comment on column T_ROUTER_RULE.sp_code
  is '�ط���';
comment on column T_ROUTER_RULE.target
  is 'Ŀ�Ķ���';

prompt
prompt Creating table T_ROUTER_RULE_SPECIAL
prompt ====================================
prompt
create table T_ROUTER_RULE_SPECIAL
(
  sp_code        VARCHAR2(21) not null,
  command        VARCHAR2(20),
  target_sp_code VARCHAR2(21),
  target_command VARCHAR2(20)
)
;
comment on column T_ROUTER_RULE_SPECIAL.sp_code
  is '�ط���';
comment on column T_ROUTER_RULE_SPECIAL.command
  is 'ָ�Ϊ��ʱƥ������ָ��';
comment on column T_ROUTER_RULE_SPECIAL.target_sp_code
  is 'Ŀ���ط��ţ�Ϊ��ʱ�ޱ仯';
comment on column T_ROUTER_RULE_SPECIAL.target_command
  is 'Ŀ��ָ�Ϊ��ʱ�ޱ仯';

prompt
prompt Creating table T_SALE_PAYTYPE_TMP
prompt =================================
prompt
create table T_SALE_PAYTYPE_TMP
(
  pid           NUMBER,
  coin_idgoods  INTEGER,
  cash_idgoods  INTEGER not null,
  score_idgoods INTEGER not null
)
;

prompt
prompt Creating table T_SALE_REGION_TMP
prompt ================================
prompt
create table T_SALE_REGION_TMP
(
  pid           NUMBER,
  province_code VARCHAR2(50),
  city_code     VARCHAR2(50),
  region_code   VARCHAR2(50)
)
;

prompt
prompt Creating table T_SC_APP_INFO
prompt ============================
prompt
create table T_SC_APP_INFO
(
  id             NUMBER(9) not null,
  app_code       VARCHAR2(50),
  app_name       VARCHAR2(200),
  app_remark     CLOB,
  app_open_url   VARCHAR2(500),
  app_close_url  VARCHAR2(500),
  app_url        VARCHAR2(500),
  status         NUMBER(2) default 1 not null,
  app_contacts   VARCHAR2(200),
  app_tel        VARCHAR2(200),
  app_mail       VARCHAR2(200),
  app_notice_url VARCHAR2(200)
)
;
comment on column T_SC_APP_INFO.app_code
  is 'Ӧ��ʶ����';
comment on column T_SC_APP_INFO.app_name
  is 'Ӧ������';
comment on column T_SC_APP_INFO.app_remark
  is 'Ӧ��˵��';
comment on column T_SC_APP_INFO.app_open_url
  is 'Ӧ�ÿ�ͨ����';
comment on column T_SC_APP_INFO.app_close_url
  is 'Ӧ�ùر�����';
comment on column T_SC_APP_INFO.app_url
  is 'Ӧ�÷��ʵ�ַ';
comment on column T_SC_APP_INFO.status
  is '1������
0��ͣ��';
comment on column T_SC_APP_INFO.app_contacts
  is '��ϵ��';
comment on column T_SC_APP_INFO.app_tel
  is '��ϵ�绰';
comment on column T_SC_APP_INFO.app_mail
  is '��ϵ������';
comment on column T_SC_APP_INFO.app_notice_url
  is 'Ӧ��͸���ӿ�';

prompt
prompt Creating table T_SC_APP_PRODUCT
prompt ===============================
prompt
create table T_SC_APP_PRODUCT
(
  id             NUMBER(9) not null,
  app_id         NUMBER(9),
  product_id     VARCHAR2(50),
  product_name   VARCHAR2(200),
  product_remark VARCHAR2(2000),
  product_price  NUMBER(8,2),
  product_type   NUMBER(2)
)
;
comment on column T_SC_APP_PRODUCT.product_type
  is '1:�����ײ�
2:���Ӱ�';
alter table T_SC_APP_PRODUCT
  add constraint PK_T_APP_PRODUCT primary key (ID);

prompt
prompt Creating table T_SC_APP_USE_EVENT
prompt =================================
prompt
create table T_SC_APP_USE_EVENT
(
  id            NUMBER(9) not null,
  app_code      VARCHAR2(50),
  event_type_id VARCHAR2(50),
  event_name    VARCHAR2(50),
  event_remark  VARCHAR2(200)
)
;
comment on column T_SC_APP_USE_EVENT.app_code
  is 'Ӧ��ʶ����';
comment on column T_SC_APP_USE_EVENT.event_type_id
  is '�¼����ͱ��';
comment on column T_SC_APP_USE_EVENT.event_name
  is '�¼�����';
comment on column T_SC_APP_USE_EVENT.event_remark
  is '����';
alter table T_SC_APP_USE_EVENT
  add constraint PK_T_SC_APP_SHOP_EVENT primary key (ID);

prompt
prompt Creating table T_SC_APP_USE_LOG
prompt ===============================
prompt
create table T_SC_APP_USE_LOG
(
  id            NUMBER(9) not null,
  app_code      VARCHAR2(50),
  app_name      VARCHAR2(200),
  product_id    VARCHAR2(50),
  product_name  VARCHAR2(200),
  shop_id       NUMBER(9),
  event_type_id VARCHAR2(50),
  event_time    VARCHAR2(14),
  event_value   VARCHAR2(200)
)
;
comment on column T_SC_APP_USE_LOG.id
  is '����';
comment on column T_SC_APP_USE_LOG.app_code
  is 'Ӧ��ʶ����';
comment on column T_SC_APP_USE_LOG.app_name
  is 'Ӧ������';
comment on column T_SC_APP_USE_LOG.product_id
  is '��ƷID';
comment on column T_SC_APP_USE_LOG.product_name
  is '��Ʒ����';
comment on column T_SC_APP_USE_LOG.shop_id
  is '�̻�ID';
comment on column T_SC_APP_USE_LOG.event_type_id
  is '�¼����ͱ��';
comment on column T_SC_APP_USE_LOG.event_time
  is '�¼�ʱ��';
comment on column T_SC_APP_USE_LOG.event_value
  is '�¼�ֵ';
alter table T_SC_APP_USE_LOG
  add constraint PK_T_SC_APP_USE_LOG primary key (ID);

prompt
prompt Creating table T_SC_ESOP_SHOP_SYNC_LOG
prompt ======================================
prompt
create table T_SC_ESOP_SHOP_SYNC_LOG
(
  id           NUMBER(9) not null,
  update_time  VARCHAR2(14),
  content      VARCHAR2(1000),
  shop_name    VARCHAR2(200),
  shop_contact VARCHAR2(20),
  tel          VARCHAR2(50),
  email        VARCHAR2(50),
  shop_address VARCHAR2(100)
)
;
comment on column T_SC_ESOP_SHOP_SYNC_LOG.id
  is '����';
comment on column T_SC_ESOP_SHOP_SYNC_LOG.update_time
  is 'ͬ��ʱ��';
comment on column T_SC_ESOP_SHOP_SYNC_LOG.content
  is 'ԭʼ����';
comment on column T_SC_ESOP_SHOP_SYNC_LOG.shop_name
  is '�̻�����';
comment on column T_SC_ESOP_SHOP_SYNC_LOG.shop_contact
  is '��ϵ��';
comment on column T_SC_ESOP_SHOP_SYNC_LOG.tel
  is '�绰';
comment on column T_SC_ESOP_SHOP_SYNC_LOG.email
  is '����';
comment on column T_SC_ESOP_SHOP_SYNC_LOG.shop_address
  is '��ַ';
alter table T_SC_ESOP_SHOP_SYNC_LOG
  add constraint PK_T_SC_ESOP_SHOP_SYNC_LOG primary key (ID);

prompt
prompt Creating table T_SC_SHOP_ORDER
prompt ==============================
prompt
create table T_SC_SHOP_ORDER
(
  id             NUMBER(9) not null,
  shop_id        NUMBER(9),
  app_id         NUMBER(9),
  product_id     VARCHAR2(50),
  update_time    VARCHAR2(14),
  product_status NUMBER(2),
  end_time       VARCHAR2(14)
)
;
comment on column T_SC_SHOP_ORDER.id
  is '����';
comment on column T_SC_SHOP_ORDER.shop_id
  is '�̻�ID';
comment on column T_SC_SHOP_ORDER.app_id
  is 'Ӧ�ñ��';
comment on column T_SC_SHOP_ORDER.product_id
  is 'ҵ����';
comment on column T_SC_SHOP_ORDER.update_time
  is 'ͬ��ʱ��';
comment on column T_SC_SHOP_ORDER.product_status
  is 'Ӧ��״̬ 1:��ͨ
2:ͣ��
';
comment on column T_SC_SHOP_ORDER.end_time
  is '����ʱ��';
alter table T_SC_SHOP_ORDER
  add constraint PK_T_SC_USER_ORDER primary key (ID);

prompt
prompt Creating table T_SC_SHOP_ORDER_HISTORY
prompt ======================================
prompt
create table T_SC_SHOP_ORDER_HISTORY
(
  id             NUMBER(9) not null,
  shop_id        NUMBER(9),
  app_id         NUMBER(9),
  product_id     VARCHAR2(50),
  update_time    VARCHAR2(14),
  product_status NUMBER(2),
  end_time       VARCHAR2(14)
)
;
comment on column T_SC_SHOP_ORDER_HISTORY.id
  is '����';
comment on column T_SC_SHOP_ORDER_HISTORY.shop_id
  is '�̻�ID';
comment on column T_SC_SHOP_ORDER_HISTORY.app_id
  is 'Ӧ�ñ��';
comment on column T_SC_SHOP_ORDER_HISTORY.product_id
  is 'ҵ����';
comment on column T_SC_SHOP_ORDER_HISTORY.update_time
  is 'ͬ��ʱ��';
comment on column T_SC_SHOP_ORDER_HISTORY.product_status
  is 'Ӧ��״̬ 1:��ͨ
2:ͣ��
';
comment on column T_SC_SHOP_ORDER_HISTORY.end_time
  is '����ʱ��';
alter table T_SC_SHOP_ORDER_HISTORY
  add constraint PK_T_SC_USER_ORDER_HISTORY primary key (ID);

prompt
prompt Creating table T_SC_SHOP_ORDER_UNTREDTED
prompt ========================================
prompt
create table T_SC_SHOP_ORDER_UNTREDTED
(
  id             NUMBER(9) not null,
  shop_id        NUMBER(9),
  product_id     VARCHAR2(50),
  update_time    VARCHAR2(14),
  product_status NUMBER(2),
  deal_time      VARCHAR2(14),
  deal_status    NUMBER(2)
)
;
comment on column T_SC_SHOP_ORDER_UNTREDTED.id
  is '����';
comment on column T_SC_SHOP_ORDER_UNTREDTED.shop_id
  is '�̻�ID';
comment on column T_SC_SHOP_ORDER_UNTREDTED.product_id
  is 'ҵ����';
comment on column T_SC_SHOP_ORDER_UNTREDTED.update_time
  is 'ͬ��ʱ��';
comment on column T_SC_SHOP_ORDER_UNTREDTED.product_status
  is 'Ӧ��״̬  0:�ر�
1:��ͨ
2:��ͣ
3:�ָ�';
comment on column T_SC_SHOP_ORDER_UNTREDTED.deal_time
  is '����ʱ��';
comment on column T_SC_SHOP_ORDER_UNTREDTED.deal_status
  is '����״̬  0��δ����
1���Ѵ���';
alter table T_SC_SHOP_ORDER_UNTREDTED
  add constraint PK_T_SC_USER_ORDER_UNTREDTED primary key (ID);

prompt
prompt Creating table T_SC_SYS_LOG
prompt ===========================
prompt
create table T_SC_SYS_LOG
(
  id          NUMBER(9) not null,
  user_id     VARCHAR2(20) not null,
  oper_time   VARCHAR2(14) not null,
  oper_type   NUMBER(3) not null,
  module      VARCHAR2(100) not null,
  description VARCHAR2(200),
  result_code VARCHAR2(10),
  ip          VARCHAR2(20),
  user_name   VARCHAR2(100),
  user_type   VARCHAR2(20),
  op_id       NUMBER(9)
)
;
comment on table T_SC_SYS_LOG
  is 'ϵͳ��־��';
comment on column T_SC_SYS_LOG.oper_type
  is '��������   1-�鿴 2-��� 3-�޸� 4-ɾ�� 5-���  6-����';
comment on column T_SC_SYS_LOG.result_code
  is '�����Ƿ�ɹ� 0-�ɹ�  ��0 ʧ��';
comment on column T_SC_SYS_LOG.user_name
  is '�û�����';
comment on column T_SC_SYS_LOG.user_type
  is '�û�����';
comment on column T_SC_SYS_LOG.op_id
  is '��������ID';

prompt
prompt Creating table T_SC_SYS_MENU
prompt ============================
prompt
create table T_SC_SYS_MENU
(
  menu_code  VARCHAR2(20) not null,
  menu_name  VARCHAR2(50) not null,
  menu_pcode VARCHAR2(20) not null,
  menu_url   VARCHAR2(100),
  leaf_yn    NUMBER(3) not null,
  model_code VARCHAR2(200),
  url_btns   VARCHAR2(100),
  sys_type   NUMBER(1) not null
)
;
comment on table T_SC_SYS_MENU
  is '�˵���';
comment on column T_SC_SYS_MENU.menu_code
  is '�˵�code��Ψһֵ';
comment on column T_SC_SYS_MENU.menu_name
  is '�˵�����';
comment on column T_SC_SYS_MENU.menu_pcode
  is '��ǰ�˵����˵�code';
comment on column T_SC_SYS_MENU.menu_url
  is '�˵�ָ���URL���ӣ�û�����ӿ���ʹ��#';
comment on column T_SC_SYS_MENU.leaf_yn
  is '�Ƿ�Ϊĩ����־��0-��;1��';
comment on column T_SC_SYS_MENU.model_code
  is '��ʶģ��,��ĩ���˵���Ҫָ�����ֶ�,���ڱ�ϵͳ�ھ���Ψһ��';
comment on column T_SC_SYS_MENU.url_btns
  is 'ÿ��ҳ����ӵ�еİ�ť(add_btn,mod_btn,del_btn)';
comment on column T_SC_SYS_MENU.sys_type
  is 'ÿ��ϵͳ���Լ��Ĳ˵���0��̨����ϵͳ 1�̻��Է���ҵ���ŵ� 2�̻��Է�������̻� 3�̻��Է���������';

prompt
prompt Creating table T_SC_SYS_REGION
prompt ==============================
prompt
create table T_SC_SYS_REGION
(
  id            NUMBER(9) not null,
  region_code   VARCHAR2(100),
  region_name   VARCHAR2(200),
  region_level  NUMBER(10),
  parent_region VARCHAR2(100) not null,
  short_name    VARCHAR2(50),
  region_spell  VARCHAR2(200),
  is_show       NUMBER(1) default 1,
  sort_num      NUMBER(9) default 99999,
  area_code     VARCHAR2(20)
)
;
comment on table T_SC_SYS_REGION
  is 'ϵͳ���������';
comment on column T_SC_SYS_REGION.region_code
  is '�������';
comment on column T_SC_SYS_REGION.region_name
  is '��������';
comment on column T_SC_SYS_REGION.region_level
  is '����ȼ�';
comment on column T_SC_SYS_REGION.parent_region
  is '������
0-һ������';
comment on column T_SC_SYS_REGION.short_name
  is '���';
comment on column T_SC_SYS_REGION.region_spell
  is '����ƴ��';
comment on column T_SC_SYS_REGION.is_show
  is '�Ƿ���ʾ 0-����ʾ 1-��ʾ';
comment on column T_SC_SYS_REGION.sort_num
  is '����';
comment on column T_SC_SYS_REGION.area_code
  is '������';

prompt
prompt Creating table T_SC_SYS_ROLE
prompt ============================
prompt
create table T_SC_SYS_ROLE
(
  id             NUMBER(9) not null,
  remark         VARCHAR2(200),
  update_user_id NUMBER(9),
  update_time    VARCHAR2(14),
  role_name      VARCHAR2(50 CHAR) not null,
  unit_id        VARCHAR2(20 CHAR)
)
;
comment on table T_SC_SYS_ROLE
  is '��ɫ����';
comment on column T_SC_SYS_ROLE.id
  is 'ID��ʹ������SEQ_COMM_ID';
comment on column T_SC_SYS_ROLE.remark
  is '��ע';
comment on column T_SC_SYS_ROLE.update_user_id
  is '�����ˣ�ƥ��T_SYS_USER���е�ID�ֶ�';
comment on column T_SC_SYS_ROLE.update_time
  is '����ʱ��';

prompt
prompt Creating table T_SC_SYS_ROLE_PRIVILEGE
prompt ======================================
prompt
create table T_SC_SYS_ROLE_PRIVILEGE
(
  id        NUMBER(9) not null,
  role_id   NUMBER(9),
  menu_code VARCHAR2(20),
  menu_btn  VARCHAR2(100)
)
;
comment on table T_SC_SYS_ROLE_PRIVILEGE
  is '[����Ȩ�ް�ť�б�]:
ϵͳ�й̻���Ȩ�ް�ť,����,�޸�,ɾ��,�鿴,���..
���ƶ�Ӧ:ADD_BTN,MOD_BTN,DEL_BTN,VIEW_BTN,AUDIT_BTN...';
comment on column T_SC_SYS_ROLE_PRIVILEGE.id
  is 'ID';
comment on column T_SC_SYS_ROLE_PRIVILEGE.menu_btn
  is '��ӵ�еİ�ť�����б�,��ʽ��:ADD_BTN,MOD_BTN,DEL_BTN';

prompt
prompt Creating table T_SC_SYS_UNIT
prompt ============================
prompt
create table T_SC_SYS_UNIT
(
  id             NUMBER(9) not null,
  name           VARCHAR2(100) not null,
  area_code      VARCHAR2(8),
  unit_type      NUMBER(1) not null,
  remark         VARCHAR2(200),
  flag           NUMBER(1) not null,
  update_user_id NUMBER(9) not null,
  update_time    VARCHAR2(14) not null,
  prov_id        NUMBER(9),
  parent_unit_id NUMBER(9)
)
;
comment on column T_SC_SYS_UNIT.id
  is '��λID';
comment on column T_SC_SYS_UNIT.name
  is '��λ����';
comment on column T_SC_SYS_UNIT.area_code
  is '��λ�������У�ƥ��T_SYS_regon����AREA_CODE';
comment on column T_SC_SYS_UNIT.unit_type
  is '��λ���࣬1-���̻��ص�λ
2-ʡ��λ
3-���е�λ';
comment on column T_SC_SYS_UNIT.remark
  is '��ע';
comment on column T_SC_SYS_UNIT.flag
  is '��λ��ʶ��0��ʾ������9��ʾע��';
comment on column T_SC_SYS_UNIT.update_user_id
  is '��λ����û�ID��ƥ��T_SYS_USER����ID';
comment on column T_SC_SYS_UNIT.update_time
  is '��λ����ʱ��';
comment on column T_SC_SYS_UNIT.prov_id
  is '��λ����ʡID';

prompt
prompt Creating table T_SC_SYS_USER
prompt ============================
prompt
create table T_SC_SYS_USER
(
  id              NUMBER(9) not null,
  user_code       VARCHAR2(20) not null,
  user_pwd        VARCHAR2(60) not null,
  user_name       VARCHAR2(100) not null,
  terminal_id     VARCHAR2(30),
  email           VARCHAR2(100),
  remark          VARCHAR2(200),
  valid_time      VARCHAR2(8),
  create_time     VARCHAR2(14) not null,
  change_pwd_time VARCHAR2(14),
  update_time     VARCHAR2(14) not null,
  update_user_id  NUMBER(9) not null,
  lock_status     NUMBER(3) default 0 not null,
  status          NUMBER(3) default 1 not null,
  flag            NUMBER(3) not null,
  unit_id         NUMBER(9) default 0 not null
)
;
comment on table T_SC_SYS_USER
  is '1.ϵͳ�����û���һ�ű���ά��

2.�û�����˵��:��Ӫ�����ӱ���λ�û�ʱ,��ѡ��[2]-��ͨ�û�,[3]-�ͷ��û�
  �ͻ�ϵͳ��Ա�й̻���Ȩ��.';
comment on column T_SC_SYS_USER.id
  is 'ID';
comment on column T_SC_SYS_USER.user_code
  is 'ȫƽ̨Ψһ���û��ʺţ����ڵ�¼';
comment on column T_SC_SYS_USER.user_pwd
  is '����';
comment on column T_SC_SYS_USER.user_name
  is '�û���ʵ����';
comment on column T_SC_SYS_USER.terminal_id
  is '�ն˺���';
comment on column T_SC_SYS_USER.email
  is 'EMAIL��ַ';
comment on column T_SC_SYS_USER.remark
  is '����';
comment on column T_SC_SYS_USER.valid_time
  is '�ʻ���Ч�ڣ�8λ���ڣ����Ϊ�����ʾ������Ч';
comment on column T_SC_SYS_USER.create_time
  is '�û�����ʱ��';
comment on column T_SC_SYS_USER.change_pwd_time
  is '�û��޸�����ʱ��';
comment on column T_SC_SYS_USER.update_time
  is '�˺Ÿ���ʱ��';
comment on column T_SC_SYS_USER.update_user_id
  is '�����û�ID��ƥ��T_SYS_USER_V2���е�ID�ֶ�';
comment on column T_SC_SYS_USER.lock_status
  is '�ʺ�����״̬��0,����;1,����';
comment on column T_SC_SYS_USER.status
  is '[1]:����,[2]:��ͣ,[3]:ɾ��';
comment on column T_SC_SYS_USER.flag
  is '[0]:��������Ա,[1]:��λ����Ա [2]��λ��ͨ��Ա [3]';
comment on column T_SC_SYS_USER.unit_id
  is '���û�������λ��ƥ���T_UNIT��ID';

prompt
prompt Creating table T_SC_SYS_USER_REGION
prompt ===================================
prompt
create table T_SC_SYS_USER_REGION
(
  id          NUMBER(9) not null,
  user_id     NUMBER(9),
  region_code VARCHAR2(100)
)
;
comment on table T_SC_SYS_USER_REGION
  is 'ϵͳ�û������
�ñ���Ҫ���������Ȩ�޽��й���
���û����Բ�����������й���';

prompt
prompt Creating table T_SC_SYS_USER_ROLE
prompt =================================
prompt
create table T_SC_SYS_USER_ROLE
(
  user_id NUMBER(9) not null,
  role_id NUMBER(9) not null,
  id      NUMBER(9) not null
)
;
comment on table T_SC_SYS_USER_ROLE
  is '�û����ɫ��Զ��ϵ';
comment on column T_SC_SYS_USER_ROLE.user_id
  is '�û�ID';
comment on column T_SC_SYS_USER_ROLE.role_id
  is '��ɫID';

prompt
prompt Creating table T_SHOP
prompt =====================
prompt
create table T_SHOP
(
  id              NUMBER(8) not null,
  ac_shop_id      NUMBER(8),
  name            VARCHAR2(50),
  short_name      VARCHAR2(20),
  area_code       VARCHAR2(10),
  sort            NUMBER(1),
  discount_detail VARCHAR2(100),
  is_chain        NUMBER(1),
  is_base_shop    NUMBER(1),
  base_shop_name  VARCHAR2(50),
  create_time     VARCHAR2(14),
  update_time     VARCHAR2(14),
  start_time      VARCHAR2(14),
  stop_time       VARCHAR2(14),
  address         VARCHAR2(100),
  phone           VARCHAR2(50),
  open_time       VARCHAR2(50),
  bus_line        VARCHAR2(50),
  area            VARCHAR2(20),
  park_place      VARCHAR2(20),
  avg_spend       NUMBER(8),
  room_num        VARCHAR2(50),
  map_long        VARCHAR2(20),
  map_dim         VARCHAR2(20),
  shop_user_id    NUMBER(9),
  status          NUMBER(9),
  is_valid        NUMBER(1),
  shop_class      NUMBER(1),
  logo            VARCHAR2(100),
  remark          CLOB
)
;
comment on table T_SHOP
  is '�洢ҵ���ŵ������Ϣ';
comment on column T_SHOP.ac_shop_id
  is '�����̻���ţ�����Ϊ��';
comment on column T_SHOP.name
  is '�̻�����';
comment on column T_SHOP.short_name
  is '�̻����';
comment on column T_SHOP.area_code
  is '��������';
comment on column T_SHOP.sort
  is '0--��ǩԼ
1--ǩԼ';
comment on column T_SHOP.discount_detail
  is '�ۿ�����';
comment on column T_SHOP.is_chain
  is '�Ƿ�����
0-��
1-��';
comment on column T_SHOP.is_base_shop
  is '�Ƿ��ܵ�
0-��
1-��';
comment on column T_SHOP.base_shop_name
  is '�ܵ�����';
comment on column T_SHOP.create_time
  is '����ʱ��';
comment on column T_SHOP.update_time
  is '����ʱ��';
comment on column T_SHOP.start_time
  is '��Ч��ʼʱ��';
comment on column T_SHOP.stop_time
  is '��Ч����ʱ��';
comment on column T_SHOP.address
  is '�̻���ַ';
comment on column T_SHOP.phone
  is '��ϵ�绰';
comment on column T_SHOP.open_time
  is 'Ӫҵʱ��';
comment on column T_SHOP.bus_line
  is '������·';
comment on column T_SHOP.area
  is '���';
comment on column T_SHOP.park_place
  is 'ͣ��λ';
comment on column T_SHOP.avg_spend
  is '�˾�����';
comment on column T_SHOP.room_num
  is '������';
comment on column T_SHOP.map_long
  is '��ͼ���꾭��';
comment on column T_SHOP.map_dim
  is '��ͼ����ά��';
comment on column T_SHOP.shop_user_id
  is '�����̻��˺ű��';
comment on column T_SHOP.status
  is '0--�ݸ�
1--�����
2--�����
3--���ͨ��
4--��˲���';
comment on column T_SHOP.is_valid
  is ' �̻��Ƿ���Ч 0--�¼�
1--�ϼ�';
comment on column T_SHOP.shop_class
  is ' 1--ҵ���ŵ�
2--�����̻�
3--������
�˴�Ĭ��1';
comment on column T_SHOP.logo
  is '�ŵ�logoͼ·��';
comment on column T_SHOP.remark
  is '��ϸ����';
alter table T_SHOP
  add constraint PK_T_SHOP primary key (ID);

prompt
prompt Creating table T_SHOP_COMMENT
prompt =============================
prompt
create table T_SHOP_COMMENT
(
  id          NUMBER(8),
  content     VARCHAR2(200),
  update_time VARCHAR2(14),
  user_id     NUMBER(8),
  status      NUMBER(1),
  shop_class  NUMBER(1),
  shop_id     NUMBER(8)
)
;
comment on column T_SHOP_COMMENT.status
  is '0-δ���
1-���ͨ��
2-��˲���';
comment on column T_SHOP_COMMENT.shop_class
  is '1-ҵ���ŵ�
2-�̻�
3-������';

prompt
prompt Creating table T_SHOP_CUSTOMER_SERVICE
prompt ======================================
prompt
create table T_SHOP_CUSTOMER_SERVICE
(
  id         NUMBER(9) not null,
  nick_name  VARCHAR2(50),
  code       VARCHAR2(2000),
  shop_class NUMBER(1),
  shop_id    NUMBER(9),
  status     NUMBER(1)
)
;
comment on column T_SHOP_CUSTOMER_SERVICE.nick_name
  is '�ͷ��ǳ�';
comment on column T_SHOP_CUSTOMER_SERVICE.code
  is '���Ŵ���';
comment on column T_SHOP_CUSTOMER_SERVICE.shop_class
  is '"1--ҵ���ŵ�
2--�̻�
3--������"';
comment on column T_SHOP_CUSTOMER_SERVICE.status
  is '1 -��Ч 0-��Ч';
alter table T_SHOP_CUSTOMER_SERVICE
  add constraint PK_T_SHOP_CUSTOMER_SERVICE primary key (ID);

prompt
prompt Creating table T_SHOP_DELIVERY_MODE
prompt ===================================
prompt
create table T_SHOP_DELIVERY_MODE
(
  id           NUMBER(9) not null,
  logistics_id NUMBER(9),
  shop_class   NUMBER(1),
  shop_id      NUMBER(9),
  fee          NUMBER(9,2)
)
;
comment on table T_SHOP_DELIVERY_MODE
  is '�������ͷ�ʽ';
comment on column T_SHOP_DELIVERY_MODE.id
  is 'ID';
comment on column T_SHOP_DELIVERY_MODE.logistics_id
  is '������Ϣ��ID';
comment on column T_SHOP_DELIVERY_MODE.shop_class
  is '1--ҵ���ŵ�
2--�̻�
3--������';
comment on column T_SHOP_DELIVERY_MODE.fee
  is '�˷�';
alter table T_SHOP_DELIVERY_MODE
  add constraint PK_T_SHOP_DELIVERY_MODE primary key (ID);

prompt
prompt Creating table T_SHOP_EXT
prompt =========================
prompt
create table T_SHOP_EXT
(
  id          NUMBER(8) not null,
  shop_id     NUMBER(8),
  comment_num NUMBER(8),
  s_level     NUMBER(8),
  fz_store_id NUMBER(8),
  fz_shop_id  NUMBER(8)
)
;
comment on table T_SHOP_EXT
  is 'ҵ���ŵ�����չ�ֶα���t_shop_bs ��ϵ1:1';
comment on column T_SHOP_EXT.s_level
  is '1/2/3/4/5��';
comment on column T_SHOP_EXT.fz_store_id
  is '�̻�����ͬ��ID';
comment on column T_SHOP_EXT.fz_shop_id
  is '�ŵ귽��ͬ��ID';
alter table T_SHOP_EXT
  add constraint PK_T_SHOP_EXT primary key (ID);

prompt
prompt Creating table T_SHOP_HOMEPAGE_SHOW
prompt ===================================
prompt
create table T_SHOP_HOMEPAGE_SHOW
(
  id           NUMBER(9) not null,
  title        VARCHAR2(100),
  shelf_id     NUMBER(9),
  good_num     NUMBER(3),
  status       NUMBER(1),
  order_index  NUMBER(1),
  shop_class   NUMBER(1),
  shop_id      NUMBER(9),
  shop_user_id NUMBER(9),
  update_time  VARCHAR2(14)
)
;
comment on table T_SHOP_HOMEPAGE_SHOW
  is '��ҳ��Ʒչʾ���ñ�';
comment on column T_SHOP_HOMEPAGE_SHOW.title
  is '����';
comment on column T_SHOP_HOMEPAGE_SHOW.shelf_id
  is '����ID';
comment on column T_SHOP_HOMEPAGE_SHOW.good_num
  is '��Ʒ����';
comment on column T_SHOP_HOMEPAGE_SHOW.status
  is '״̬��0��ͣ�ã�1������';
comment on column T_SHOP_HOMEPAGE_SHOW.order_index
  is '����';
comment on column T_SHOP_HOMEPAGE_SHOW.shop_class
  is '�̻����ࣺ1--ҵ���ŵ�
2--�����̻�
3--������';
comment on column T_SHOP_HOMEPAGE_SHOW.shop_id
  is '�̻����';
comment on column T_SHOP_HOMEPAGE_SHOW.shop_user_id
  is '�̻��˺�ID';
comment on column T_SHOP_HOMEPAGE_SHOW.update_time
  is '����ʱ��';
alter table T_SHOP_HOMEPAGE_SHOW
  add constraint T_SHOP_HOMEPAGE_SHOW_ID primary key (ID);

prompt
prompt Creating table T_SHOP_HOMEPAGE_SHOW_1
prompt =====================================
prompt
create table T_SHOP_HOMEPAGE_SHOW_1
(
  id           NUMBER(9) not null,
  title        VARCHAR2(100),
  shelf_id     NUMBER(9),
  good_num     NUMBER(3),
  status       NUMBER(1),
  order_index  NUMBER(1),
  shop_class   NUMBER(1),
  shop_id      NUMBER(9),
  shop_user_id NUMBER(9),
  update_time  VARCHAR2(14),
  store_id     VARCHAR2(30)
)
;

prompt
prompt Creating table T_SHOP_INVOICE
prompt =============================
prompt
create table T_SHOP_INVOICE
(
  id           NUMBER(9) not null,
  shop_class   NUMBER(1),
  shop_id      NUMBER(9),
  invoice_id   NUMBER(9),
  invoice_name VARCHAR2(40)
)
;
comment on table T_SHOP_INVOICE
  is '�̻���Ʊ��';
comment on column T_SHOP_INVOICE.shop_class
  is '�̻�����';
comment on column T_SHOP_INVOICE.shop_id
  is '�̻�id';
comment on column T_SHOP_INVOICE.invoice_id
  is '��Ʊid';
comment on column T_SHOP_INVOICE.invoice_name
  is '��Ʊ��';
alter table T_SHOP_INVOICE
  add constraint PK_SHOP_INVOICE primary key (ID);

prompt
prompt Creating table T_SHOP_LOGIN_LOG
prompt ===============================
prompt
create table T_SHOP_LOGIN_LOG
(
  id           NUMBER(9) not null,
  user_name    VARCHAR2(20),
  user_id      NUMBER(9),
  ip           VARCHAR2(15),
  login_time   VARCHAR2(14),
  success_flag NUMBER(2),
  user_code    VARCHAR2(20),
  shop_id      NUMBER(9),
  shop_class   NUMBER(1),
  shop_name    VARCHAR2(100)
)
;
comment on column T_SHOP_LOGIN_LOG.success_flag
  is '1-�ɹ� 0-ʧ��';

prompt
prompt Creating table T_SHOP_OP_LOG
prompt ============================
prompt
create table T_SHOP_OP_LOG
(
  id          NUMBER(9) not null,
  user_id     VARCHAR2(20) not null,
  oper_time   VARCHAR2(14) not null,
  oper_type   NUMBER(3) not null,
  module      VARCHAR2(100) not null,
  description VARCHAR2(1000),
  result_code VARCHAR2(10),
  ip          VARCHAR2(20),
  user_name   VARCHAR2(100),
  op_id       NUMBER(16),
  shop_id     NUMBER(9),
  shop_class  NUMBER(1),
  shop_name   VARCHAR2(100),
  user_code   VARCHAR2(20)
)
;
comment on column T_SHOP_OP_LOG.oper_type
  is '��������   1-�鿴 2-��� 3-�޸� 4-ɾ�� 5-���  6-����';
comment on column T_SHOP_OP_LOG.result_code
  is '�����Ƿ�ɹ� 0-�ɹ�  ��0 ʧ��';
comment on column T_SHOP_OP_LOG.user_name
  is '�û�����';
comment on column T_SHOP_OP_LOG.op_id
  is '��������ID';
comment on column T_SHOP_OP_LOG.shop_id
  is '�̻�ID';
comment on column T_SHOP_OP_LOG.shop_class
  is '�̻����';
comment on column T_SHOP_OP_LOG.shop_name
  is '�̻���';
comment on column T_SHOP_OP_LOG.user_code
  is '�û��ʺ�';

prompt
prompt Creating table T_SHOP_POS_LINK
prompt ==============================
prompt
create table T_SHOP_POS_LINK
(
  id          NUMBER(8) not null,
  shop_id     NUMBER(8),
  pos_id      NUMBER(8),
  pos_no      VARCHAR2(50),
  terminal_id VARCHAR2(50)
)
;
comment on table T_SHOP_POS_LINK
  is 'ҵ���ŵ��ն˹�ϵ��ÿ���ŵ�������ö���ն�';
comment on column T_SHOP_POS_LINK.terminal_id
  is '�ն˱�ʶ';
alter table T_SHOP_POS_LINK
  add constraint PK_T_SHOP_POS_LINK primary key (ID);

prompt
prompt Creating table T_SHOP_REGION
prompt ============================
prompt
create table T_SHOP_REGION
(
  id          NUMBER(9) not null,
  region_code VARCHAR2(100),
  shop_class  NUMBER(1),
  shop_id     NUMBER(9)
)
;
comment on column T_SHOP_REGION.region_code
  is '�������';
comment on column T_SHOP_REGION.shop_class
  is '�̻����ࣺ1-ҵ���ŵꣻ2-�����̻���3-������';
comment on column T_SHOP_REGION.shop_id
  is '�̻����';

prompt
prompt Creating table T_SHOP_SETTINGS
prompt ==============================
prompt
create table T_SHOP_SETTINGS
(
  id               NUMBER(9) not null,
  shop_pic_url     VARCHAR2(100),
  homepage_word    CLOB,
  shop_class       NUMBER(1),
  shop_id          NUMBER(9),
  pic_name         VARCHAR2(100),
  pub_tag          NUMBER(1) default 0,
  operate_end_time VARCHAR2(14)
)
;
comment on table T_SHOP_SETTINGS
  is '�̻�������Ϣ';
comment on column T_SHOP_SETTINGS.shop_pic_url
  is '�̻�����ͼƬ·��';
comment on column T_SHOP_SETTINGS.homepage_word
  is '��ҳ���ֽ���';
comment on column T_SHOP_SETTINGS.shop_class
  is '1--ҵ���ŵ�
2--�̻�
3--������';
comment on column T_SHOP_SETTINGS.pic_name
  is 'ͼƬ����';
comment on column T_SHOP_SETTINGS.pub_tag
  is '����״̬�� 0δ���� 1�ѷ��� �޸������������ú���ֶ�Ϊ 0 ��˺�Ϊ1';
comment on column T_SHOP_SETTINGS.operate_end_time
  is '������ʱ��';
alter table T_SHOP_SETTINGS
  add constraint T_SHOP_SETTINGS_ID primary key (ID);

prompt
prompt Creating table T_SHOP_SETTINGS_1
prompt ================================
prompt
create table T_SHOP_SETTINGS_1
(
  id            NUMBER(9) not null,
  shop_pic_url  VARCHAR2(100),
  homepage_word CLOB,
  shop_class    NUMBER(1),
  shop_id       NUMBER(9),
  pic_name      VARCHAR2(100),
  xw_store_id   VARCHAR2(32)
)
;

prompt
prompt Creating table T_SHOP_TAG
prompt =========================
prompt
create table T_SHOP_TAG
(
  id         NUMBER(8) not null,
  shop_class NUMBER(1),
  shop_id    NUMBER(8),
  tag        VARCHAR2(20)
)
;
comment on table T_SHOP_TAG
  is '����̻���ǩ��ʶ��������';
comment on column T_SHOP_TAG.shop_class
  is '1--ҵ���ŵ�
2--�̻�
3--������';
alter table T_SHOP_TAG
  add constraint PK_T_SHOP_TAG primary key (ID);

prompt
prompt Creating table T_SHOP_TYPE_LINK
prompt ===============================
prompt
create table T_SHOP_TYPE_LINK
(
  id      NUMBER(8) not null,
  shop_id NUMBER(8),
  type_id NUMBER(8)
)
;
comment on table T_SHOP_TYPE_LINK
  is '�洢ҵ���ŵ�����ϵ��
1ҵ���ŵ��ӦN���̻�����';
comment on column T_SHOP_TYPE_LINK.shop_id
  is '����Ϊ��';
alter table T_SHOP_TYPE_LINK
  add constraint PK_T_SHOP_TYPE_LINK primary key (ID);

prompt
prompt Creating table T_SHOP_USER
prompt ==========================
prompt
create table T_SHOP_USER
(
  id          NUMBER(8) not null,
  code        VARCHAR2(100),
  pwd         VARCHAR2(32),
  status      NUMBER(1),
  update_time VARCHAR2(14),
  type        NUMBER(1),
  email       VARCHAR2(100),
  mobile      VARCHAR2(20),
  nick_name   VARCHAR2(20),
  shop_class  NUMBER(1),
  shop_id     NUMBER(9)
)
;
comment on table T_SHOP_USER
  is '�����̡������̻���ҵ���ŵ��˺ű�';
comment on column T_SHOP_USER.status
  is '0-ʧЧ
1-��Ч
2-��ͣ';
comment on column T_SHOP_USER.type
  is '1-����Ա
2-��ͨ�û�
3-����Ա';
comment on column T_SHOP_USER.shop_class
  is '"1--ҵ���ŵ�
2--�̻�
3--������"';
alter table T_SHOP_USER
  add constraint PK_T_SHOP_USER primary key (ID);

prompt
prompt Creating table T_SHOP_USER_LINK
prompt ===============================
prompt
create table T_SHOP_USER_LINK
(
  id           NUMBER(8) not null,
  shop_id      NUMBER(8),
  shop_class   NUMBER(1),
  shop_user_id NUMBER(8)
)
;
comment on table T_SHOP_USER_LINK
  is '�̻�����Ӧ�˺Ź�����';
comment on column T_SHOP_USER_LINK.shop_class
  is '1--ҵ���ŵ�
2--�̻�
3--������';
alter table T_SHOP_USER_LINK
  add constraint PK_T_SHOP_USER_LINK primary key (ID);

prompt
prompt Creating table T_SHOP_USER_ROLE
prompt ===============================
prompt
create table T_SHOP_USER_ROLE
(
  id      NUMBER(9) not null,
  user_id NUMBER(9),
  role_id NUMBER(9)
)
;
comment on column T_SHOP_USER_ROLE.user_id
  is '�̻��ʺ�';
comment on column T_SHOP_USER_ROLE.role_id
  is '��ɫid';

prompt
prompt Creating table T_SMSBUY_ACT_ONLINE
prompt ==================================
prompt
create table T_SMSBUY_ACT_ONLINE
(
  act_id     NUMBER(12) not null,
  act_name   VARCHAR2(50) not null,
  act_desc   VARCHAR2(500),
  act_area   VARCHAR2(100),
  start_time CHAR(14),
  end_time   CHAR(14),
  status     VARCHAR2(15),
  store_id   NUMBER(8),
  is_hot     NUMBER(1) default 0 not null,
  sp_code    VARCHAR2(20)
)
;
comment on column T_SMSBUY_ACT_ONLINE.act_area
  is '0��ʾȫʡ��
���������ű�ʾ����������ö��ŷָ���
';
comment on column T_SMSBUY_ACT_ONLINE.status
  is 'audit:����� online:���ͨ�� rebutAudit:��˲���';
comment on column T_SMSBUY_ACT_ONLINE.is_hot
  is '�Ƿ������Ż';
comment on column T_SMSBUY_ACT_ONLINE.sp_code
  is '�ط���';
create index Index_SMSBUY_ACT_ONLINE on T_SMSBUY_ACT_ONLINE (START_TIME, END_TIME);
alter table T_SMSBUY_ACT_ONLINE
  add constraint PK_T_SMSBUY_ACT_ONLINE primary key (ACT_ID);

prompt
prompt Creating table T_SMSBUY_HELP
prompt ============================
prompt
create table T_SMSBUY_HELP
(
  help_spcode      VARCHAR2(20) not null,
  help_area        VARCHAR2(100) not null,
  recommend_type   VARCHAR2(10),
  recommend_spcode VARCHAR2(20),
  recommend_sms    VARCHAR2(300)
)
;
comment on column T_SMSBUY_HELP.help_spcode
  is '��ģ��ƥ�䣬��ȷƥ������';
comment on column T_SMSBUY_HELP.recommend_type
  is 'priority�������ȼ�
hot����������Ʒ
manual�����˹��Ƽ�';
alter table T_SMSBUY_HELP
  add constraint PK_T_SMSBUY_HELP primary key (HELP_SPCODE, HELP_AREA);

prompt
prompt Creating table T_SMSBUY_ITEM_ONLINE
prompt ===================================
prompt
create table T_SMSBUY_ITEM_ONLINE
(
  item_id     VARCHAR2(30) not null,
  item_name   VARCHAR2(50),
  auditor_id  VARCHAR2(20),
  advice      VARCHAR2(100),
  opt_id      VARCHAR2(20),
  opt_time    CHAR(14),
  quato_buy   NUMBER(9),
  reply_buy   VARCHAR2(300),
  quato_store NUMBER(9),
  reply_store VARCHAR2(300)
)
;
comment on column T_SMSBUY_ITEM_ONLINE.auditor_id
  is '�ſ�';
comment on column T_SMSBUY_ITEM_ONLINE.advice
  is '�ſ�';
comment on column T_SMSBUY_ITEM_ONLINE.quato_buy
  is '0�����޹�';
comment on column T_SMSBUY_ITEM_ONLINE.quato_store
  is '0����治��';
alter table T_SMSBUY_ITEM_ONLINE
  add constraint PK_T_SMSBUY_ITEM_ONLINE primary key (ITEM_ID);

prompt
prompt Creating table T_SMSBUY_ITEM_ROUTER
prompt ===================================
prompt
create table T_SMSBUY_ITEM_ROUTER
(
  id                NUMBER(12) not null,
  act_id            NUMBER(12) not null,
  item_id           VARCHAR2(30) not null,
  item_name         VARCHAR2(200),
  sp_code           VARCHAR2(20),
  cmd_opt_type      NUMBER(2),
  command           VARCHAR2(50),
  pay_type          NUMBER(1),
  item_price        NUMBER(9),
  is_session        NUMBER(1),
  priority          NUMBER(5) default 100 not null,
  is_recommond      NUMBER(1) default 0 not null,
  recommond_content VARCHAR2(100),
  marketmsg         VARCHAR2(300),
  item_status       VARCHAR2(15)
)
;
comment on column T_SMSBUY_ITEM_ROUTER.cmd_opt_type
  is '1�����ָ��
2������ָ��';
comment on column T_SMSBUY_ITEM_ROUTER.command
  is '����ָ������';
comment on column T_SMSBUY_ITEM_ROUTER.pay_type
  is '1������
2���̳Ǳ�';
comment on column T_SMSBUY_ITEM_ROUTER.is_session
  is '0������Ҫ
1����Ҫ';
comment on column T_SMSBUY_ITEM_ROUTER.priority
  is '���ȼ���0��ߣ�99999���';
comment on column T_SMSBUY_ITEM_ROUTER.is_recommond
  is '�Ƿ��Ƽ���0��1��';
comment on column T_SMSBUY_ITEM_ROUTER.recommond_content
  is '�Ƽ����ݣ����Ƽ�����Ʒʱ���ô��ֶ������滻�ظ��������ͨ���';
comment on column T_SMSBUY_ITEM_ROUTER.marketmsg
  is '��ƷӪ������';
comment on column T_SMSBUY_ITEM_ROUTER.item_status
  is 'audit:����� online:���ͨ�� rebutAudit:��˲���';
create index Index_SMSBUY_ITEM_ROUTER on T_SMSBUY_ITEM_ROUTER (ACT_ID, ITEM_ID);
alter table T_SMSBUY_ITEM_ROUTER
  add constraint PK_T_SMSBUY_ITEM_ROUTER primary key (ID);

prompt
prompt Creating table T_SMSBUY_ORDER_INFO
prompt ==================================
prompt
create table T_SMSBUY_ORDER_INFO
(
  order_id    NUMBER(12) not null,
  terminal_id VARCHAR2(21) not null,
  act_id      NUMBER(12),
  sp_code     VARCHAR2(21) not null,
  update_time VARCHAR2(14) not null
)
;
comment on column T_SMSBUY_ORDER_INFO.order_id
  is '�������';
comment on column T_SMSBUY_ORDER_INFO.terminal_id
  is '����';
comment on column T_SMSBUY_ORDER_INFO.act_id
  is '��������';
comment on column T_SMSBUY_ORDER_INFO.sp_code
  is '�����ط���';
comment on column T_SMSBUY_ORDER_INFO.update_time
  is '����ʱ��';
alter table T_SMSBUY_ORDER_INFO
  add constraint PK_SMSBUY_ORDER_INFO primary key (ORDER_ID);

prompt
prompt Creating table T_SMSBUY_USER_ADDRESS
prompt ====================================
prompt
create table T_SMSBUY_USER_ADDRESS
(
  terminal_id VARCHAR2(22) not null,
  address     VARCHAR2(500),
  update_time VARCHAR2(14)
)
;
comment on column T_SMSBUY_USER_ADDRESS.terminal_id
  is '����';
comment on column T_SMSBUY_USER_ADDRESS.address
  is '�ͻ���ַ';
comment on column T_SMSBUY_USER_ADDRESS.update_time
  is '����ʱ��';

prompt
prompt Creating table T_SMS_ACT_ONLINE
prompt ===============================
prompt
create table T_SMS_ACT_ONLINE
(
  act_id     NUMBER(12) not null,
  act_name   VARCHAR2(50) not null,
  act_desc   VARCHAR2(500),
  group_id   VARCHAR2(10),
  start_time CHAR(14),
  end_time   CHAR(14),
  status     VARCHAR2(10)
)
;
comment on column T_SMS_ACT_ONLINE.status
  is 'audit�������
release��������
online������
pause����ͣ
offline������';
alter table T_SMS_ACT_ONLINE
  add constraint PK_T_SMS_ACT_ONLINE primary key (ACT_ID);

prompt
prompt Creating table T_SMS_ACT_ROUTER
prompt ===============================
prompt
create table T_SMS_ACT_ROUTER
(
  id           NUMBER(12) not null,
  act_id       NUMBER(12) not null,
  sp_code      VARCHAR2(20),
  cmd_opt_type NUMBER(2),
  command      VARCHAR2(50),
  pay_type     NUMBER(1),
  item_price   NUMBER(9),
  is_session   NUMBER(1)
)
;
comment on column T_SMS_ACT_ROUTER.cmd_opt_type
  is '1�����ָ��
2������ָ��';
comment on column T_SMS_ACT_ROUTER.command
  is '����ָ������';
comment on column T_SMS_ACT_ROUTER.pay_type
  is '0������Ҫ֧��
1������
2���̳Ǳ�
';
comment on column T_SMS_ACT_ROUTER.is_session
  is '0������Ҫ
1����Ҫ';
alter table T_SMS_ACT_ROUTER
  add constraint PK_T_SMS_ACT_ROUTER primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_01
prompt =================================
prompt
create table T_SMS_BATCH_LOG_01
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_01
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_01.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_01.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_01.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_01.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_01
  add constraint PK_T_SMS_BATCH_LOG_01 primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_02
prompt =================================
prompt
create table T_SMS_BATCH_LOG_02
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_02
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_02.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_02.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_02.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_02.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_02
  add constraint PK_T_SMS_BATCH_LOG_02 primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_03
prompt =================================
prompt
create table T_SMS_BATCH_LOG_03
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_03
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_03.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_03.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_03.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_03.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_03
  add constraint PK_T_SMS_BATCH_LOG_03 primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_04
prompt =================================
prompt
create table T_SMS_BATCH_LOG_04
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_04
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_04.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_04.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_04.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_04.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_04
  add constraint PK_T_SMS_BATCH_LOG_04 primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_05
prompt =================================
prompt
create table T_SMS_BATCH_LOG_05
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_05
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_05.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_05.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_05.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_05.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_05
  add constraint PK_T_SMS_BATCH_LOG_05 primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_06
prompt =================================
prompt
create table T_SMS_BATCH_LOG_06
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_06
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_06.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_06.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_06.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_06.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_06
  add constraint PK_T_SMS_BATCH_LOG_06 primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_07
prompt =================================
prompt
create table T_SMS_BATCH_LOG_07
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_07
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_07.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_07.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_07.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_07.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_07
  add constraint PK_T_SMS_BATCH_LOG_07 primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_08
prompt =================================
prompt
create table T_SMS_BATCH_LOG_08
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_08
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_08.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_08.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_08.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_08.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_08
  add constraint PK_T_SMS_BATCH_LOG_08 primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_09
prompt =================================
prompt
create table T_SMS_BATCH_LOG_09
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_09
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_09.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_09.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_09.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_09.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_09
  add constraint PK_T_SMS_BATCH_LOG_09 primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_10
prompt =================================
prompt
create table T_SMS_BATCH_LOG_10
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_10
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_10.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_10.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_10.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_10.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_10
  add constraint PK_T_SMS_BATCH_LOG_10 primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_11
prompt =================================
prompt
create table T_SMS_BATCH_LOG_11
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_11
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_11.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_11.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_11.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_11.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_11
  add constraint PK_T_SMS_BATCH_LOG_11 primary key (ID);

prompt
prompt Creating table T_SMS_BATCH_LOG_12
prompt =================================
prompt
create table T_SMS_BATCH_LOG_12
(
  id          NUMBER(9) not null,
  task_id     NUMBER(9),
  terminal_id VARCHAR2(21),
  submit_time VARCHAR2(14),
  status      VARCHAR2(10),
  message_id  VARCHAR2(50)
)
;
comment on table T_SMS_BATCH_LOG_12
  is '����Ⱥ��������־�����·ֱ�洢';
comment on column T_SMS_BATCH_LOG_12.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_BATCH_LOG_12.task_id
  is 'Ⱥ������ID';
comment on column T_SMS_BATCH_LOG_12.terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_BATCH_LOG_12.message_id
  is 'ͨѶ��ϢID';
alter table T_SMS_BATCH_LOG_12
  add constraint PK_T_SMS_BATCH_LOG_12 primary key (ID);

prompt
prompt Creating table T_SMS_MOLONG_WAIT
prompt ================================
prompt
create table T_SMS_MOLONG_WAIT
(
  id             NUMBER(9) not null,
  sp_code        VARCHAR2(30),
  src_terminalid VARCHAR2(30),
  msg_content    VARCHAR2(200),
  key            VARCHAR2(200),
  sum_count      NUMBER(9),
  now_order      NUMBER(9),
  linkid         VARCHAR2(30),
  recive_time    VARCHAR2(30),
  area_code      VARCHAR2(30)
)
;
alter table T_SMS_MOLONG_WAIT
  add constraint PK_SMS_MOLONG_WAIT primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_01
prompt ==============================
prompt
create table T_SMS_MO_LOG_01
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_01
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_01.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_01.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_01.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_01.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_01.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_01.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_01.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_01.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_01.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_01.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_01.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_01.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_01.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_01
  add constraint PK_T_SMS_MO_LOG_01 primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_02
prompt ==============================
prompt
create table T_SMS_MO_LOG_02
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_02
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_02.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_02.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_02.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_02.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_02.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_02.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_02.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_02.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_02.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_02.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_02.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_02.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_02.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_02
  add constraint PK_T_SMS_MO_LOG_02 primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_03
prompt ==============================
prompt
create table T_SMS_MO_LOG_03
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_03
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_03.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_03.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_03.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_03.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_03.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_03.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_03.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_03.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_03.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_03.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_03.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_03.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_03.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_03
  add constraint PK_T_SMS_MO_LOG_03 primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_04
prompt ==============================
prompt
create table T_SMS_MO_LOG_04
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_04
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_04.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_04.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_04.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_04.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_04.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_04.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_04.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_04.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_04.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_04.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_04.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_04.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_04.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_04
  add constraint PK_T_SMS_MO_LOG_04 primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_05
prompt ==============================
prompt
create table T_SMS_MO_LOG_05
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_05
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_05.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_05.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_05.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_05.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_05.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_05.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_05.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_05.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_05.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_05.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_05.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_05.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_05.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_05
  add constraint PK_T_SMS_MO_LOG_05 primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_06
prompt ==============================
prompt
create table T_SMS_MO_LOG_06
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_06
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_06.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_06.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_06.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_06.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_06.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_06.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_06.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_06.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_06.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_06.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_06.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_06.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_06.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_06
  add constraint PK_T_SMS_MO_LOG_06 primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_07
prompt ==============================
prompt
create table T_SMS_MO_LOG_07
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_07
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_07.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_07.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_07.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_07.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_07.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_07.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_07.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_07.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_07.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_07.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_07.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_07.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_07.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_07
  add constraint PK_T_SMS_MO_LOG_07 primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_08
prompt ==============================
prompt
create table T_SMS_MO_LOG_08
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_08
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_08.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_08.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_08.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_08.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_08.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_08.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_08.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_08.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_08.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_08.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_08.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_08.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_08.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_08
  add constraint PK_T_SMS_MO_LOG_08 primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_09
prompt ==============================
prompt
create table T_SMS_MO_LOG_09
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_09
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_09.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_09.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_09.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_09.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_09.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_09.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_09.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_09.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_09.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_09.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_09.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_09.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_09.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_09
  add constraint PK_T_SMS_MO_LOG_09 primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_10
prompt ==============================
prompt
create table T_SMS_MO_LOG_10
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_10
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_10.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_10.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_10.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_10.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_10.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_10.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_10.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_10.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_10.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_10.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_10.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_10.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_10.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_10
  add constraint PK_T_SMS_MO_LOG_10 primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_11
prompt ==============================
prompt
create table T_SMS_MO_LOG_11
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_11
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_11.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_11.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_11.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_11.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_11.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_11.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_11.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_11.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_11.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_11.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_11.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_11.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_11.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_11
  add constraint PK_T_SMS_MO_LOG_11 primary key (ID);

prompt
prompt Creating table T_SMS_MO_LOG_12
prompt ==============================
prompt
create table T_SMS_MO_LOG_12
(
  id              NUMBER(9) not null,
  msg_content     VARCHAR2(1000),
  src_terminal_id VARCHAR2(21),
  sp_code         VARCHAR2(20),
  get_time        VARCHAR2(14),
  mo_from         NUMBER(3),
  mo_to           NUMBER(3),
  act_id          NUMBER(9),
  done_time       VARCHAR2(14),
  unit_id         VARCHAR2(20),
  area_code       VARCHAR2(8),
  operator_code   VARCHAR2(50),
  linkid          VARCHAR2(20)
)
;
comment on table T_SMS_MO_LOG_12
  is '����������־��������ҵ�����������';
comment on column T_SMS_MO_LOG_12.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MO_LOG_12.msg_content
  is '��������';
comment on column T_SMS_MO_LOG_12.src_terminal_id
  is '����Դ�ֻ����룬�ǿ�';
comment on column T_SMS_MO_LOG_12.sp_code
  is '�ط��ţ��ǿ�';
comment on column T_SMS_MO_LOG_12.get_time
  is '���н���ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_12.mo_from
  is 'MO��Դ��
1:ͨѶ
2:����ҵ��ģ��
3:����ҵ��ģ��
4:WAPģ��
5:WEBģ��
6:USSDģ��
7:ͬ��������ϵģ��
0:δ֪��Դ';
comment on column T_SMS_MO_LOG_12.mo_to
  is '1��ACT����
2��J2EE����
3��TP�ӿڴ���';
comment on column T_SMS_MO_LOG_12.act_id
  is '�ID';
comment on column T_SMS_MO_LOG_12.done_time
  is '��������е�ʱ�䣨YYYYMMDDHHMMSS��';
comment on column T_SMS_MO_LOG_12.unit_id
  is '��λ������������������';
comment on column T_SMS_MO_LOG_12.area_code
  is '������ʶ';
comment on column T_SMS_MO_LOG_12.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MO_LOG_12.linkid
  is 'LINKID�������ֶ�';
alter table T_SMS_MO_LOG_12
  add constraint PK_T_SMS_MO_LOG_12 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_01
prompt ==============================
prompt
create table T_SMS_MT_LOG_01
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_01
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_01.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_01.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_01.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_01.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_01.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_01.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_01.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_01.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_01.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_01.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_01.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_01.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_01.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_01.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_01.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_01.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_01.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_01.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_01.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_01
  add constraint PK_T_SMS_MT_LOG_01 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_02
prompt ==============================
prompt
create table T_SMS_MT_LOG_02
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_02
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_02.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_02.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_02.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_02.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_02.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_02.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_02.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_02.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_02.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_02.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_02.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_02.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_02.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_02.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_02.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_02.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_02.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_02.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_02.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_02
  add constraint PK_T_SMS_MT_LOG_02 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_03
prompt ==============================
prompt
create table T_SMS_MT_LOG_03
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_03
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_03.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_03.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_03.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_03.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_03.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_03.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_03.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_03.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_03.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_03.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_03.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_03.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_03.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_03.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_03.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_03.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_03.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_03.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_03.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_03
  add constraint PK_T_SMS_MT_LOG_03 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_04
prompt ==============================
prompt
create table T_SMS_MT_LOG_04
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_04
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_04.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_04.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_04.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_04.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_04.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_04.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_04.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_04.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_04.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_04.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_04.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_04.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_04.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_04.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_04.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_04.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_04.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_04.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_04.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_04
  add constraint PK_T_SMS_MT_LOG_04 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_05
prompt ==============================
prompt
create table T_SMS_MT_LOG_05
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_05
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_05.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_05.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_05.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_05.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_05.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_05.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_05.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_05.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_05.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_05.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_05.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_05.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_05.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_05.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_05.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_05.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_05.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_05.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_05.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_05
  add constraint PK_T_SMS_MT_LOG_05 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_06
prompt ==============================
prompt
create table T_SMS_MT_LOG_06
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_06
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_06.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_06.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_06.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_06.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_06.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_06.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_06.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_06.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_06.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_06.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_06.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_06.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_06.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_06.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_06.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_06.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_06.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_06.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_06.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_06
  add constraint PK_T_SMS_MT_LOG_06 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_07
prompt ==============================
prompt
create table T_SMS_MT_LOG_07
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_07
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_07.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_07.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_07.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_07.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_07.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_07.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_07.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_07.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_07.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_07.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_07.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_07.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_07.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_07.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_07.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_07.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_07.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_07.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_07.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_07
  add constraint PK_T_SMS_MT_LOG_07 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_08
prompt ==============================
prompt
create table T_SMS_MT_LOG_08
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_08
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_08.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_08.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_08.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_08.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_08.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_08.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_08.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_08.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_08.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_08.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_08.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_08.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_08.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_08.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_08.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_08.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_08.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_08.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_08.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_08
  add constraint PK_T_SMS_MT_LOG_08 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_09
prompt ==============================
prompt
create table T_SMS_MT_LOG_09
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_09
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_09.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_09.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_09.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_09.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_09.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_09.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_09.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_09.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_09.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_09.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_09.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_09.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_09.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_09.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_09.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_09.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_09.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_09.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_09.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_09
  add constraint PK_T_SMS_MT_LOG_09 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_10
prompt ==============================
prompt
create table T_SMS_MT_LOG_10
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_10
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_10.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_10.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_10.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_10.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_10.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_10.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_10.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_10.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_10.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_10.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_10.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_10.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_10.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_10.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_10.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_10.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_10.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_10.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_10.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_10
  add constraint PK_T_SMS_MT_LOG_10 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_11
prompt ==============================
prompt
create table T_SMS_MT_LOG_11
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_11
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_11.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_11.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_11.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_11.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_11.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_11.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_11.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_11.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_11.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_11.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_11.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_11.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_11.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_11.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_11.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_11.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_11.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_11.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_11.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_11
  add constraint PK_T_SMS_MT_LOG_11 primary key (ID);

prompt
prompt Creating table T_SMS_MT_LOG_12
prompt ==============================
prompt
create table T_SMS_MT_LOG_12
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50),
  msg_id           VARCHAR2(50),
  status           VARCHAR2(10),
  sms_id           NUMBER(9)
)
;
comment on table T_SMS_MT_LOG_12
  is '����ҵ��������־��';
comment on column T_SMS_MT_LOG_12.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_MT_LOG_12.msg_content
  is '��������';
comment on column T_SMS_MT_LOG_12.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_LOG_12.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_LOG_12.sp_code
  is '�ط���';
comment on column T_SMS_MT_LOG_12.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_LOG_12.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_LOG_12.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_LOG_12.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_LOG_12.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_LOG_12.request_time
  is '��������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_12.submit_time
  is 'ʵ������ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_LOG_12.act_id
  is '�ID';
comment on column T_SMS_MT_LOG_12.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_LOG_12.area_code
  is '������ʶ';
comment on column T_SMS_MT_LOG_12.operator_code
  is '��Ӫ�̱�ʶ';
comment on column T_SMS_MT_LOG_12.msg_id
  is '���б�ʶ';
comment on column T_SMS_MT_LOG_12.status
  is '����״̬�룬�ǿ�';
comment on column T_SMS_MT_LOG_12.sms_id
  is '���ű��';
alter table T_SMS_MT_LOG_12
  add constraint PK_T_SMS_MT_LOG_12 primary key (ID);

prompt
prompt Creating table T_SMS_MT_WAIT
prompt ============================
prompt
create table T_SMS_MT_WAIT
(
  id               NUMBER(9) not null,
  msg_content      VARCHAR2(1000),
  fee_terminal_id  VARCHAR2(21),
  dest_terminal_id VARCHAR2(21),
  sp_code          VARCHAR2(20),
  service_id       VARCHAR2(20),
  fee_type         NUMBER(3),
  fee              NUMBER(5),
  is_report        NUMBER(3),
  msg_format       NUMBER(2),
  request_time     VARCHAR2(14),
  submit_time      VARCHAR2(14),
  act_id           NUMBER(9),
  unit_id          VARCHAR2(20),
  area_code        VARCHAR2(8),
  operator_code    VARCHAR2(50)
)
;
comment on table T_SMS_MT_WAIT
  is '����ҵ��������־��';
comment on column T_SMS_MT_WAIT.id
  is '���У�������ʵ�⣬������SEQ_SMS_MT_WAIT';
comment on column T_SMS_MT_WAIT.msg_content
  is '��������';
comment on column T_SMS_MT_WAIT.fee_terminal_id
  is '�Ʒ��ֻ����룬���������ѱ���';
comment on column T_SMS_MT_WAIT.dest_terminal_id
  is '���շ��ֻ����룬��Ϊ������ԡ�,��������ǿ�';
comment on column T_SMS_MT_WAIT.sp_code
  is '�ط���';
comment on column T_SMS_MT_WAIT.service_id
  is 'ҵ����룬�ǿ�';
comment on column T_SMS_MT_WAIT.fee_type
  is '�Ʒ����ͣ�1����ѣ�2���㲥��3������';
comment on column T_SMS_MT_WAIT.fee
  is '���ʣ��ǿ�';
comment on column T_SMS_MT_WAIT.is_report
  is '�������������Ƿ���ȡ״̬���棺0������ȡ��1����ȡ���ǿ�';
comment on column T_SMS_MT_WAIT.msg_format
  is '���ű����ʽ��
0��ASCII����
3������д��������
4����������Ϣ��
8��UCS2���룬
15����GB����';
comment on column T_SMS_MT_WAIT.request_time
  is '��¼����ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_WAIT.submit_time
  is 'Ҫ���·�ʱ�䣺YYYYMMDDHHMMSS���ǿ�';
comment on column T_SMS_MT_WAIT.act_id
  is '�ID';
comment on column T_SMS_MT_WAIT.unit_id
  is '��λ�����������������';
comment on column T_SMS_MT_WAIT.area_code
  is '������ʶ';
comment on column T_SMS_MT_WAIT.operator_code
  is '��Ӫ�̱�ʶ';
alter table T_SMS_MT_WAIT
  add constraint PK_T_SMS_MT_WAIT primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_01
prompt ==============================
prompt
create table T_SMS_REPORT_01
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_01
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_01.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_01.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_01.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_01.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_01.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_01
  add constraint PK_T_SMS_REPORT_01 primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_02
prompt ==============================
prompt
create table T_SMS_REPORT_02
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_02
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_02.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_02.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_02.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_02.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_02.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_02
  add constraint PK_T_SMS_REPORT_02 primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_03
prompt ==============================
prompt
create table T_SMS_REPORT_03
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_03
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_03.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_03.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_03.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_03.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_03.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_03
  add constraint PK_T_SMS_REPORT_03 primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_04
prompt ==============================
prompt
create table T_SMS_REPORT_04
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_04
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_04.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_04.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_04.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_04.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_04.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_04
  add constraint PK_T_SMS_REPORT_04 primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_05
prompt ==============================
prompt
create table T_SMS_REPORT_05
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_05
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_05.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_05.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_05.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_05.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_05.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_05
  add constraint PK_T_SMS_REPORT_05 primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_06
prompt ==============================
prompt
create table T_SMS_REPORT_06
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_06
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_06.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_06.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_06.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_06.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_06.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_06
  add constraint PK_T_SMS_REPORT_06 primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_07
prompt ==============================
prompt
create table T_SMS_REPORT_07
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_07
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_07.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_07.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_07.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_07.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_07.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_07
  add constraint PK_T_SMS_REPORT_07 primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_08
prompt ==============================
prompt
create table T_SMS_REPORT_08
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_08
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_08.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_08.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_08.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_08.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_08.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_08
  add constraint PK_T_SMS_REPORT_08 primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_09
prompt ==============================
prompt
create table T_SMS_REPORT_09
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_09
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_09.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_09.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_09.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_09.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_09.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_09
  add constraint PK_T_SMS_REPORT_09 primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_10
prompt ==============================
prompt
create table T_SMS_REPORT_10
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_10
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_10.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_10.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_10.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_10.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_10.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_10
  add constraint PK_T_SMS_REPORT_10 primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_11
prompt ==============================
prompt
create table T_SMS_REPORT_11
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_11
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_11.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_11.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_11.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_11.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_11.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_11
  add constraint PK_T_SMS_REPORT_11 primary key (ID);

prompt
prompt Creating table T_SMS_REPORT_12
prompt ==============================
prompt
create table T_SMS_REPORT_12
(
  id       NUMBER(9) not null,
  msg_id   VARCHAR2(50),
  status   VARCHAR2(10),
  get_time VARCHAR2(14),
  sender   VARCHAR2(21)
)
;
comment on table T_SMS_REPORT_12
  is '��������״̬��������·ֱ���';
comment on column T_SMS_REPORT_12.id
  is '���У�������ʵ�⣬����';
comment on column T_SMS_REPORT_12.msg_id
  is '������Ϣ��ʶ���Դ˹����������У��ǿ�';
comment on column T_SMS_REPORT_12.status
  is '״̬����״̬���ǿ�';
comment on column T_SMS_REPORT_12.get_time
  is '��ȡ״̬�����ʱ�䣨YYYYMMDDHHMMSS�����ǿ�';
comment on column T_SMS_REPORT_12.sender
  is '�ֻ�����';
alter table T_SMS_REPORT_12
  add constraint PK_T_SMS_REPORT_12 primary key (ID);

prompt
prompt Creating table T_SSO_INFO
prompt =========================
prompt
create table T_SSO_INFO
(
  sid         VARCHAR2(50),
  remember_me VARCHAR2(1),
  create_time VARCHAR2(14),
  user_id     NUMBER(9) not null,
  login_type  VARCHAR2(10)
)
;
alter table T_SSO_INFO
  add constraint PK_T_SSO_INFO_TEMP primary key (USER_ID);

prompt
prompt Creating table T_STORE
prompt ======================
prompt
create table T_STORE
(
  id                      NUMBER(8) not null,
  name                    VARCHAR2(50),
  short_name              VARCHAR2(20),
  area_code               VARCHAR2(10),
  sort                    NUMBER(1),
  shop_agent_flag         NUMBER(1),
  goods_agent_flag        NUMBER(1),
  base_shop_name          VARCHAR2(50),
  create_time             VARCHAR2(14),
  update_time             VARCHAR2(14),
  address                 VARCHAR2(100),
  sys_user_id             NUMBER(8),
  update_user_id          NUMBER(9),
  is_bs_account           NUMBER(1),
  bs_manager_name         VARCHAR2(50),
  bs_manager_phone        VARCHAR2(50),
  fc_manager_name         VARCHAR2(50),
  fc_manager_phone        VARCHAR2(50),
  link_name               VARCHAR2(50),
  link_phone              VARCHAR2(50),
  link_fax                VARCHAR2(50),
  shop_class              NUMBER(1),
  status                  NUMBER(1),
  is_valid                NUMBER(1),
  item_edit_audit_flag    NUMBER(1),
  item_publish_audit_flag NUMBER(1),
  shop_edit_audit_flag    NUMBER(1),
  sync_gy_flag            NUMBER(1),
  bs_scope                VARCHAR2(200),
  service_phone           VARCHAR2(50),
  area_id                 VARCHAR2(20),
  merchid                 VARCHAR2(20),
  stop_time               VARCHAR2(14),
  start_time              VARCHAR2(14)
)
;
comment on table T_STORE
  is '���������̺��̻��ڴ˱�ά��';
comment on column T_STORE.area_code
  is '0--ʧЧ 1--��Ч';
comment on column T_STORE.sort
  is '0--��ǩԼ 1--ǩԼ';
comment on column T_STORE.shop_agent_flag
  is '�Ƿ��ۿ��̻����� 0-�� 1-��';
comment on column T_STORE.goods_agent_flag
  is '�Ƿ���Ʒ���۴��� 0-�� 1-��';
comment on column T_STORE.base_shop_name
  is '��������';
comment on column T_STORE.is_bs_account
  is '0--���� 1--��(���� ������t_store_settle����)';
comment on column T_STORE.shop_class
  is '1--ҵ���ŵ� 2--�����̻� 3--������';
comment on column T_STORE.status
  is '0--�ݸ� 1 ����� 2 �����  3-���ͨ�� 4-��˲��� ';
comment on column T_STORE.is_valid
  is '0--�¼� 1--�ϼ�';
comment on column T_STORE.item_edit_audit_flag
  is '0--��Ҫ��� 1--����';
comment on column T_STORE.item_publish_audit_flag
  is '0--��Ҫ��� 1--����';
comment on column T_STORE.shop_edit_audit_flag
  is '0--��Ҫ��� 1--����';
comment on column T_STORE.sync_gy_flag
  is ' ͬ������״̬  0��δͬ�� 1����ͬ�� 2������ 3�����ͨ��  4��ȡ��/ɾ��  5�� ��һ�����  6��һ������˻�  7�������񸴺�  8�� ���񸴺��˻�
';
comment on column T_STORE.area_id
  is '���� 320500';
comment on column T_STORE.merchid
  is '��������ID';
comment on column T_STORE.stop_time
  is '�������ʱ��';
comment on column T_STORE.start_time
  is '����ʼʱ��';
alter table T_STORE
  add constraint PK_T_STORE primary key (ID);

prompt
prompt Creating table T_STORE_0909
prompt ===========================
prompt
create table T_STORE_0909
(
  id                      NUMBER(8) not null,
  name                    VARCHAR2(50),
  short_name              VARCHAR2(20),
  area_code               VARCHAR2(10),
  sort                    NUMBER(1),
  shop_agent_flag         NUMBER(1),
  goods_agent_flag        NUMBER(1),
  base_shop_name          VARCHAR2(50),
  create_time             VARCHAR2(14),
  update_time             VARCHAR2(14),
  address                 VARCHAR2(100),
  sys_user_id             NUMBER(8),
  update_user_id          NUMBER(9),
  is_bs_account           NUMBER(1),
  bs_manager_name         VARCHAR2(50),
  bs_manager_phone        VARCHAR2(50),
  fc_manager_name         VARCHAR2(50),
  fc_manager_phone        VARCHAR2(50),
  link_name               VARCHAR2(50),
  link_phone              VARCHAR2(50),
  link_fax                VARCHAR2(50),
  shop_class              NUMBER(1),
  status                  NUMBER(1),
  is_valid                NUMBER(1),
  item_edit_audit_flag    NUMBER(1),
  item_publish_audit_flag NUMBER(1),
  shop_edit_audit_flag    NUMBER(1),
  sync_gy_flag            NUMBER(1),
  bs_scope                VARCHAR2(200),
  service_phone           VARCHAR2(50),
  area_id                 VARCHAR2(20),
  merchid                 VARCHAR2(20),
  stop_time               VARCHAR2(14),
  start_time              VARCHAR2(14)
)
;

prompt
prompt Creating table T_STORE_AGENT
prompt ============================
prompt
create table T_STORE_AGENT
(
  id               NUMBER(8) not null,
  qd_store_id      NUMBER(8),
  js_store_id      NUMBER(8),
  start_time       VARCHAR2(14),
  stop_time        VARCHAR2(14),
  status           NUMBER(1),
  sys_user_id      NUMBER(8),
  shop_agent_flag  NUMBER(1),
  goods_agent_flag NUMBER(1)
)
;
comment on table T_STORE_AGENT
  is '�����̴�������̻���ϵ��';
comment on column T_STORE_AGENT.status
  is '0--�ݸ�
1--�����
2--�����
3--���ͨ��
4--��˲���';
comment on column T_STORE_AGENT.shop_agent_flag
  is '�Ƿ��ۿ��̻����� 0-�� 1-��';
comment on column T_STORE_AGENT.goods_agent_flag
  is '�Ƿ���Ʒ���۴��� 0-�� 1-��';
alter table T_STORE_AGENT
  add constraint PK_T_STORE_AGENT primary key (ID);

prompt
prompt Creating table T_STORE_FEE
prompt ==========================
prompt
create table T_STORE_FEE
(
  id              NUMBER(9) not null,
  store_id        NUMBER(9),
  merchid         VARCHAR2(20),
  capital_type1   NUMBER(1) default 0,
  capital_type2   NUMBER(1) default 0,
  capital_type3   NUMBER(1) default 0,
  trade_mode      NUMBER(1) default 0,
  fee_type        VARCHAR2(2) default '01',
  production_type VARCHAR2(10) default '01',
  clear_type      VARCHAR2(2),
  effortdate      VARCHAR2(8),
  expirydate      VARCHAR2(8),
  feedrtflag      VARCHAR2(1),
  feeperiodunit   VARCHAR2(50),
  fc_name         VARCHAR2(50),
  feemode         NUMBER(1),
  feemothod       NUMBER(1),
  beganamount     VARCHAR2(13),
  minfeeamount    VARCHAR2(11),
  maxfeeamount    VARCHAR2(11),
  feebasicflag    NUMBER(1),
  feelevelflag    VARCHAR2(1),
  feelvlbasicflag VARCHAR2(1),
  upreference1    VARCHAR2(11),
  fixfeeamount1   VARCHAR2(9),
  feerate1        VARCHAR2(5),
  upreference2    VARCHAR2(11),
  fixfeeamount2   VARCHAR2(9),
  feerate2        VARCHAR2(5),
  upreference3    VARCHAR2(11),
  fixfeeamount3   VARCHAR2(9),
  feerate3        VARCHAR2(5),
  upreference4    VARCHAR2(11),
  fixfeeamount4   VARCHAR2(9),
  feerate4        VARCHAR2(5),
  upreference5    VARCHAR2(11),
  fixfeeamount5   VARCHAR2(9),
  feerate5        VARCHAR2(5),
  create_time     VARCHAR2(14),
  sync_time       VARCHAR2(14),
  create_user     NUMBER(9),
  status          NUMBER(1) default 0,
  sync_gy_flag1   NUMBER(1) default 0,
  sync_gy_flag2   NUMBER(1) default 0,
  sync_gy_flag3   NUMBER(1) default 0
)
;
comment on table T_STORE_FEE
  is '�̻�������Ϣ��';
comment on column T_STORE_FEE.store_id
  is '�̻�id';
comment on column T_STORE_FEE.merchid
  is '��������id';
comment on column T_STORE_FEE.capital_type1
  is '�Ƿ��ֽ� 1����  0����';
comment on column T_STORE_FEE.capital_type2
  is '�Ƿ��̳Ǳ�1:��  0����';
comment on column T_STORE_FEE.capital_type3
  is '�Ƿ����  1����  0����';
comment on column T_STORE_FEE.trade_mode
  is '���׷�ʽ
0-Զ����ͨ
1���ֳ��ѻ���
3��Զ�̴�
4���ֳ������������ã�';
comment on column T_STORE_FEE.fee_type
  is '��������
01������Ӷ��
02������Ӷ��
 (û���õ������production����type)';
comment on column T_STORE_FEE.production_type
  is '��Ӧt_sys_fee���id';
comment on column T_STORE_FEE.clear_type
  is '�������
C����Ʒ��� (ͬ����Ʒ��𣬰������������)
P����Ʒ
';
comment on column T_STORE_FEE.effortdate
  is '��Ч����';
comment on column T_STORE_FEE.expirydate
  is 'ʧЧ����';
comment on column T_STORE_FEE.feedrtflag
  is '���÷���
D���̻�/�����֧������
C���̻�/������������
';
comment on column T_STORE_FEE.feeperiodunit
  is '�շ����ڵ�λ
0: ��
1: ��
2: ��';
comment on column T_STORE_FEE.fc_name
  is '�շ���������';
comment on column T_STORE_FEE.feemode
  is '�շѷ�ʽ
0������ȡ
1��ʵʱ������ȡ
2�����ʼ��㡢��������ȡ
3�������ڻ��ܼ��㲢��ȡ
4�������ڻ��������ȡ';
comment on column T_STORE_FEE.feemothod
  is '�Ʒѷ���
:1:���̶������ȡ
2:�����̶��ٷֱ���ȡ ����Ҫȷ�ϣ�
3:������Ʒ��ۼ��� ���Ź���';
comment on column T_STORE_FEE.beganamount
  is '�Ʒ���ʼ���(����)
������ü�������Ϊ���������������룬�粻������ϵͳ����Ϊ0û��';
comment on column T_STORE_FEE.minfeeamount
  is '����շѽ��
�շѷ�ʽ=1ʱ���������룻�Ʒѷ���=2/3ʱ�������룬�粻������ϵͳ����Ϊ0û��';
comment on column T_STORE_FEE.maxfeeamount
  is '����շѽ��
�շѷ�ʽ=1ʱ���������룻�粻������ϵͳ����Ϊȫ9�����û��';
comment on column T_STORE_FEE.feebasicflag
  is '���ü�������
0�����  1���������Ʒѷ���1��Ӧ��';
comment on column T_STORE_FEE.feelevelflag
  is '�ֲ�/�׵���־
�ո񣺱�ʾֻ��һ����0���׵���1���ֲ㣻���ɷ�5��/����
���ֶ�û�����������£�ֻ��һ�����ü������';
comment on column T_STORE_FEE.feelvlbasicflag
  is '�ֲ�/�׵�����
0�����  1������';
comment on column T_STORE_FEE.upreference1
  is '�ƷѲο�1
���ֲ�/�׵���־Ϊ��ʱ�����ֶ�ȱʡΪȫ9.û��
���2-5�ƷѲο������룬��������ε������ұ����������룬����Ҫע�ⲻһ������5�顣
';
comment on column T_STORE_FEE.fixfeeamount1
  is '�̶����ý��1
�������ļƷѲο�û�����룬����Ĺ̶����ý��ͷ��ʶ�����������
�������ļƷѲο������룬����Ĺ̶����ý��ͷ��ʱ���������һ����ֻ����������һ�����Ʒѷ���=1ʱ����������̶����ý����Ʒѷ���=2ʱ������������ʣ�
���⣬��Ҫע������շѵ�ģʽ�£����û����ױ�����**�ʵ�**��֮�䣬��ÿ����ȡ**���ķ�ʽ���Լ��û����ױ�����**�ʵ�*8��֮�䣬�ܹ���ȡ**���Ĳ��
';
comment on column T_STORE_FEE.feerate1
  is '����1
�ο��̶����ý�������';
comment on column T_STORE_FEE.upreference2
  is '�ƷѲο�2';
comment on column T_STORE_FEE.fixfeeamount2
  is '�̶����ý��2';
comment on column T_STORE_FEE.feerate2
  is '����2';
comment on column T_STORE_FEE.upreference3
  is '�ƷѲο�3';
comment on column T_STORE_FEE.fixfeeamount3
  is '�̶����ý��3';
comment on column T_STORE_FEE.feerate3
  is '����3';
comment on column T_STORE_FEE.upreference4
  is '�ƷѲο�4';
comment on column T_STORE_FEE.fixfeeamount4
  is '�̶����ý��4';
comment on column T_STORE_FEE.feerate4
  is '����4';
comment on column T_STORE_FEE.upreference5
  is '�ƷѲο�5';
comment on column T_STORE_FEE.fixfeeamount5
  is '�̶����ý��5';
comment on column T_STORE_FEE.feerate5
  is '����5';
comment on column T_STORE_FEE.create_time
  is '����ʱ��';
comment on column T_STORE_FEE.sync_time
  is 'ͬ��ʱ��';
comment on column T_STORE_FEE.create_user
  is '������';
comment on column T_STORE_FEE.status
  is '״̬ 0δ���  3���ͨ�� 4��˲���';
comment on column T_STORE_FEE.sync_gy_flag1
  is 'ͬ������״̬����ӦCAPITAL_TYPE1   0��δͬ����1����ͬ����2������ˣ�3�����ͨ����4������˻أ�5��ʧЧ/ɾ��';
comment on column T_STORE_FEE.sync_gy_flag2
  is 'ͬ������״̬����ӦCAPITAL_TYPE2     0��δͬ����1����ͬ����2������ˣ�3�����ͨ����4������˻أ�5��ʧЧ/ɾ��';
comment on column T_STORE_FEE.sync_gy_flag3
  is 'ͬ������״̬����ӦCAPITAL_TYPE3    0��δͬ����1����ͬ����2������ˣ�3�����ͨ����4������˻أ�5��ʧЧ/ɾ��';
alter table T_STORE_FEE
  add constraint PK_T_STORE_FEE primary key (ID);

prompt
prompt Creating table T_STORE_FEE_2
prompt ============================
prompt
create table T_STORE_FEE_2
(
  id              NUMBER,
  store_id        NUMBER(9),
  merchid         VARCHAR2(20),
  capital_type1   NUMBER(1),
  capital_type2   NUMBER(1),
  capital_type3   NUMBER(1),
  trade_mode      NUMBER(1),
  fee_type        VARCHAR2(2),
  production_type VARCHAR2(10),
  clear_type      VARCHAR2(2),
  effortdate      VARCHAR2(8),
  expirydate      VARCHAR2(8),
  feedrtflag      VARCHAR2(1),
  feeperiodunit   VARCHAR2(50),
  fc_name         VARCHAR2(50),
  feemode         NUMBER(1),
  feemothod       NUMBER(1),
  beganamount     VARCHAR2(13),
  minfeeamount    VARCHAR2(11),
  maxfeeamount    VARCHAR2(11),
  feebasicflag    NUMBER(1),
  feelevelflag    VARCHAR2(1),
  feelvlbasicflag VARCHAR2(1),
  upreference1    VARCHAR2(11),
  fixfeeamount1   VARCHAR2(9),
  feerate1        VARCHAR2(5),
  upreference2    VARCHAR2(11),
  fixfeeamount2   VARCHAR2(9),
  feerate2        VARCHAR2(5),
  upreference3    VARCHAR2(11),
  fixfeeamount3   VARCHAR2(9),
  feerate3        VARCHAR2(5),
  upreference4    VARCHAR2(11),
  fixfeeamount4   VARCHAR2(9),
  feerate4        VARCHAR2(5),
  upreference5    VARCHAR2(11),
  fixfeeamount5   VARCHAR2(9),
  feerate5        VARCHAR2(5),
  create_time     VARCHAR2(14),
  sync_time       VARCHAR2(14),
  create_user     NUMBER(9),
  status          NUMBER(1),
  sync_gy_flag1   NUMBER(1),
  sync_gy_flag2   NUMBER(1),
  sync_gy_flag3   NUMBER(1)
)
;

prompt
prompt Creating table T_STORE_FEE_TMP
prompt ==============================
prompt
create table T_STORE_FEE_TMP
(
  store_id           NUMBER(9),
  merchid            VARCHAR2(20),
  capital_type1      NUMBER(1) default 0,
  capital_type2      NUMBER(1) default 0,
  capital_type3      NUMBER(1) default 0,
  trade_mode         NUMBER(1) default 0,
  fee_type           VARCHAR2(2) default '01',
  production_type    VARCHAR2(10) default '01',
  xw_production_type VARCHAR2(10),
  clear_type         VARCHAR2(2),
  effortdate         VARCHAR2(8),
  expirydate         VARCHAR2(8),
  feedrtflag         VARCHAR2(1),
  feeperiodunit      VARCHAR2(50),
  fc_name            VARCHAR2(50),
  feemode            NUMBER(1),
  feemothod          NUMBER(1),
  beganamount        VARCHAR2(13),
  minfeeamount       VARCHAR2(11),
  maxfeeamount       VARCHAR2(11),
  feebasicflag       NUMBER(1),
  feelevelflag       VARCHAR2(1),
  feelvlbasicflag    VARCHAR2(1),
  upreference1       VARCHAR2(11),
  fixfeeamount1      VARCHAR2(9),
  feerate1           VARCHAR2(5),
  upreference2       VARCHAR2(11),
  fixfeeamount2      VARCHAR2(9),
  feerate2           VARCHAR2(5),
  upreference3       VARCHAR2(11),
  fixfeeamount3      VARCHAR2(9),
  feerate3           VARCHAR2(5),
  upreference4       VARCHAR2(11),
  fixfeeamount4      VARCHAR2(9),
  feerate4           VARCHAR2(5),
  upreference5       VARCHAR2(11),
  fixfeeamount5      VARCHAR2(9),
  feerate5           VARCHAR2(5),
  create_time        VARCHAR2(14),
  sync_time          VARCHAR2(14),
  create_user        NUMBER(9),
  status             NUMBER(1) default 0,
  sync_gy_flag1      NUMBER(1) default 0,
  sync_gy_flag2      NUMBER(1) default 0,
  sync_gy_flag3      NUMBER(1) default 0
)
;

prompt
prompt Creating table T_STORE_FEE_TMP2
prompt ===============================
prompt
create table T_STORE_FEE_TMP2
(
  id              NUMBER(9) not null,
  store_id        VARCHAR2(50),
  merchid         VARCHAR2(20),
  capital_type1   NUMBER(1) default 0,
  capital_type2   NUMBER(1) default 0,
  capital_type3   NUMBER(1) default 0,
  trade_mode      NUMBER(1) default 0,
  fee_type        VARCHAR2(2) default '01',
  production_type VARCHAR2(10) default '01',
  clear_type      VARCHAR2(2),
  effortdate      VARCHAR2(8),
  expirydate      VARCHAR2(8),
  feedrtflag      VARCHAR2(1),
  feeperiodunit   VARCHAR2(50),
  fc_name         VARCHAR2(50),
  feemode         NUMBER(1),
  feemothod       NUMBER(1),
  beganamount     VARCHAR2(13),
  minfeeamount    VARCHAR2(11),
  maxfeeamount    VARCHAR2(11),
  feebasicflag    NUMBER(1),
  feelevelflag    VARCHAR2(1),
  feelvlbasicflag VARCHAR2(1),
  upreference1    VARCHAR2(11),
  fixfeeamount1   VARCHAR2(9),
  feerate1        VARCHAR2(5),
  upreference2    VARCHAR2(11),
  fixfeeamount2   VARCHAR2(9),
  feerate2        VARCHAR2(5),
  upreference3    VARCHAR2(11),
  fixfeeamount3   VARCHAR2(9),
  feerate3        VARCHAR2(5),
  upreference4    VARCHAR2(11),
  fixfeeamount4   VARCHAR2(9),
  feerate4        VARCHAR2(5),
  upreference5    VARCHAR2(11),
  fixfeeamount5   VARCHAR2(9),
  feerate5        VARCHAR2(5),
  create_time     VARCHAR2(14),
  sync_time       VARCHAR2(14),
  create_user     NUMBER(9),
  status          NUMBER(1) default 0,
  sync_gy_flag1   NUMBER(1) default 0,
  sync_gy_flag2   NUMBER(1) default 0,
  sync_gy_flag3   NUMBER(1) default 0,
  fee_t           VARCHAR2(2)
)
;

prompt
prompt Creating table T_STORE_LOGISTICS_FEE
prompt ====================================
prompt
create table T_STORE_LOGISTICS_FEE
(
  id       NUMBER(8) not null,
  store_id NUMBER(8),
  qd_id    NUMBER(8),
  fee_num  FLOAT
)
;
comment on table T_STORE_LOGISTICS_FEE
  is '�����˷�';
alter table T_STORE_LOGISTICS_FEE
  add constraint PK_T_STORE_LOGISTICS_FEE primary key (ID);

prompt
prompt Creating table T_STORE_SETTLE
prompt =============================
prompt
create table T_STORE_SETTLE
(
  id              NUMBER(9) not null,
  store_id        NUMBER(9) not null,
  merchid         VARCHAR2(20),
  settle_type     NUMBER(1) default 0 not null,
  fee_settle      NUMBER(1) default 1,
  settle_period   NUMBER(1),
  settle_day      NUMBER(3) default 1,
  settle_daybit   NUMBER(3),
  settle_trfdays  NUMBER(3),
  settle_beginamt NUMBER(8) default 0,
  min_retainedamt NUMBER(8),
  withdraw_bankid VARCHAR2(100),
  openbank_desc   VARCHAR2(200),
  settle_ac       VARCHAR2(100),
  bank_acname     VARCHAR2(100),
  effort_date     VARCHAR2(8),
  expiry_date     VARCHAR2(8),
  sync_gy_flag    NUMBER(1) default 0,
  status          NUMBER(1) default 0,
  create_time     VARCHAR2(14),
  create_user     NUMBER(9),
  sync_time       VARCHAR2(14),
  is_bs_account   NUMBER(1)
)
;
comment on column T_STORE_SETTLE.store_id
  is '�̻�id';
comment on column T_STORE_SETTLE.merchid
  is '��������id';
comment on column T_STORE_SETTLE.settle_type
  is '��������
0��ϵͳ����
1���ֹ�����';
comment on column T_STORE_SETTLE.fee_settle
  is 'Ӷ�����
0����֧������
1������';
comment on column T_STORE_SETTLE.settle_period
  is '��������
0����
1����
2��Ѯ
3����
4����
5������
6����
7��ָ����
';
comment on column T_STORE_SETTLE.settle_day
  is '������
��ʶ������������';
comment on column T_STORE_SETTLE.settle_daybit
  is '�����ձ�־λ
ָ��������ʱ����һ����31��ľ�������';
comment on column T_STORE_SETTLE.settle_trfdays
  is '���㻮������';
comment on column T_STORE_SETTLE.settle_beginamt
  is '������ʼ���';
comment on column T_STORE_SETTLE.min_retainedamt
  is '���������';
comment on column T_STORE_SETTLE.withdraw_bankid
  is '�������е�����';
comment on column T_STORE_SETTLE.openbank_desc
  is '��������ϸ��Ϣ';
comment on column T_STORE_SETTLE.settle_ac
  is '�����˻�';
comment on column T_STORE_SETTLE.bank_acname
  is '������';
comment on column T_STORE_SETTLE.effort_date
  is '��Ч����';
comment on column T_STORE_SETTLE.expiry_date
  is 'ʧЧ����';
comment on column T_STORE_SETTLE.sync_gy_flag
  is 'ͬ������״̬��0��δͬ����1����ͬ����2������ˣ�3�����ͨ����4������˻أ�5��ʧЧ/ɾ��';
comment on column T_STORE_SETTLE.status
  is '״̬ 0δ���  3���ͨ�� 4��˲���';
comment on column T_STORE_SETTLE.create_time
  is '����ʱ��';
comment on column T_STORE_SETTLE.create_user
  is '������';
comment on column T_STORE_SETTLE.sync_time
  is 'ͬ��ʱ��';
comment on column T_STORE_SETTLE.is_bs_account
  is '0--���� 1--��';
alter table T_STORE_SETTLE
  add constraint PK_T_STORE_SETTLE primary key (ID);

prompt
prompt Creating table T_SURVEY
prompt =======================
prompt
create table T_SURVEY
(
  id           NUMBER(9) not null,
  s_questionid NUMBER(3) not null,
  s_answer     VARCHAR2(500),
  user_id      NUMBER(9),
  s_surveyid   NUMBER(2)
)
;
comment on table T_SURVEY
  is '�ʾ��������';
comment on column T_SURVEY.id
  is '����';
comment on column T_SURVEY.s_questionid
  is '�����ʾ�������';
comment on column T_SURVEY.s_answer
  is '�����ʾ��';
comment on column T_SURVEY.user_id
  is '�û�ID';
comment on column T_SURVEY.s_surveyid
  is '�����ʾ���';
alter table T_SURVEY
  add constraint PK_T_SURVEY primary key (ID);

prompt
prompt Creating table T_SYS_AD
prompt =======================
prompt
create table T_SYS_AD
(
  id          NUMBER(9) not null,
  ad_name     VARCHAR2(100),
  ad_type     NUMBER(2),
  ad_flag     NUMBER(2) default 0,
  link        VARCHAR2(200),
  linkman     VARCHAR2(100),
  content     VARCHAR2(200),
  status      NUMBER(2),
  start_time  VARCHAR2(14),
  valid_time  VARCHAR2(14),
  click_cnt   NUMBER(9) default 0,
  view_cnt    NUMBER(9) default 0,
  create_time VARCHAR2(14),
  create_user NUMBER(9),
  position_id NUMBER(9)
)
;
comment on column T_SYS_AD.ad_name
  is '�������';
comment on column T_SYS_AD.ad_type
  is '�������
1-ͼƬ
2-����
3-�ű�';
comment on column T_SYS_AD.ad_flag
  is '������
0-�ڲ����
1-�ⲿ���';
comment on column T_SYS_AD.link
  is '�������';
comment on column T_SYS_AD.linkman
  is '��渺����';
comment on column T_SYS_AD.content
  is '�������
�����ͼƬ��棬��ΪͼƬ�洢·��';
comment on column T_SYS_AD.status
  is '���״̬
0-δ���
1-���ͨ��
2-��˲�ͨ��
';
comment on column T_SYS_AD.start_time
  is '��ʼʱ��';
comment on column T_SYS_AD.valid_time
  is '��Ч��';
comment on column T_SYS_AD.click_cnt
  is '�������';
comment on column T_SYS_AD.view_cnt
  is 'չ�ִ���';
comment on column T_SYS_AD.create_time
  is '��������';
comment on column T_SYS_AD.create_user
  is '������';
comment on column T_SYS_AD.position_id
  is '���λ��';
alter table T_SYS_AD
  add constraint PK_T_SYS_AD primary key (ID);

prompt
prompt Creating table T_SYS_AD_POSITION
prompt ================================
prompt
create table T_SYS_AD_POSITION
(
  id       NUMBER(9) not null,
  name     VARCHAR2(100),
  width    NUMBER(9),
  height   NUMBER(9),
  position VARCHAR2(20),
  code     VARCHAR2(100),
  type     NUMBER(1),
  num      NUMBER(2) default 2 not null
)
;
comment on table T_SYS_AD_POSITION
  is '���λ������';
comment on column T_SYS_AD_POSITION.name
  is '����';
comment on column T_SYS_AD_POSITION.width
  is '��';
comment on column T_SYS_AD_POSITION.height
  is '��';
comment on column T_SYS_AD_POSITION.position
  is 'ģ��λ��';
comment on column T_SYS_AD_POSITION.code
  is 'ģ�����';
comment on column T_SYS_AD_POSITION.type
  is 'ģ������
1-ͼƬ
2-����
3-flash';
alter table T_SYS_AD_POSITION
  add constraint PK_T_SYS_AD_POSITION primary key (ID);

prompt
prompt Creating table T_SYS_AD_REGION
prompt ==============================
prompt
create table T_SYS_AD_REGION
(
  id          NUMBER(9) not null,
  region_code VARCHAR2(10),
  ad_id       NUMBER(9)
)
;
comment on table T_SYS_AD_REGION
  is '���չ�������';
comment on column T_SYS_AD_REGION.region_code
  is 'չ��������';
comment on column T_SYS_AD_REGION.ad_id
  is '���id';
alter table T_SYS_AD_REGION
  add constraint PK_T_SYS_AD_REGON primary key (ID);

prompt
prompt Creating table T_SYS_ANNOUNCEMENT
prompt =================================
prompt
create table T_SYS_ANNOUNCEMENT
(
  id          NUMBER(9) not null,
  title       VARCHAR2(100),
  description CLOB,
  pub_status  NUMBER(1),
  pub_user    NUMBER(9),
  pub_time    VARCHAR2(14),
  pub_dest    NUMBER(1),
  audit_user  NUMBER(9),
  audit_time  VARCHAR2(14),
  end_time    VARCHAR2(14)
)
;
comment on table T_SYS_ANNOUNCEMENT
  is '�����';
comment on column T_SYS_ANNOUNCEMENT.id
  is 'id';
comment on column T_SYS_ANNOUNCEMENT.title
  is '����';
comment on column T_SYS_ANNOUNCEMENT.description
  is '����';
comment on column T_SYS_ANNOUNCEMENT.pub_status
  is '״̬ 0�½� 1��˲��� 2�ѷ��� 3ɾ��';
comment on column T_SYS_ANNOUNCEMENT.pub_user
  is '������';
comment on column T_SYS_ANNOUNCEMENT.pub_time
  is '����ʱ��';
comment on column T_SYS_ANNOUNCEMENT.pub_dest
  is '�������� 0��̨ 1�̻��Է��� 2�������� 3�Ż�';
comment on column T_SYS_ANNOUNCEMENT.audit_user
  is '�����';
comment on column T_SYS_ANNOUNCEMENT.audit_time
  is '���ʱ��';
comment on column T_SYS_ANNOUNCEMENT.end_time
  is '����ʱ��';
alter table T_SYS_ANNOUNCEMENT
  add constraint PK_SYS_ANNOUNCEMENT primary key (ID);

prompt
prompt Creating table T_SYS_AREA_INFO
prompt ==============================
prompt
create table T_SYS_AREA_INFO
(
  id            NUMBER(9) not null,
  area_code     VARCHAR2(8) not null,
  area_name     VARCHAR2(20) not null,
  prov_id       NUMBER(9),
  province_name VARCHAR2(20) not null,
  area_spell    VARCHAR2(20),
  day_limit     VARCHAR2(9 CHAR),
  month_limit   VARCHAR2(9 CHAR)
)
;
comment on column T_SYS_AREA_INFO.id
  is '����ID';
comment on column T_SYS_AREA_INFO.area_code
  is '���д���(����)';
comment on column T_SYS_AREA_INFO.area_name
  is '��������';
comment on column T_SYS_AREA_INFO.prov_id
  is '����ʡID';
comment on column T_SYS_AREA_INFO.province_name
  is '����ʡ����';
comment on column T_SYS_AREA_INFO.area_spell
  is '����ȫƴ';
alter table T_SYS_AREA_INFO
  add constraint PK_T_SYS_AREA_INFO primary key (ID);

prompt
prompt Creating table T_SYS_BLACK_USER
prompt ===============================
prompt
create table T_SYS_BLACK_USER
(
  id             NUMBER(9) not null,
  terminal_id    VARCHAR2(21) not null,
  lev_tag        NUMBER(3),
  in_tag         NUMBER(3),
  remark         VARCHAR2(50),
  update_user_id NUMBER(9),
  update_time    VARCHAR2(14),
  unit_id        VARCHAR2(20 CHAR)
)
;
comment on column T_SYS_BLACK_USER.lev_tag
  is '��ͬ����ĺ������û����Բ��벻ͬ��ҵ��
0��ƽ̨�����κ�ҵ�񶼲��ܲμӣ�
1�����ܽ���Ⱥ����Ϣ
2����������
3������λ����ҵ�񶼲��ܲμ�';
comment on column T_SYS_BLACK_USER.in_tag
  is '0���ֹ�����
1����������';
alter table T_SYS_BLACK_USER
  add constraint PK_T_SYS_BLACK_USER primary key (ID);

prompt
prompt Creating table T_SYS_CURRENCY_EXCHANGE
prompt ======================================
prompt
create table T_SYS_CURRENCY_EXCHANGE
(
  id                NUMBER(9) not null,
  province          VARCHAR2(20) not null,
  area_code         VARCHAR2(20),
  main_currency     VARCHAR2(20) not null,
  exchange_currency VARCHAR2(20) not null,
  exchange_value    NUMBER(11,2) not null,
  remark            VARCHAR2(500),
  operator          VARCHAR2(20),
  input_time        VARCHAR2(14)
)
;
comment on table T_SYS_CURRENCY_EXCHANGE
  is '����̳Ǳҡ����֡��ֽ�֮��Ķһ�����';
comment on column T_SYS_CURRENCY_EXCHANGE.id
  is 'ΨһID';
comment on column T_SYS_CURRENCY_EXCHANGE.province
  is 'ʡ��';
comment on column T_SYS_CURRENCY_EXCHANGE.area_code
  is '����';
comment on column T_SYS_CURRENCY_EXCHANGE.main_currency
  is '����������,SCORE';
comment on column T_SYS_CURRENCY_EXCHANGE.exchange_currency
  is '�һ��������ƣ���д�̳Ǳ�COIN';
comment on column T_SYS_CURRENCY_EXCHANGE.exchange_value
  is '�һ�ֵ����һԪ�ֽ���Զһ����ٻ��ֻ��̳Ǳ�';
comment on column T_SYS_CURRENCY_EXCHANGE.remark
  is '��ע';
comment on column T_SYS_CURRENCY_EXCHANGE.operator
  is '������';
comment on column T_SYS_CURRENCY_EXCHANGE.input_time
  is '����ʱ��';
alter table T_SYS_CURRENCY_EXCHANGE
  add constraint PK_T_SYS_CURRENCY_EXCHANGE primary key (ID);

prompt
prompt Creating table T_SYS_CURRENCY_EXCHANGE_LOG
prompt ==========================================
prompt
create table T_SYS_CURRENCY_EXCHANGE_LOG
(
  id            NUMBER(9) not null,
  user_id       VARCHAR2(20) not null,
  terminal_id   VARCHAR2(20) not null,
  exchange_time VARCHAR2(14) not null,
  score         NUMBER(11,2) not null,
  coin          NUMBER(11,2) not null,
  order_id      NUMBER(9),
  remark        VARCHAR2(500)
)
;
comment on table T_SYS_CURRENCY_EXCHANGE_LOG
  is '����̳Ǳҡ����֡��ֽ�֮��Ķһ�����־';
comment on column T_SYS_CURRENCY_EXCHANGE_LOG.id
  is 'ΨһID';
comment on column T_SYS_CURRENCY_EXCHANGE_LOG.user_id
  is '�û�ID';
comment on column T_SYS_CURRENCY_EXCHANGE_LOG.terminal_id
  is '�ֻ�����';
comment on column T_SYS_CURRENCY_EXCHANGE_LOG.exchange_time
  is '�һ�����';
comment on column T_SYS_CURRENCY_EXCHANGE_LOG.score
  is '�һ�����,������1000';
comment on column T_SYS_CURRENCY_EXCHANGE_LOG.coin
  is '�һ��̳Ǳ�????';
comment on column T_SYS_CURRENCY_EXCHANGE_LOG.order_id
  is '������';
comment on column T_SYS_CURRENCY_EXCHANGE_LOG.remark
  is '��ע';
alter table T_SYS_CURRENCY_EXCHANGE_LOG
  add constraint PK_T_SYS_CURRENCY_EXCHANGE_LOG primary key (ID);

prompt
prompt Creating table T_SYS_FEE
prompt ========================
prompt
create table T_SYS_FEE
(
  id           NUMBER(8) not null,
  name         VARCHAR2(120),
  fee          NUMBER(9,2),
  valid        NUMBER(1),
  decr_fee     VARCHAR2(100),
  sync_gy_flag NUMBER(1),
  sync_gy_time VARCHAR2(14),
  store_id     NUMBER(9)
)
;
comment on table T_SYS_FEE
  is '�������ñ�';
comment on column T_SYS_FEE.name
  is '��������';
comment on column T_SYS_FEE.fee
  is '����';
comment on column T_SYS_FEE.valid
  is '1-��Ч 0-��Ч';
comment on column T_SYS_FEE.decr_fee
  is '����';
comment on column T_SYS_FEE.sync_gy_flag
  is '0-δͬ�� 1-��ͬ��';
alter table T_SYS_FEE
  add constraint PK_T_SYS_FEE primary key (ID);

prompt
prompt Creating table T_SYS_FEE2
prompt =========================
prompt
create table T_SYS_FEE2
(
  id         NUMBER,
  store_id   VARCHAR2(200),
  store_name VARCHAR2(150),
  category   VARCHAR2(50),
  fee_type   VARCHAR2(1),
  decr_fee   VARCHAR2(100)
)
;

prompt
prompt Creating table T_SYS_FEE_TEMP
prompt =============================
prompt
create table T_SYS_FEE_TEMP
(
  id NUMBER(8) not null,
  t1 NUMBER(7,4),
  g1 NUMBER(12,2),
  t2 NUMBER(7,4),
  g2 NUMBER(12,2),
  t3 NUMBER(7,4),
  g3 NUMBER(12,2),
  t4 NUMBER(7,4),
  g4 NUMBER(12,2),
  t5 NUMBER(7,4),
  g5 NUMBER(12,2)
)
;

prompt
prompt Creating table T_SYS_FEE_TMP2
prompt =============================
prompt
create table T_SYS_FEE_TMP2
(
  id         NUMBER,
  store_id   VARCHAR2(50),
  store_name VARCHAR2(200),
  category   VARCHAR2(150),
  fee_type   NUMBER,
  starttime  VARCHAR2(8),
  endtime    VARCHAR2(8),
  describe   VARCHAR2(4000)
)
;

prompt
prompt Creating table T_SYS_FILE
prompt =========================
prompt
create table T_SYS_FILE
(
  id            NUMBER(8) not null,
  file_type     VARCHAR2(20),
  remark        VARCHAR2(100),
  update_time   VARCHAR2(14),
  file_abs_path VARCHAR2(100),
  file_web_path VARCHAR2(100),
  create_user   NUMBER(8),
  bs_key        VARCHAR2(50),
  bs_id         NUMBER(8),
  table_name    VARCHAR2(100)
)
;
comment on table T_SYS_FILE
  is 'ƽ̨����ƽ̨ͨ���ñ�洢';
comment on column T_SYS_FILE.file_type
  is '�ļ�����';
comment on column T_SYS_FILE.remark
  is '�ļ�����';
comment on column T_SYS_FILE.update_time
  is '����ʱ��';
comment on column T_SYS_FILE.file_abs_path
  is '�洢·��';
comment on column T_SYS_FILE.file_web_path
  is '�ļ�����·��';
comment on column T_SYS_FILE.create_user
  is '������';
comment on column T_SYS_FILE.bs_key
  is '���ݲ�ͬҵ������Ӧ����KEY��������ͼ������ͼ������';
comment on column T_SYS_FILE.bs_id
  is 'ҵ��Ψһ��ţ������̻�ID����ƷID������';
comment on column T_SYS_FILE.table_name
  is '����';
alter table T_SYS_FILE
  add constraint PK_T_SYS_FILE primary key (ID);

prompt
prompt Creating table T_SYS_FILE_IMG
prompt =============================
prompt
create table T_SYS_FILE_IMG
(
  id            NUMBER(8) not null,
  file_type     VARCHAR2(20),
  remark        VARCHAR2(100),
  update_time   VARCHAR2(14),
  file_abs_path VARCHAR2(100),
  file_web_path VARCHAR2(100),
  create_user   NUMBER(8),
  file_name     VARCHAR2(100),
  bs_key        VARCHAR2(50),
  bs_id         NUMBER(8),
  table_name    VARCHAR2(100),
  sort          NUMBER(3) default 0
)
;
comment on table T_SYS_FILE_IMG
  is 'ƽ̨����ƽ̨ͨ���ñ�洢';
comment on column T_SYS_FILE_IMG.file_type
  is '�ļ�����';
comment on column T_SYS_FILE_IMG.update_time
  is '����ʱ��';
comment on column T_SYS_FILE_IMG.file_abs_path
  is '�洢·��';
comment on column T_SYS_FILE_IMG.file_web_path
  is 'web·��';
comment on column T_SYS_FILE_IMG.create_user
  is '������';
comment on column T_SYS_FILE_IMG.file_name
  is '�ļ���';
comment on column T_SYS_FILE_IMG.bs_key
  is '���ݲ�ͬҵ������Ӧ����KEY��������ͼ������ͼ������';
comment on column T_SYS_FILE_IMG.bs_id
  is 'ҵ��Ψһ��ţ������̻�ID����ƷID������';
comment on column T_SYS_FILE_IMG.table_name
  is '����';
comment on column T_SYS_FILE_IMG.sort
  is '����';
alter table T_SYS_FILE_IMG
  add constraint PK_T_SYS_FILE_IMG primary key (ID);

prompt
prompt Creating table T_SYS_FILE_IMG_LINK
prompt ==================================
prompt
create table T_SYS_FILE_IMG_LINK
(
  id         NUMBER(8) not null,
  bs_key     VARCHAR2(50),
  bs_id      NUMBER(8),
  file_id    NUMBER(8),
  table_name VARCHAR2(100),
  sort       NUMBER(3) default 0,
  file_name  VARCHAR2(100)
)
;
comment on table T_SYS_FILE_IMG_LINK
  is 'ҵ����ļ�������';
comment on column T_SYS_FILE_IMG_LINK.bs_key
  is '���ݲ�ͬҵ������Ӧ����KEY��������ͼ������ͼ������';
comment on column T_SYS_FILE_IMG_LINK.bs_id
  is 'ҵ��Ψһ��ţ������̻�ID����ƷID������';
comment on column T_SYS_FILE_IMG_LINK.file_id
  is '����ԭʼ�ļ��洢��t_sys_file����ID';
comment on column T_SYS_FILE_IMG_LINK.table_name
  is '����';
comment on column T_SYS_FILE_IMG_LINK.sort
  is '����';
comment on column T_SYS_FILE_IMG_LINK.file_name
  is '�ļ���';
alter table T_SYS_FILE_IMG_LINK
  add constraint PK_T_SYS_FILE_IMG_LINK primary key (ID);

prompt
prompt Creating table T_SYS_FILE_IMG_THUMB
prompt ===================================
prompt
create table T_SYS_FILE_IMG_THUMB
(
  id           NUMBER(8) not null,
  file_id      NUMBER(8),
  img_size     VARCHAR2(50),
  img_abs_path VARCHAR2(100),
  img_web_path VARCHAR2(100),
  update_time  VARCHAR2(14)
)
;
comment on table T_SYS_FILE_IMG_THUMB
  is '����ͼ�洢';
comment on column T_SYS_FILE_IMG_THUMB.file_id
  is 'ԭʼ�ļ����е��ļ�ID';
comment on column T_SYS_FILE_IMG_THUMB.img_size
  is '50*50��128*128��256*256�ȳߴ���';
comment on column T_SYS_FILE_IMG_THUMB.img_abs_path
  is '����·��';
comment on column T_SYS_FILE_IMG_THUMB.img_web_path
  is '����·��';
comment on column T_SYS_FILE_IMG_THUMB.update_time
  is '����ʱ��';
alter table T_SYS_FILE_IMG_THUMB
  add constraint PK_T_SYS_FILE_IMG_THUMB primary key (ID);

prompt
prompt Creating table T_SYS_FILE_LINK
prompt ==============================
prompt
create table T_SYS_FILE_LINK
(
  id         NUMBER(8) not null,
  bs_key     VARCHAR2(50),
  bs_id      NUMBER(8),
  file_id    NUMBER(8),
  table_name VARCHAR2(100)
)
;
comment on table T_SYS_FILE_LINK
  is 'ҵ����ļ�������';
comment on column T_SYS_FILE_LINK.bs_key
  is '���ݲ�ͬҵ������Ӧ����KEY��������ͼ������ͼ������';
comment on column T_SYS_FILE_LINK.bs_id
  is 'ҵ��Ψһ��ţ������̻�ID����ƷID������';
comment on column T_SYS_FILE_LINK.file_id
  is '����ԭʼ�ļ��洢��t_sys_file����ID';
comment on column T_SYS_FILE_LINK.table_name
  is '����';
alter table T_SYS_FILE_LINK
  add constraint PK_T_SYS_FILE_LINK primary key (ID);

prompt
prompt Creating table T_SYS_FILTER_WORD
prompt ================================
prompt
create table T_SYS_FILTER_WORD
(
  id             NUMBER(9) not null,
  word           VARCHAR2(50),
  in_tag         NUMBER(3),
  unit_id        VARCHAR2(20),
  update_user_id NUMBER(9),
  update_time    VARCHAR2(14)
)
;
comment on table T_SYS_FILTER_WORD
  is '�����Դ�����У�SEQ_FILTER_WORD;';
comment on column T_SYS_FILTER_WORD.in_tag
  is '0���ֹ�����
1����������
������������룬����Ҫ��д�ļ�·��';
comment on column T_SYS_FILTER_WORD.unit_id
  is 'ͨ�����в���������6λ��ǰ�治��';
alter table T_SYS_FILTER_WORD
  add constraint PK_T_SYS_FILTER_WORD primary key (ID);

prompt
prompt Creating table T_SYS_INVOICE
prompt ============================
prompt
create table T_SYS_INVOICE
(
  id   NUMBER(9) not null,
  name VARCHAR2(40)
)
;
comment on table T_SYS_INVOICE
  is '��Ʊ�ֵ��';
comment on column T_SYS_INVOICE.name
  is '��Ʊ��';
alter table T_SYS_INVOICE
  add constraint PK_SYS_INVOICE primary key (ID);

prompt
prompt Creating table T_SYS_LANDMARK
prompt =============================
prompt
create table T_SYS_LANDMARK
(
  id            NUMBER(9) not null,
  area_code     VARCHAR2(20),
  regon_id      NUMBER(9),
  landmark_name VARCHAR2(100),
  map_long      VARCHAR2(20),
  map_dim       VARCHAR2(20),
  flag          NUMBER(1) default 1
)
;
comment on table T_SYS_LANDMARK
  is '�ر����';
comment on column T_SYS_LANDMARK.id
  is 'id';
comment on column T_SYS_LANDMARK.area_code
  is '���б���';
comment on column T_SYS_LANDMARK.regon_id
  is '����id';
comment on column T_SYS_LANDMARK.landmark_name
  is '�ر�����';
comment on column T_SYS_LANDMARK.map_long
  is '����long';
comment on column T_SYS_LANDMARK.map_dim
  is '����dim';
comment on column T_SYS_LANDMARK.flag
  is '�Ƿ���ʾ1-��ʾ 0-����ʾ ';
alter table T_SYS_LANDMARK
  add constraint PK_T_SYS_LANDMARK primary key (ID);

prompt
prompt Creating table T_SYS_LOG
prompt ========================
prompt
create table T_SYS_LOG
(
  id          NUMBER(9) not null,
  user_id     VARCHAR2(20) not null,
  oper_time   VARCHAR2(14) not null,
  oper_type   NUMBER(3) not null,
  module      VARCHAR2(100) not null,
  description VARCHAR2(200),
  result_code VARCHAR2(10),
  ip          VARCHAR2(20),
  user_name   VARCHAR2(100),
  user_type   VARCHAR2(20),
  op_id       NUMBER(9)
)
;
comment on table T_SYS_LOG
  is 'ϵͳ��־��';
comment on column T_SYS_LOG.oper_type
  is '��������   1-�鿴 2-��� 3-�޸� 4-ɾ�� 5-���  6-����';
comment on column T_SYS_LOG.result_code
  is '�����Ƿ�ɹ� 0-�ɹ�  ��0 ʧ��';
comment on column T_SYS_LOG.user_name
  is '�û�����';
comment on column T_SYS_LOG.user_type
  is '�û�����';
comment on column T_SYS_LOG.op_id
  is '��������ID';
alter table T_SYS_LOG
  add constraint PK_T_SYS_LOG primary key (ID);

prompt
prompt Creating table T_SYS_LOGIN_LOG
prompt ==============================
prompt
create table T_SYS_LOGIN_LOG
(
  id           NUMBER(9) not null,
  user_name    VARCHAR2(20),
  user_id      NUMBER(9),
  ip           VARCHAR2(15),
  login_time   VARCHAR2(14),
  success_flag NUMBER(2),
  user_type    NUMBER(2)
)
;
comment on table T_SYS_LOGIN_LOG
  is '�����̨��¼��־��';
comment on column T_SYS_LOGIN_LOG.success_flag
  is '1-�ɹ� 0-ʧ��';
alter table T_SYS_LOGIN_LOG
  add constraint PK_T_SYS_LOGIN_LOG primary key (ID);

prompt
prompt Creating table T_SYS_LOGISTICS
prompt ==============================
prompt
create table T_SYS_LOGISTICS
(
  id        NUMBER(9) not null,
  name      VARCHAR2(50),
  is_valid  NUMBER(1),
  interface VARCHAR2(100),
  ename     VARCHAR2(30)
)
;
comment on table T_SYS_LOGISTICS
  is '������Ϣ��';
comment on column T_SYS_LOGISTICS.name
  is 'Ʒ������';
comment on column T_SYS_LOGISTICS.is_valid
  is '�Ƿ���Ч
0-��Ч
1-��Ч';
comment on column T_SYS_LOGISTICS.interface
  is '�����ӿ�';
alter table T_SYS_LOGISTICS
  add constraint PK_T_SYS_LOGISTICS primary key (ID);

prompt
prompt Creating table T_SYS_LOGON_LOG
prompt ==============================
prompt
create table T_SYS_LOGON_LOG
(
  id          NUMBER(9) not null,
  user_code   VARCHAR2(20),
  logon_ip    VARCHAR2(20),
  logon_time  VARCHAR2(14),
  success_tag CHAR(1)
)
;
comment on table T_SYS_LOGON_LOG
  is '�����̨��¼��־��,�������Ƶ�¼�������';
comment on column T_SYS_LOGON_LOG.success_tag
  is '0ʧ��
1�ɹ�';
alter table T_SYS_LOGON_LOG
  add constraint PK_T_SYS_LOGON_LOG primary key (ID);

prompt
prompt Creating table T_SYS_MENU
prompt =========================
prompt
create table T_SYS_MENU
(
  menu_code  VARCHAR2(20) not null,
  menu_name  VARCHAR2(50) not null,
  menu_pcode VARCHAR2(20) not null,
  menu_url   VARCHAR2(100),
  leaf_yn    NUMBER(3) not null,
  model_code VARCHAR2(200),
  url_btns   VARCHAR2(100),
  sys_type   NUMBER(1) not null
)
;
comment on table T_SYS_MENU
  is '�˵���';
comment on column T_SYS_MENU.menu_code
  is '�˵�code��Ψһֵ';
comment on column T_SYS_MENU.menu_name
  is '�˵�����';
comment on column T_SYS_MENU.menu_pcode
  is '��ǰ�˵����˵�code';
comment on column T_SYS_MENU.menu_url
  is '�˵�ָ���URL���ӣ�û�����ӿ���ʹ��#';
comment on column T_SYS_MENU.leaf_yn
  is '�Ƿ�Ϊĩ����־��0-��;1��';
comment on column T_SYS_MENU.model_code
  is '��ʶģ��,��ĩ���˵���Ҫָ�����ֶ�,���ڱ�ϵͳ�ھ���Ψһ��';
comment on column T_SYS_MENU.url_btns
  is 'ÿ��ҳ����ӵ�еİ�ť(add_btn,mod_btn,del_btn)';
comment on column T_SYS_MENU.sys_type
  is 'ÿ��ϵͳ���Լ��Ĳ˵���0��̨����ϵͳ 1�̻��Է���ҵ���ŵ� 2�̻��Է�������̻� 3�̻��Է���������';
alter table T_SYS_MENU
  add constraint PK_SYS_MENU primary key (MENU_CODE);

prompt
prompt Creating table T_SYS_POS
prompt ========================
prompt
create table T_SYS_POS
(
  id      NUMBER(8) not null,
  name    VARCHAR2(50),
  src     VARCHAR2(50),
  type    VARCHAR2(20),
  factory VARCHAR2(50)
)
;
comment on table T_SYS_POS
  is '�ն����ñ������ն���Դ�����ͣ�����';
comment on column T_SYS_POS.name
  is '����Ϊ��';
comment on column T_SYS_POS.type
  is '1--�̻�����
2--��Ʒ����';
alter table T_SYS_POS
  add constraint PK_T_SYS_POS primary key (ID);

prompt
prompt Creating table T_SYS_PROPERTY
prompt =============================
prompt
create table T_SYS_PROPERTY
(
  id      NUMBER(8) not null,
  content VARCHAR2(50),
  type    NUMBER(8)
)
;
comment on table T_SYS_PROPERTY
  is '����������أ�������ɫ���ߴ��';
comment on column T_SYS_PROPERTY.type
  is '0--��ѡ
1--��ѡ 2--¼��';
alter table T_SYS_PROPERTY
  add constraint PK_T_SYS_PROPERTY primary key (ID);

prompt
prompt Creating table T_SYS_PROVINCE
prompt =============================
prompt
create table T_SYS_PROVINCE
(
  id         NUMBER(9) not null,
  prov_name  VARCHAR2(30) not null,
  short_name VARCHAR2(10),
  seq_val    NUMBER(3) default 999 not null
)
;
comment on table T_SYS_PROVINCE
  is 'ʡ��Ϣ��';
comment on column T_SYS_PROVINCE.id
  is 'ʡID';
comment on column T_SYS_PROVINCE.prov_name
  is 'ʡ����';
comment on column T_SYS_PROVINCE.short_name
  is 'ʡ���';
comment on column T_SYS_PROVINCE.seq_val
  is '����ֵ������ʹ��';

prompt
prompt Creating table T_SYS_REGION
prompt ===========================
prompt
create table T_SYS_REGION
(
  id            NUMBER(9) not null,
  region_code   VARCHAR2(100),
  region_name   VARCHAR2(200),
  region_level  NUMBER(10),
  parent_region VARCHAR2(100) not null,
  short_name    VARCHAR2(50),
  region_spell  VARCHAR2(200),
  is_show       NUMBER(1) default 1,
  sort_num      NUMBER(9) default 99999,
  area_code     VARCHAR2(200)
)
;
comment on table T_SYS_REGION
  is 'ϵͳ���������';
comment on column T_SYS_REGION.region_code
  is '�������';
comment on column T_SYS_REGION.region_name
  is '��������';
comment on column T_SYS_REGION.region_level
  is '����ȼ�';
comment on column T_SYS_REGION.parent_region
  is '������
0-һ������';
comment on column T_SYS_REGION.short_name
  is '���';
comment on column T_SYS_REGION.region_spell
  is '����ƴ��';
comment on column T_SYS_REGION.is_show
  is '�Ƿ���ʾ 0-����ʾ 1-��ʾ';
comment on column T_SYS_REGION.sort_num
  is '����';
comment on column T_SYS_REGION.area_code
  is '������';
alter table T_SYS_REGION
  add constraint PK_SYS_REGION primary key (ID);

prompt
prompt Creating table T_SYS_ROLE
prompt =========================
prompt
create table T_SYS_ROLE
(
  id             NUMBER(9) not null,
  remark         VARCHAR2(200),
  update_user_id NUMBER(9),
  update_time    VARCHAR2(14),
  role_name      VARCHAR2(50 CHAR) not null,
  unit_id        VARCHAR2(20 CHAR)
)
;
comment on table T_SYS_ROLE
  is '��ɫ����';
comment on column T_SYS_ROLE.id
  is 'ID��ʹ������SEQ_COMM_ID';
comment on column T_SYS_ROLE.remark
  is '��ע';
comment on column T_SYS_ROLE.update_user_id
  is '�����ˣ�ƥ��T_SYS_USER���е�ID�ֶ�';
comment on column T_SYS_ROLE.update_time
  is '����ʱ��';

prompt
prompt Creating table T_SYS_ROLE_PRIVILEGE
prompt ===================================
prompt
create table T_SYS_ROLE_PRIVILEGE
(
  id        NUMBER(9) not null,
  role_id   NUMBER(9),
  menu_code VARCHAR2(20),
  menu_btn  VARCHAR2(100)
)
;
comment on table T_SYS_ROLE_PRIVILEGE
  is '[����Ȩ�ް�ť�б�]:
ϵͳ�й̻���Ȩ�ް�ť,����,�޸�,ɾ��,�鿴,���..
���ƶ�Ӧ:ADD_BTN,MOD_BTN,DEL_BTN,VIEW_BTN,AUDIT_BTN...';
comment on column T_SYS_ROLE_PRIVILEGE.id
  is 'ID';
comment on column T_SYS_ROLE_PRIVILEGE.menu_btn
  is '��ӵ�еİ�ť�����б�,��ʽ��:ADD_BTN,MOD_BTN,DEL_BTN';
alter table T_SYS_ROLE_PRIVILEGE
  add constraint PK_T_SYS_ROLE_PRIVILEGE primary key (ID);

prompt
prompt Creating table T_SYS_SEARCH_IDX
prompt ===============================
prompt
create table T_SYS_SEARCH_IDX
(
  id          NUMBER(8) not null,
  type        VARCHAR2(10),
  type_name   VARCHAR2(20),
  update_time VARCHAR2(14),
  actor       NUMBER(8)
)
;
comment on column T_SYS_SEARCH_IDX.type
  is '����';
comment on column T_SYS_SEARCH_IDX.type_name
  is '��������';
comment on column T_SYS_SEARCH_IDX.update_time
  is '����ʱ��';
comment on column T_SYS_SEARCH_IDX.actor
  is '������ID';
alter table T_SYS_SEARCH_IDX
  add constraint SYS_SEARCH_IDX primary key (ID);

prompt
prompt Creating table T_SYS_SEGMENT
prompt ============================
prompt
create table T_SYS_SEGMENT
(
  id            NUMBER(9) not null,
  segment_code  VARCHAR2(10) not null,
  operator_code VARCHAR2(50) not null,
  area_code     VARCHAR2(8) not null,
  mmsc_id       VARCHAR2(20) not null
)
;
comment on table T_SYS_SEGMENT
  is '�Ŷα�';
comment on column T_SYS_SEGMENT.id
  is 'ΨһID��ʹ������SEQ_SEGMENT';
comment on column T_SYS_SEGMENT.segment_code
  is '�Ŷ�';
comment on column T_SYS_SEGMENT.operator_code
  is '�й��ƶ�ZGYD';
comment on column T_SYS_SEGMENT.area_code
  is '�úŶι������У�ƥ��T_SYS_AREA_INFO����area_code';
comment on column T_SYS_SEGMENT.mmsc_id
  is '�������ı�ţ��˴����ã���Ӧc-productƽ̨';
create index IDX_SEGMENT_CODE on T_SYS_SEGMENT (SEGMENT_CODE);
alter table T_SYS_SEGMENT
  add constraint PK_T_SYS_SEGMENT primary key (ID);

prompt
prompt Creating table T_SYS_SPCODE
prompt ===========================
prompt
create table T_SYS_SPCODE
(
  id      NUMBER(8) not null,
  sp_code VARCHAR2(50),
  valid   NUMBER(1)
)
;
comment on table T_SYS_SPCODE
  is 'ϵͳ�ط���';
comment on column T_SYS_SPCODE.sp_code
  is 'spcode';
comment on column T_SYS_SPCODE.valid
  is '0-��Ч 1-��Ч';
alter table T_SYS_SPCODE
  add constraint PK_T_SYS_SPCODE primary key (ID);

prompt
prompt Creating table T_SYS_STORE_ROLE
prompt ===============================
prompt
create table T_SYS_STORE_ROLE
(
  id             NUMBER(9) not null,
  remark         VARCHAR2(200),
  update_user_id NUMBER(9),
  update_time    VARCHAR2(14),
  role_name      VARCHAR2(50 CHAR) not null,
  shop_class     VARCHAR2(20 CHAR),
  shop_id        NUMBER(9)
)
;
comment on table T_SYS_STORE_ROLE
  is '�̻��Է���ƽ̨��ɫ��';
comment on column T_SYS_STORE_ROLE.id
  is 'ID��ʹ������SEQ_COMM_ID';
comment on column T_SYS_STORE_ROLE.remark
  is '��ע';
comment on column T_SYS_STORE_ROLE.update_user_id
  is '�����ˣ�ƥ��T_SYS_USER���е�ID�ֶ�';
comment on column T_SYS_STORE_ROLE.update_time
  is '����ʱ��';
comment on column T_SYS_STORE_ROLE.role_name
  is '��ɫ����';
comment on column T_SYS_STORE_ROLE.shop_class
  is '��ɫ�����̻� 1�ŵ� 2�̻� 3����';
comment on column T_SYS_STORE_ROLE.shop_id
  is '��ɫ�����̻�ID';

prompt
prompt Creating table T_SYS_STORE_ROLE_PRIVILEGE
prompt =========================================
prompt
create table T_SYS_STORE_ROLE_PRIVILEGE
(
  id        NUMBER(9) not null,
  role_id   NUMBER(9),
  menu_code VARCHAR2(20),
  menu_btn  VARCHAR2(100)
)
;
comment on table T_SYS_STORE_ROLE_PRIVILEGE
  is '�̻��Է���ƽ̨��ɫȨ�޹�ϵ��';
comment on column T_SYS_STORE_ROLE_PRIVILEGE.id
  is 'ID';
comment on column T_SYS_STORE_ROLE_PRIVILEGE.menu_btn
  is '��ӵ�еİ�ť�����б�,��ʽ��:ADD_BTN,MOD_BTN,DEL_BTN';

prompt
prompt Creating table T_SYS_TEMPLATE_EVENT
prompt ===================================
prompt
create table T_SYS_TEMPLATE_EVENT
(
  id     NUMBER(9) not null,
  code   NUMBER(6),
  type   NUMBER(1),
  tgid   NUMBER(9),
  tgname VARCHAR2(100),
  name   VARCHAR2(50),
  memo   VARCHAR2(100)
)
;
alter table T_SYS_TEMPLATE_EVENT
  add constraint PK_T_SYS_TEMPLATE_EVENT primary key (ID);

prompt
prompt Creating table T_SYS_TEMPLATE_GROUP
prompt ===================================
prompt
create table T_SYS_TEMPLATE_GROUP
(
  id    VARCHAR2(255 CHAR) not null,
  gname VARCHAR2(255 CHAR),
  memo  VARCHAR2(255 CHAR)
)
;
alter table T_SYS_TEMPLATE_GROUP
  add primary key (ID);

prompt
prompt Creating table T_SYS_TEMPLATE_GROUP_REF
prompt =======================================
prompt
create table T_SYS_TEMPLATE_GROUP_REF
(
  id  VARCHAR2(255 CHAR) not null,
  gid VARCHAR2(255 CHAR),
  tid VARCHAR2(255 CHAR)
)
;
alter table T_SYS_TEMPLATE_GROUP_REF
  add primary key (ID);

prompt
prompt Creating table T_SYS_TEMPLATE_INFO
prompt ==================================
prompt
create table T_SYS_TEMPLATE_INFO
(
  id             NUMBER(9) not null,
  tname          VARCHAR2(100),
  type           NUMBER(2),
  dataurl        VARCHAR2(200),
  filepath       VARCHAR2(200),
  outputchartset VARCHAR2(50)
)
;
comment on column T_SYS_TEMPLATE_INFO.type
  is 'type=1�����ݲ�ѯ·��
type=2��jspҳ��·��';
comment on column T_SYS_TEMPLATE_INFO.dataurl
  is 'type=1�����ֶα�ʶ���ݻ�ȡURL
type=2�����ֶ�������Ҫͨ��httpclient��̬����jspҳ��ĵ�ַ';
comment on column T_SYS_TEMPLATE_INFO.outputchartset
  is 'GBK
UTF-8
ISO-8859-1';
alter table T_SYS_TEMPLATE_INFO
  add constraint PK_T_SYS_TEMPLATE_INFO primary key (ID);

prompt
prompt Creating table T_SYS_TEST_TERMINAL_ID
prompt =====================================
prompt
create table T_SYS_TEST_TERMINAL_ID
(
  id             NUMBER(9) not null,
  terminal_id    VARCHAR2(21) not null,
  owner_name     VARCHAR2(40),
  test_type      NUMBER(3) not null,
  act_id         NUMBER(9),
  unit_id        VARCHAR2(20),
  status         NUMBER(3),
  remark         VARCHAR2(200),
  update_user_id NUMBER(9),
  update_time    VARCHAR2(14)
)
;
comment on table T_SYS_TEST_TERMINAL_ID
  is 'ƽ̨�����û���';
comment on column T_SYS_TEST_TERMINAL_ID.terminal_id
  is '�����ֻ�����';
comment on column T_SYS_TEST_TERMINAL_ID.owner_name
  is '��������';
comment on column T_SYS_TEST_TERMINAL_ID.test_type
  is '�������ͣ�0��ȫ�ֲ��Ժ��룻1��ҵ����Ժ��룻2�����ŷ��Ͳ��Ժ���';
comment on column T_SYS_TEST_TERMINAL_ID.act_id
  is '�ID';
comment on column T_SYS_TEST_TERMINAL_ID.unit_id
  is '������λ';
comment on column T_SYS_TEST_TERMINAL_ID.status
  is '״̬��0����Ч�����û���1�������û�';
comment on column T_SYS_TEST_TERMINAL_ID.remark
  is '��ע';
comment on column T_SYS_TEST_TERMINAL_ID.update_user_id
  is '������ID';
comment on column T_SYS_TEST_TERMINAL_ID.update_time
  is '����ʱ��';
alter table T_SYS_TEST_TERMINAL_ID
  add constraint PK_T_SYS_TEST_TERMINAL_ID primary key (ID);

prompt
prompt Creating table T_SYS_TYPE
prompt =========================
prompt
create table T_SYS_TYPE
(
  id       NUMBER(20) not null,
  p_id     NUMBER(20),
  name     VARCHAR2(100),
  type     NUMBER(1),
  is_valid NUMBER(1) default 1
)
;
comment on table T_SYS_TYPE
  is '������洢�̻��������Ʒ���࣬����״�ṹ�洢';
comment on column T_SYS_TYPE.p_id
  is '���Ļ����ֶ�Ϊ0';
comment on column T_SYS_TYPE.type
  is '1--�̻�����
2--��Ʒ����';
comment on column T_SYS_TYPE.is_valid
  is '0-��Ч 1��Ч';
alter table T_SYS_TYPE
  add constraint PK_T_SYS_TYPE primary key (ID);

prompt
prompt Creating table T_SYS_TYPE_ITEM_PARAM
prompt ====================================
prompt
create table T_SYS_TYPE_ITEM_PARAM
(
  id            NUMBER(8) not null,
  type_id       NUMBER(8),
  param_key     VARCHAR2(20),
  param_value   VARCHAR2(80),
  rank          NUMBER(8),
  param_type    NUMBER(1),
  required_flag NUMBER(1),
  search_flag   NUMBER(1) default 1,
  shop_id       NUMBER(9),
  shop_class    NUMBER(1)
)
;
comment on table T_SYS_TYPE_ITEM_PARAM
  is '�����Ӧ��Ʒ������ģ���
���̻��Լ��������ߺ�̨����ķ��������ģ�嶼�ڸñ��ж���';
comment on column T_SYS_TYPE_ITEM_PARAM.param_value
  is '������ֵ,�÷ֺŷָ�';
comment on column T_SYS_TYPE_ITEM_PARAM.rank
  is '���Ը��ݸ�ֵ�������в���ֵ������Ĭ�ϸ���¼��˳��';
comment on column T_SYS_TYPE_ITEM_PARAM.param_type
  is '��������
1-��ѡ
2-��ѡ
3-����';
comment on column T_SYS_TYPE_ITEM_PARAM.required_flag
  is '�Ƿ����
0-no
1-����';
comment on column T_SYS_TYPE_ITEM_PARAM.search_flag
  is '�Ƿ�������
0-��
1-��';
comment on column T_SYS_TYPE_ITEM_PARAM.shop_id
  is '�̻�ID';
comment on column T_SYS_TYPE_ITEM_PARAM.shop_class
  is '1--ҵ���ŵ�
2--�̻�
3--������';
alter table T_SYS_TYPE_ITEM_PARAM
  add constraint PK_T_SYS_TYPE_ITEM_PARAM primary key (ID);

prompt
prompt Creating table T_SYS_UNIT
prompt =========================
prompt
create table T_SYS_UNIT
(
  id             NUMBER(9) not null,
  name           VARCHAR2(100) not null,
  area_code      VARCHAR2(8),
  unit_type      NUMBER(1) not null,
  remark         VARCHAR2(200),
  flag           NUMBER(1) not null,
  update_user_id NUMBER(9) not null,
  update_time    VARCHAR2(14) not null,
  prov_id        NUMBER(9),
  parent_unit_id NUMBER(9)
)
;
comment on column T_SYS_UNIT.id
  is '��λID';
comment on column T_SYS_UNIT.name
  is '��λ����';
comment on column T_SYS_UNIT.area_code
  is '��λ�������У�ƥ��T_SYS_regon����AREA_CODE';
comment on column T_SYS_UNIT.unit_type
  is '��λ���࣬1-���̻��ص�λ
2-ʡ��λ
3-���е�λ';
comment on column T_SYS_UNIT.remark
  is '��ע';
comment on column T_SYS_UNIT.flag
  is '��λ��ʶ��0��ʾ������9��ʾע��';
comment on column T_SYS_UNIT.update_user_id
  is '��λ����û�ID��ƥ��T_SYS_USER����ID';
comment on column T_SYS_UNIT.update_time
  is '��λ����ʱ��';
comment on column T_SYS_UNIT.prov_id
  is '��λ����ʡID';

prompt
prompt Creating table T_SYS_USER
prompt =========================
prompt
create table T_SYS_USER
(
  id              NUMBER(9) not null,
  user_code       VARCHAR2(20) not null,
  user_pwd        VARCHAR2(60) not null,
  user_name       VARCHAR2(100) not null,
  terminal_id     VARCHAR2(30),
  email           VARCHAR2(100),
  remark          VARCHAR2(200),
  valid_time      VARCHAR2(8),
  create_time     VARCHAR2(14) not null,
  change_pwd_time VARCHAR2(14),
  update_time     VARCHAR2(14) not null,
  update_user_id  NUMBER(9) not null,
  lock_status     NUMBER(3) default 0 not null,
  status          NUMBER(3) default 1 not null,
  flag            NUMBER(3) not null,
  unit_id         NUMBER(9) default 0 not null
)
;
comment on table T_SYS_USER
  is '1.ϵͳ�����û���һ�ű���ά��

2.�û�����˵��:��Ӫ�����ӱ���λ�û�ʱ,��ѡ��[2]-��ͨ�û�,[3]-�ͷ��û�
  �ͻ�ϵͳ��Ա�й̻���Ȩ��.';
comment on column T_SYS_USER.id
  is 'ID';
comment on column T_SYS_USER.user_code
  is 'ȫƽ̨Ψһ���û��ʺţ����ڵ�¼';
comment on column T_SYS_USER.user_pwd
  is '����';
comment on column T_SYS_USER.user_name
  is '�û���ʵ����';
comment on column T_SYS_USER.terminal_id
  is '�ն˺���';
comment on column T_SYS_USER.email
  is 'EMAIL��ַ';
comment on column T_SYS_USER.remark
  is '����';
comment on column T_SYS_USER.valid_time
  is '�ʻ���Ч�ڣ�8λ���ڣ����Ϊ�����ʾ������Ч';
comment on column T_SYS_USER.create_time
  is '�û�����ʱ��';
comment on column T_SYS_USER.change_pwd_time
  is '�û��޸�����ʱ��';
comment on column T_SYS_USER.update_time
  is '�˺Ÿ���ʱ��';
comment on column T_SYS_USER.update_user_id
  is '�����û�ID��ƥ��T_SYS_USER_V2���е�ID�ֶ�';
comment on column T_SYS_USER.lock_status
  is '�ʺ�����״̬��0,����;1,����';
comment on column T_SYS_USER.status
  is '[1]:����,[2]:��ͣ,[3]:ɾ��';
comment on column T_SYS_USER.flag
  is '[0]:��������Ա,[1]:��λ����Ա [2]��λ��ͨ��Ա [3]';
comment on column T_SYS_USER.unit_id
  is '���û�������λ��ƥ���T_UNIT��ID';

prompt
prompt Creating table T_SYS_USER_REGION
prompt ================================
prompt
create table T_SYS_USER_REGION
(
  id          NUMBER(9) not null,
  user_id     NUMBER(9),
  region_code VARCHAR2(100)
)
;
comment on table T_SYS_USER_REGION
  is 'ϵͳ�û������
�ñ���Ҫ���������Ȩ�޽��й���
���û����Բ�����������й���';
alter table T_SYS_USER_REGION
  add constraint PK_T_SYS_USER_REGON primary key (ID);

prompt
prompt Creating table T_SYS_USER_ROLE
prompt ==============================
prompt
create table T_SYS_USER_ROLE
(
  user_id NUMBER(9) not null,
  role_id NUMBER(9) not null,
  id      NUMBER(9) not null
)
;
comment on table T_SYS_USER_ROLE
  is '�û����ɫ��Զ��ϵ';
comment on column T_SYS_USER_ROLE.user_id
  is '�û�ID';
comment on column T_SYS_USER_ROLE.role_id
  is '��ɫID';
alter table T_SYS_USER_ROLE
  add constraint PK_T_SYS_USER_ROLE primary key (ID)
  disable;

prompt
prompt Creating table T_TIMELABLE
prompt ==========================
prompt
create table T_TIMELABLE
(
  stime VARCHAR2(12)
)
;
comment on table T_TIMELABLE
  is '��¼ͳ��ʱ���ı�����P_STAT_ITEM_SALE_EXT�洢����';
comment on column T_TIMELABLE.stime
  is '�´�jobִ��ʱ�����ܴӸ�ʱ�俪ʼ����30�����ڵ����ݣ�ÿ�λ����꣬�Զ����¸�ʱ��';

prompt
prompt Creating table T_TMP1
prompt =====================
prompt
create table T_TMP1
(
  store_id NUMBER,
  d        VARCHAR2(8)
)
;

prompt
prompt Creating table T_TP_CONF
prompt ========================
prompt
create table T_TP_CONF
(
  unit_id          VARCHAR2(20) not null,
  passwd           VARCHAR2(20) not null,
  sms_sp_code      VARCHAR2(21),
  mms_sp_code      VARCHAR2(21),
  sms_flux_limited NUMBER(8) default 0 not null,
  mms_flux_limited NUMBER(8) default 0 not null,
  url              VARCHAR2(200),
  status           NUMBER(1) default 0 not null,
  ip               VARCHAR2(200),
  id               NUMBER(9) not null,
  name             VARCHAR2(40)
)
;
comment on column T_TP_CONF.unit_id
  is 'TP���';
comment on column T_TP_CONF.passwd
  is 'TP���루���ģ�';
comment on column T_TP_CONF.sms_sp_code
  is '�����ط���';
comment on column T_TP_CONF.mms_sp_code
  is '�����ط���';
comment on column T_TP_CONF.sms_flux_limited
  is 'ÿ���Ӷ����·����ƣ�0Ϊ�����ͣ�-1Ϊ����';
comment on column T_TP_CONF.mms_flux_limited
  is 'ÿ���Ӳ����·����ƣ�0Ϊ�����ͣ�-1Ϊ����';
comment on column T_TP_CONF.url
  is 'TP�������е�url��Ŀǰ���ã�';
comment on column T_TP_CONF.status
  is '���״̬��0����ˣ�1���ͨ��';
comment on column T_TP_CONF.ip
  is '�ͻ���IP������ð�Ƕ��ŷָ���û������ʱ���';
comment on column T_TP_CONF.id
  is '����';
comment on column T_TP_CONF.name
  is 'TP����';
alter table T_TP_CONF
  add constraint PK_T_TP_CONF primary key (ID);

prompt
prompt Creating table T_TP_REPORT_LOG
prompt ==============================
prompt
create table T_TP_REPORT_LOG
(
  tp_msg_id   VARCHAR2(50) not null,
  msg_id      VARCHAR2(30),
  status      VARCHAR2(30),
  update_time VARCHAR2(14) not null,
  type        NUMBER(1) default 1 not null,
  need_report VARCHAR2(10) default 'false' not null
)
;
comment on column T_TP_REPORT_LOG.tp_msg_id
  is 'TP��MsgId������';
comment on column T_TP_REPORT_LOG.msg_id
  is '���ص�MsgId';
comment on column T_TP_REPORT_LOG.status
  is '����״̬';
comment on column T_TP_REPORT_LOG.update_time
  is '����ʱ�䣬14λʱ��';
comment on column T_TP_REPORT_LOG.type
  is '���ͣ�1Ϊ���ţ�2Ϊ����';
comment on column T_TP_REPORT_LOG.need_report
  is '�Ƿ���Ҫ״̬���棬true=��Ҫ����������Ҫ';
alter table T_TP_REPORT_LOG
  add constraint PK_T_TP_REPORT_LOG primary key (TP_MSG_ID);

prompt
prompt Creating table T_UMC_PUBLIC_MSG
prompt ===============================
prompt
create table T_UMC_PUBLIC_MSG
(
  id              NUMBER(9),
  create_time     VARCHAR2(14),
  message_content VARCHAR2(1000),
  status          NUMBER(3)
)
;
comment on table T_UMC_PUBLIC_MSG
  is '�û���Ϣ����-������Ϣ';
comment on column T_UMC_PUBLIC_MSG.id
  is '��ϢId';
comment on column T_UMC_PUBLIC_MSG.create_time
  is '��Ϣ����ʱ�䣬14λʱ��';
comment on column T_UMC_PUBLIC_MSG.message_content
  is '��Ϣ����';
comment on column T_UMC_PUBLIC_MSG.status
  is '0��ͨ��1�Ѷ���2ɾ����10�����Զ���';
create index IDX_UMC_PUBLIC_MSG on T_UMC_PUBLIC_MSG (CREATE_TIME);

prompt
prompt Creating table T_UMC_USER_MSG
prompt =============================
prompt
create table T_UMC_USER_MSG
(
  id              NUMBER(9),
  user_id         NUMBER(9),
  create_time     VARCHAR2(14),
  message_content VARCHAR2(1000),
  status          NUMBER(3)
)
;
comment on table T_UMC_USER_MSG
  is '�û���Ϣ����-�û���Ϣ';
comment on column T_UMC_USER_MSG.status
  is '0��ͨ��1�Ѷ���2ɾ��';
create index IDX_UMC_USER_MSG_01 on T_UMC_USER_MSG (CREATE_TIME, USER_ID);

prompt
prompt Creating table T_UMC_USER_MSG_STATUS
prompt ====================================
prompt
create table T_UMC_USER_MSG_STATUS
(
  user_id NUMBER(9),
  msg_id  NUMBER(9),
  status  NUMBER(3)
)
;
comment on table T_UMC_USER_MSG_STATUS
  is '�û���Ϣ����-�û���Ϣ״̬';
comment on column T_UMC_USER_MSG_STATUS.user_id
  is '�û�Id';
comment on column T_UMC_USER_MSG_STATUS.msg_id
  is '��ϢId';
comment on column T_UMC_USER_MSG_STATUS.status
  is '0��ͨ��1�Ѷ���2ɾ��';
create index IDX_UMC_USER_MSG_STATUS_01 on T_UMC_USER_MSG_STATUS (MSG_ID);

prompt
prompt Creating table T_USER_CUSTOM
prompt ============================
prompt
create table T_USER_CUSTOM
(
  id          NUMBER(12) not null,
  terminal_id VARCHAR2(21) not null,
  product_id  VARCHAR2(20) not null,
  status      NUMBER(1) default 0 not null,
  update_time VARCHAR2(14) not null,
  custom_time VARCHAR2(14) not null
)
;
comment on column T_USER_CUSTOM.id
  is '����';
comment on column T_USER_CUSTOM.terminal_id
  is '����';
comment on column T_USER_CUSTOM.product_id
  is '���Ƶ�ҵ���ţ�Boss�Ĳ�ƷID��Misc��ҵ��ID  106003-����';
comment on column T_USER_CUSTOM.status
  is '0������1��ͣ';
comment on column T_USER_CUSTOM.update_time
  is '14λʱ�䣬��¼����ʱ��';
comment on column T_USER_CUSTOM.custom_time
  is '����ʱ�䣨����BOSS��MISC��';
alter table T_USER_CUSTOM
  add constraint PK_USER_CUSTOM primary key (ID);

prompt
prompt Creating table T_USER_CUSTOM_BAK
prompt ================================
prompt
create table T_USER_CUSTOM_BAK
(
  id          NUMBER(12) not null,
  terminal_id VARCHAR2(21) not null,
  product_id  VARCHAR2(20) not null,
  status      NUMBER(1) not null,
  update_time VARCHAR2(14) not null,
  custom_time VARCHAR2(14) not null
)
;

prompt
prompt Creating table T_USER_CUSTOM_LOG
prompt ================================
prompt
create table T_USER_CUSTOM_LOG
(
  id           NUMBER(12) not null,
  operate_type NUMBER(1) not null,
  terminal_id  VARCHAR2(21) not null,
  product_id   VARCHAR2(20) not null,
  custom_time  VARCHAR2(14),
  cancel_time  VARCHAR2(14),
  operate_time VARCHAR2(14) not null,
  reason       VARCHAR2(200)
)
;
comment on column T_USER_CUSTOM_LOG.id
  is '����';
comment on column T_USER_CUSTOM_LOG.operate_type
  is '�������ͣ�1���ƣ�2�˶���3��ͣ��4�ָ�';
comment on column T_USER_CUSTOM_LOG.terminal_id
  is '����';
comment on column T_USER_CUSTOM_LOG.product_id
  is '��ƷID';
comment on column T_USER_CUSTOM_LOG.custom_time
  is '����ʱ��';
comment on column T_USER_CUSTOM_LOG.cancel_time
  is '�˶�ʱ��';
comment on column T_USER_CUSTOM_LOG.operate_time
  is '����ʱ��';
comment on column T_USER_CUSTOM_LOG.reason
  is '����ԭ�򣨲����Ĳ���˵����';
alter table T_USER_CUSTOM_LOG
  add constraint PK_USER_CUSTOM_LOG primary key (ID);

prompt
prompt Creating table T_USER_EXCHANGE_POINT_LOG
prompt ========================================
prompt
create table T_USER_EXCHANGE_POINT_LOG
(
  id          NUMBER(10) not null,
  terminal_id VARCHAR2(20),
  amount      NUMBER(5),
  user_ip     VARCHAR2(30),
  exc_date    VARCHAR2(14),
  r_code      NUMBER(2),
  r_msg       VARCHAR2(200),
  exc_percent NUMBER(2)
)
;
comment on table T_USER_EXCHANGE_POINT_LOG
  is '�̳ǱҶһ���־��';
comment on column T_USER_EXCHANGE_POINT_LOG.terminal_id
  is '�ֻ�����';
comment on column T_USER_EXCHANGE_POINT_LOG.amount
  is '�һ��̳Ǳ���';
comment on column T_USER_EXCHANGE_POINT_LOG.user_ip
  is '�û�ip';
comment on column T_USER_EXCHANGE_POINT_LOG.exc_date
  is '�һ�ʱ��';
comment on column T_USER_EXCHANGE_POINT_LOG.r_code
  is '�һ����code';
comment on column T_USER_EXCHANGE_POINT_LOG.r_msg
  is '�һ��������';
comment on column T_USER_EXCHANGE_POINT_LOG.exc_percent
  is '�һ�����';
alter table T_USER_EXCHANGE_POINT_LOG
  add constraint PK_T_USER_EXCHANGE_POINT_LOG primary key (ID);

prompt
prompt Creating table T_USER_FAVORITE_ITEM
prompt ===================================
prompt
create table T_USER_FAVORITE_ITEM
(
  id      NUMBER(8) not null,
  user_id NUMBER(19),
  f_type  NUMBER(1),
  f_id    NUMBER(8),
  f_time  VARCHAR2(14)
)
;
comment on column T_USER_FAVORITE_ITEM.f_type
  is '1����Ʒ
2���̻�';
alter table T_USER_FAVORITE_ITEM
  add constraint PK_T_USER_FAVORITE_ITEM primary key (ID);

prompt
prompt Creating table T_VERIFY_CARD_CODE_COMMON
prompt ========================================
prompt
create table T_VERIFY_CARD_CODE_COMMON
(
  id            NUMBER(12) not null,
  card_id       VARCHAR2(30) not null,
  card_key      VARCHAR2(256) not null,
  store_id      VARCHAR2(20) not null,
  item_id       VARCHAR2(30) not null,
  create_date   CHAR(14),
  status        NUMBER(3),
  generate_date CHAR(14),
  order_id      VARCHAR2(30),
  user_id       VARCHAR2(30)
)
;
comment on table T_VERIFY_CARD_CODE_COMMON
  is '����̻�Ԥ���ɵĿ���';
comment on column T_VERIFY_CARD_CODE_COMMON.item_id
  is '0����֤��ɶ�Ӧ������Ʒ';
comment on column T_VERIFY_CARD_CODE_COMMON.status
  is '0�������룬δ��֤
1���ѳ���
2��ʹ����
3����ʹ��
4���ѹ���
100: ��ʼ����δʹ��';
create index INDEX2_VERIFY_CARD_CODE_COMMON on T_VERIFY_CARD_CODE_COMMON (ORDER_ID);
create index INDEX_VERIFY_CARD_CODE_COMMON on T_VERIFY_CARD_CODE_COMMON (STORE_ID, ITEM_ID, STATUS);
alter table T_VERIFY_CARD_CODE_COMMON
  add constraint PK_T_VERIFY_CARD_CODE_COMMON primary key (ID);

prompt
prompt Creating table T_VERIFY_CODE_INFO
prompt =================================
prompt
create table T_VERIFY_CODE_INFO
(
  order_id      VARCHAR2(30) not null,
  item_order_id NUMBER(19),
  act_order_id  NUMBER(19),
  code          VARCHAR2(256),
  code_2d       VARCHAR2(100),
  code_status   NUMBER(3),
  trans_date    CHAR(14),
  valid_date    CHAR(14),
  expire_date   CHAR(14),
  valid_times   NUMBER(3),
  remain_times  NUMBER(3),
  terminal_id   VARCHAR2(15),
  item_id       VARCHAR2(30),
  item_name     VARCHAR2(100),
  item_quantity NUMBER(9),
  total_price   NUMBER(10),
  platform_id   VARCHAR2(15),
  store_id      VARCHAR2(20),
  sms_content   VARCHAR2(300)
)
;
comment on column T_VERIFY_CODE_INFO.code_status
  is '0������
1���ѳ���
2��ʹ����
3����ʹ��
4���ѹ���';
comment on column T_VERIFY_CODE_INFO.platform_id
  is 'FOUNDER������
STORE���̻�
CPLATFORM������';
create index INDEX_VERIFY_CODE_INFO on T_VERIFY_CODE_INFO (ACT_ORDER_ID);
alter table T_VERIFY_CODE_INFO
  add constraint PK_T_VERIFY_CODE_INFO primary key (ORDER_ID);

prompt
prompt Creating table T_VERIFY_CONSUME
prompt ===============================
prompt
create table T_VERIFY_CONSUME
(
  id              NUMBER(10) not null,
  order_id        VARCHAR2(30) not null,
  ship_id         VARCHAR2(20),
  pos_id          VARCHAR2(30),
  verify_channel  VARCHAR2(10),
  verify_date     CHAR(14),
  use_times       NUMBER(3),
  verify_trans_id VARCHAR2(30),
  is_reverse      NUMBER(1),
  verify_user     VARCHAR2(20),
  verify_status   VARCHAR2(10)
)
;
comment on column T_VERIFY_CONSUME.verify_channel
  is 'WEB��WAP���ͻ��ˣ��նˣ�����';
comment on column T_VERIFY_CONSUME.is_reverse
  is '0��δ����
1���ѳ���';
create index INDEX_VERIFY_CONSUME on T_VERIFY_CONSUME (ORDER_ID);
alter table T_VERIFY_CONSUME
  add constraint PK_T_VERIFY_CONSUME primary key (ID);

prompt
prompt Creating table T_VERIFY_CONSUME_NOTIFY
prompt ======================================
prompt
create table T_VERIFY_CONSUME_NOTIFY
(
  id          NUMBER(10) not null,
  order_id    VARCHAR2(30) not null,
  ship_id     VARCHAR2(20),
  pos_id      VARCHAR2(30),
  pos_seq     VARCHAR2(30),
  verify_date CHAR(14),
  terminal_id VARCHAR2(15)
)
;
create index INDEX_VERIFY_CONSUME_NOTIFY on T_VERIFY_CONSUME_NOTIFY (ORDER_ID);
alter table T_VERIFY_CONSUME_NOTIFY
  add constraint PK_T_VERIFY_CONSUME_NOTIFY primary key (ID);

prompt
prompt Creating table T_VERIFY_CPLATFORM_CODE
prompt ======================================
prompt
create table T_VERIFY_CPLATFORM_CODE
(
  code_md5      VARCHAR2(32) not null,
  code_rsa      VARCHAR2(256),
  store_id      VARCHAR2(20),
  item_id       VARCHAR2(30),
  generate_date CHAR(14),
  status        NUMBER(3),
  order_id      VARCHAR2(30),
  source        NUMBER(1),
  batch_no      VARCHAR2(20),
  user_id       VARCHAR2(30),
  verify_times  NUMBER(5),
  remain_times  NUMBER(5),
  terminal_id   VARCHAR2(15),
  code_type     VARCHAR2(20)
)
;
comment on table T_VERIFY_CPLATFORM_CODE
  is '��ſ���������';
comment on column T_VERIFY_CPLATFORM_CODE.item_id
  is '0����֤��ɶ�Ӧ������Ʒ';
comment on column T_VERIFY_CPLATFORM_CODE.status
  is '0�������룬δ��֤
1���ѳ���
2��ʹ����
3����ʹ��
4���ѹ���
100: ��ʼ����δʹ��';
comment on column T_VERIFY_CPLATFORM_CODE.order_id
  is '����Ԥ���ɶ�����ţ�������֤���¼��SEQ_ACT_ORDER_SUB��';
comment on column T_VERIFY_CPLATFORM_CODE.source
  is '1�����ɣ�2������';
comment on column T_VERIFY_CPLATFORM_CODE.code_type
  is '�Ź���O2O�̳ǣ� �����ۿ�ȯ�� �����ۿ�ȯ';
create index INDEX2_VERIFY_CPLATFORM_CODE on T_VERIFY_CPLATFORM_CODE (STORE_ID, ITEM_ID);
create index INDEX_VERIFY_CPLATFORM_CODE on T_VERIFY_CPLATFORM_CODE (ORDER_ID);
alter table T_VERIFY_CPLATFORM_CODE
  add constraint PK_T_VERIFY_CPLATFORM_CODE primary key (CODE_MD5);

prompt
prompt Creating table T_VERIFY_DELAY
prompt =============================
prompt
create table T_VERIFY_DELAY
(
  id           NUMBER(9) not null,
  trans_time   CHAR(14),
  code_tye     NUMBER(1),
  code_content VARCHAR2(100),
  expire_date  CHAR(14),
  platform_id  VARCHAR2(15),
  store_id     VARCHAR2(20)
)
;
comment on column T_VERIFY_DELAY.code_tye
  is '1���������
2���Ӷ������
3�������봮';
comment on column T_VERIFY_DELAY.platform_id
  is 'FOUNDER������
STORE���̻�
CPLATFORM������';
alter table T_VERIFY_DELAY
  add constraint PK_T_VERIFY_DELAY primary key (ID);

prompt
prompt Creating table T_VERIFY_FOUNDER_STORE
prompt =====================================
prompt
create table T_VERIFY_FOUNDER_STORE
(
  founder_store_id VARCHAR2(30) not null,
  founder_shop_id  VARCHAR2(300),
  local_store_id   VARCHAR2(30) not null
)
;
create index INDEX_VERIFY_FOUNDER_STORE on T_VERIFY_FOUNDER_STORE (LOCAL_STORE_ID);
alter table T_VERIFY_FOUNDER_STORE
  add constraint PK_T_VERIFY_FOUNDER_STORE primary key (FOUNDER_STORE_ID);

prompt
prompt Creating table T_VERIFY_FOUNDER_TRANS
prompt =====================================
prompt
create table T_VERIFY_FOUNDER_TRANS
(
  order_id VARCHAR2(30) not null,
  trans_id VARCHAR2(30) not null
)
;
alter table T_VERIFY_FOUNDER_TRANS
  add constraint PK_T_VERIFY_FOUNDER_TRANS primary key (TRANS_ID);

prompt
prompt Creating table T_VERIFY_QUERY
prompt =============================
prompt
create table T_VERIFY_QUERY
(
  id           NUMBER(9) not null,
  trans_time   CHAR(14),
  code_tye     NUMBER(1),
  code_content VARCHAR2(100),
  platform_id  VARCHAR2(15),
  store_id     VARCHAR2(20)
)
;
comment on column T_VERIFY_QUERY.code_tye
  is '1���������
2���Ӷ������
3�������봮';
comment on column T_VERIFY_QUERY.platform_id
  is 'FOUNDER������
STORE���̻�
CPLATFORM������';
alter table T_VERIFY_QUERY
  add constraint PK_T_VERIFY_QUERY primary key (ID);

prompt
prompt Creating table T_VERIFY_RESEND
prompt ==============================
prompt
create table T_VERIFY_RESEND
(
  id           NUMBER(9) not null,
  trans_time   CHAR(14),
  code_tye     NUMBER(1),
  code_content VARCHAR2(100),
  platform_id  VARCHAR2(15),
  store_id     VARCHAR2(20)
)
;
comment on column T_VERIFY_RESEND.code_tye
  is '1���������
2���Ӷ������
3�������봮';
comment on column T_VERIFY_RESEND.platform_id
  is 'FOUNDER������
STORE���̻�
CPLATFORM������';
alter table T_VERIFY_RESEND
  add constraint PK_T_VERIFY_RESEND primary key (ID);

prompt
prompt Creating table T_VERIFY_REVERSE
prompt ===============================
prompt
create table T_VERIFY_REVERSE
(
  id              NUMBER(10) not null,
  order_id        VARCHAR2(30) not null,
  ship_id         VARCHAR2(20),
  pos_id          VARCHAR2(30),
  reverse_channel VARCHAR2(10),
  reverse_date    CHAR(14),
  reverse_user    VARCHAR2(20),
  reverse_status  VARCHAR2(10)
)
;
comment on column T_VERIFY_REVERSE.reverse_channel
  is 'WEB��WAP���ͻ��ˣ��նˣ�����';
create index INDEX_VERIFY_REVERSE on T_VERIFY_REVERSE (ORDER_ID);
alter table T_VERIFY_REVERSE
  add constraint PK_T_VERIFY_REVERSE primary key (ID);

prompt
prompt Creating table T_VERIFY_REVERSE_NOTIFY
prompt ======================================
prompt
create table T_VERIFY_REVERSE_NOTIFY
(
  id           NUMBER(10) not null,
  order_id     VARCHAR2(30) not null,
  suborder_id  VARCHAR2(30),
  ship_id      VARCHAR2(20),
  pos_id       VARCHAR2(30),
  pos_seq      VARCHAR2(30),
  reverse_date CHAR(14),
  terminal_id  VARCHAR2(15)
)
;
create index INDEX_VERIFY_REVERSE_NOTIFY on T_VERIFY_REVERSE_NOTIFY (ORDER_ID);
alter table T_VERIFY_REVERSE_NOTIFY
  add constraint PK_T_VERIFY_REVERSE_NOTIFY primary key (ID);

prompt
prompt Creating table T_VERIFY_REVOKE
prompt ==============================
prompt
create table T_VERIFY_REVOKE
(
  id           NUMBER(9) not null,
  trans_time   CHAR(14),
  code_tye     NUMBER(1),
  code_content VARCHAR2(100),
  platform_id  VARCHAR2(15),
  store_id     VARCHAR2(20)
)
;
comment on column T_VERIFY_REVOKE.code_tye
  is '1���������
2���Ӷ������
3�������봮';
comment on column T_VERIFY_REVOKE.platform_id
  is 'FOUNDER������
STORE���̻�
CPLATFORM������';
alter table T_VERIFY_REVOKE
  add constraint PK_T_VERIFY_REVOKE primary key (ID);

prompt
prompt Creating table T_VERIFY_STORE_CODE_COMMON
prompt =========================================
prompt
create table T_VERIFY_STORE_CODE_COMMON
(
  code_md5      VARCHAR2(32) not null,
  code_rsa      VARCHAR2(256),
  store_id      VARCHAR2(20) not null,
  item_id       VARCHAR2(30) not null,
  create_date   CHAR(14),
  status        NUMBER(3),
  generate_date CHAR(14),
  verify_date   CHAR(14),
  order_id      VARCHAR2(30),
  user_id       VARCHAR2(30)
)
;
comment on table T_VERIFY_STORE_CODE_COMMON
  is '����̻�Ԥ���ɵ���֤��';
comment on column T_VERIFY_STORE_CODE_COMMON.item_id
  is '0����֤��ɶ�Ӧ������Ʒ';
comment on column T_VERIFY_STORE_CODE_COMMON.status
  is '0�������룬δ��֤
1���ѳ���
2��ʹ����
3����ʹ��
4���ѹ���
100: ��ʼ����δʹ��';
create index INDEX2_VERIFY_STORE_CODE_COMMO on T_VERIFY_STORE_CODE_COMMON (ORDER_ID);
create index INDEX_VERIFY_STORE_CODE_COMMON on T_VERIFY_STORE_CODE_COMMON (STORE_ID, ITEM_ID, STATUS);
alter table T_VERIFY_STORE_CODE_COMMON
  add constraint PK_T_VERIFY_STORE_CODE_COMMON primary key (CODE_MD5);

prompt
prompt Creating table T_WEB_ACCESS_LOG
prompt ===============================
prompt
create table T_WEB_ACCESS_LOG
(
  id                NUMBER(9) not null,
  terminal_id       VARCHAR2(11),
  custom_id         VARCHAR2(20),
  access_ip         VARCHAR2(20),
  access_start_time VARCHAR2(20) not null,
  access_stop_time  VARCHAR2(20),
  settle_time       VARCHAR2(10),
  remark            VARCHAR2(200),
  src               VARCHAR2(10),
  sessionid         VARCHAR2(200)
)
;
comment on column T_WEB_ACCESS_LOG.terminal_id
  is '�û��ֻ���';
comment on column T_WEB_ACCESS_LOG.custom_id
  is '�û���Ա���';
comment on column T_WEB_ACCESS_LOG.access_ip
  is '����IP';
comment on column T_WEB_ACCESS_LOG.access_start_time
  is '���ʿ�ʼʱ��';
comment on column T_WEB_ACCESS_LOG.access_stop_time
  is '���ʽ���ʱ��';
comment on column T_WEB_ACCESS_LOG.settle_time
  is 'ͣ��ʱ��';
comment on column T_WEB_ACCESS_LOG.src
  is '��Դ��wap��վ/web��վ';
create index IDX_WEB_ACCESSS_LOG on T_WEB_ACCESS_LOG (SESSIONID);

prompt
prompt Creating table USER_CUSTOM
prompt ==========================
prompt
create table USER_CUSTOM
(
  act_code        VARCHAR2(30) not null,
  terminal_id     VARCHAR2(21) not null,
  fee_terminal_id VARCHAR2(21),
  keyword1        VARCHAR2(20),
  keyword2        VARCHAR2(20),
  order_time      VARCHAR2(14),
  area_code       VARCHAR2(4),
  operator_code   VARCHAR2(4),
  fee_month       VARCHAR2(14),
  send_flag       VARCHAR2(8),
  service_id      VARCHAR2(30),
  fee_type        VARCHAR2(2),
  fee_code        VARCHAR2(10),
  xxly            CHAR(1),
  liveflag        CHAR(1),
  mask            CHAR(1)
)
;

prompt
prompt Creating table XWFEE_ID2KL_FEE_ID
prompt =================================
prompt
create table XWFEE_ID2KL_FEE_ID
(
  xw_fee_id VARCHAR2(60) not null,
  kl_fee_id NUMBER(9)
)
;
alter table XWFEE_ID2KL_FEE_ID
  add primary key (XW_FEE_ID);

prompt
prompt Creating table XWMEMBER_ID2KL_MEMBER_ID
prompt =======================================
prompt
create table XWMEMBER_ID2KL_MEMBER_ID
(
  xw_store_member_id VARCHAR2(60) not null,
  kl_store_member_id NUMBER(9)
)
;
alter table XWMEMBER_ID2KL_MEMBER_ID
  add constraint PK_XWMEMBER_ID2KL primary key (XW_STORE_MEMBER_ID);

prompt
prompt Creating table XW_CATEGORY_ID2KL_CATEGORY_ID
prompt ============================================
prompt
create table XW_CATEGORY_ID2KL_CATEGORY_ID
(
  xw_category_id VARCHAR2(60),
  kl_category_id NUMBER(8)
)
;

prompt
prompt Creating table XW_FEE_ID2KL_FEE_ID
prompt ==================================
prompt
create table XW_FEE_ID2KL_FEE_ID
(
  merc_id      VARCHAR2(30),
  prod_typ     VARCHAR2(20),
  fee_rate1    VARCHAR2(200),
  t_sys_fee_id NUMBER
)
;

prompt
prompt Creating table XW_PRODUCT_ID2KL_PRODUCT_ID
prompt ==========================================
prompt
create table XW_PRODUCT_ID2KL_PRODUCT_ID
(
  xw_product_id VARCHAR2(60) not null,
  kl_product_id NUMBER(8)
)
;
alter table XW_PRODUCT_ID2KL_PRODUCT_ID
  add primary key (XW_PRODUCT_ID);

prompt
prompt Creating table XW_PRODUCT_ID2_PRODUCT_ID
prompt ========================================
prompt
create table XW_PRODUCT_ID2_PRODUCT_ID
(
  xw_product_id VARCHAR2(32),
  product_id    NUMBER(8)
)
;

prompt
prompt Creating table XW_STORE_ID2KL_STORE_ID
prompt ======================================
prompt
create table XW_STORE_ID2KL_STORE_ID
(
  xw_store_id VARCHAR2(60),
  kl_store_id NUMBER(8)
)
;

prompt
prompt Creating table XW_STORE_ID2_STORE_ID
prompt ====================================
prompt
create table XW_STORE_ID2_STORE_ID
(
  xw_store_id VARCHAR2(32),
  store_id    NUMBER(9)
)
;

prompt
prompt Creating table XW_ST_CAT_ID2KL_ST_CAT_ID
prompt ========================================
prompt
create table XW_ST_CAT_ID2KL_ST_CAT_ID
(
  xw_store_category_id VARCHAR2(60),
  kl_store_category_id NUMBER(8)
)
;

prompt
prompt Creating table XW_ST_TEMP_ID2KL_ST_TEMP_ID
prompt ==========================================
prompt
create table XW_ST_TEMP_ID2KL_ST_TEMP_ID
(
  xw_store_temp_id VARCHAR2(60),
  kl_store_temp_id NUMBER(8)
)
;

prompt
prompt Creating sequence HIBERNATE_SEQUENCE
prompt ====================================
prompt
create sequence HIBERNATE_SEQUENCE
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000080
increment by 1
cache 20;

prompt
prompt Creating sequence SEQUENCE_SMS_MOLONG_WAIT
prompt ==========================================
prompt
create sequence SEQUENCE_SMS_MOLONG_WAIT
minvalue 1
maxvalue 9999999999999999999999999999
start with 121
increment by 1
cache 20;

prompt
prompt Creating sequence SEQUENCE_SMS_MO_LOG
prompt =====================================
prompt
create sequence SEQUENCE_SMS_MO_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQUENCE_SMS_MT_LOG
prompt =====================================
prompt
create sequence SEQUENCE_SMS_MT_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQUENCE_SMS_MT_WAIT
prompt ======================================
prompt
create sequence SEQUENCE_SMS_MT_WAIT
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ACT_ORDER
prompt ===============================
prompt
create sequence SEQ_ACT_ORDER
minvalue 1
maxvalue 9999999999999999999999999999
start with 37501480
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ACT_ORDER_HISTORY
prompt =======================================
prompt
create sequence SEQ_ACT_ORDER_HISTORY
minvalue 1
maxvalue 9999999999999999999999999999
start with 1002600
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ACT_ORDER_SUB
prompt ===================================
prompt
create sequence SEQ_ACT_ORDER_SUB
minvalue 1
maxvalue 9999999999999999999999999999
start with 47803740
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_BOSS_PRECONTRACT
prompt ======================================
prompt
create sequence SEQ_BOSS_PRECONTRACT
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_BOSS_REQUEST
prompt ==================================
prompt
create sequence SEQ_BOSS_REQUEST
minvalue 1
maxvalue 9999999999999999999999999999
start with 321
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_CHANNEL_CATALOG_CONF
prompt ==========================================
prompt
create sequence SEQ_CHANNEL_CATALOG_CONF
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_CHANNEL_CATALOG_RCMD_CONF
prompt ===============================================
prompt
create sequence SEQ_CHANNEL_CATALOG_RCMD_CONF
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000140
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_COMM_ID
prompt =============================
prompt
create sequence SEQ_COMM_ID
minvalue 1
maxvalue 9999999999999999999999999999
start with 1016440
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ES_EVENT_TYPES
prompt ====================================
prompt
create sequence SEQ_ES_EVENT_TYPES
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000180
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ES_LISTENERS
prompt ==================================
prompt
create sequence SEQ_ES_LISTENERS
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ES_LISTENER_EVENTS
prompt ========================================
prompt
create sequence SEQ_ES_LISTENER_EVENTS
minvalue 1
maxvalue 9999999999999999999999999999
start with 1001740
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EXCHANGE_POINT_LOG_ID
prompt ===========================================
prompt
create sequence SEQ_EXCHANGE_POINT_LOG_ID
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000440
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_GOODSHELF_GOOD_REL
prompt ========================================
prompt
create sequence SEQ_GOODSHELF_GOOD_REL
minvalue 1
maxvalue 9999999999999999999999999999
start with 1001160
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_GOOD_SHELF
prompt ================================
prompt
create sequence SEQ_GOOD_SHELF
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ITEM_COMMENT
prompt ==================================
prompt
create sequence SEQ_ITEM_COMMENT
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_LOTTERY_ACTIVE
prompt ====================================
prompt
create sequence SEQ_LOTTERY_ACTIVE
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_LOTTERY_ACTIVE_CONF
prompt =========================================
prompt
create sequence SEQ_LOTTERY_ACTIVE_CONF
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_LOTTERY_LOG
prompt =================================
prompt
create sequence SEQ_LOTTERY_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_LOTTERY_PRIZE
prompt ===================================
prompt
create sequence SEQ_LOTTERY_PRIZE
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_LOTTERY_TARGET
prompt ====================================
prompt
create sequence SEQ_LOTTERY_TARGET
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_MEMBER
prompt ============================
prompt
create sequence SEQ_MEMBER
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_MEMBER_ID
prompt ===============================
prompt
create sequence SEQ_MEMBER_ID
minvalue 1
maxvalue 9999999999999999999999999999
start with 4056364
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_MMS_BATCH_TASK
prompt ====================================
prompt
create sequence SEQ_MMS_BATCH_TASK
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_OPEN_CUSTOMER
prompt ===================================
prompt
create sequence SEQ_OPEN_CUSTOMER
minvalue 1000000000
maxvalue 9999999999
start with 1000000020
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ORDER
prompt ===========================
prompt
create sequence SEQ_ORDER
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ORDER_EXCEPTION
prompt =====================================
prompt
create sequence SEQ_ORDER_EXCEPTION
minvalue 1
maxvalue 9999999999999999999999999999
start with 2081
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ORDER_REFUND
prompt ==================================
prompt
create sequence SEQ_ORDER_REFUND
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000280
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_PAGE_STATIC_INFO
prompt ======================================
prompt
create sequence SEQ_PAGE_STATIC_INFO
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000840
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_PAY_COMMON
prompt ================================
prompt
create sequence SEQ_PAY_COMMON
minvalue 1
maxvalue 9999999999999999999999999999
start with 23701340
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_PAY_ORDER
prompt ===============================
prompt
create sequence SEQ_PAY_ORDER
minvalue 1
maxvalue 9999999999999999999999999999
start with 2242620
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SHOP
prompt ==========================
prompt
create sequence SEQ_SHOP
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000060
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SHOP_INVOICE
prompt ==================================
prompt
create sequence SEQ_SHOP_INVOICE
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SHOP_REGION
prompt =================================
prompt
create sequence SEQ_SHOP_REGION
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000020
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SHOP_SETTINGS
prompt ===================================
prompt
create sequence SEQ_SHOP_SETTINGS
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000040
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SMSBUY_ITEM
prompt =================================
prompt
create sequence SEQ_SMSBUY_ITEM
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000140
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SMS_ACT_ONLINE
prompt ====================================
prompt
create sequence SEQ_SMS_ACT_ONLINE
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000020
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SMS_ACT_ROUTER
prompt ====================================
prompt
create sequence SEQ_SMS_ACT_ROUTER
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SMS_BATCH_LOG
prompt ===================================
prompt
create sequence SEQ_SMS_BATCH_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 36101
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SMS_BATCH_TASK
prompt ====================================
prompt
create sequence SEQ_SMS_BATCH_TASK
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SMS_MO_LOG
prompt ================================
prompt
create sequence SEQ_SMS_MO_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 10121
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SMS_MT_LOG
prompt ================================
prompt
create sequence SEQ_SMS_MT_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 1248961
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SMS_REPORT
prompt ================================
prompt
create sequence SEQ_SMS_REPORT
minvalue 1
maxvalue 9999999999999999999999999999
start with 41241
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_STORE
prompt ===========================
prompt
create sequence SEQ_STORE
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000240
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_COMM_ID
prompt =================================
prompt
create sequence SEQ_SYS_COMM_ID
minvalue 1
maxvalue 9999999999999999999999999999
start with 1314760
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_ITEM_GROUP_LINK_ID
prompt ============================================
prompt
create sequence SEQ_SYS_ITEM_GROUP_LINK_ID
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000140
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_ITEM_ID
prompt =================================
prompt
create sequence SEQ_SYS_ITEM_ID
minvalue 1
maxvalue 9999999999999999999999999999
start with 2127760
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_ITEM_PARAM_ID
prompt =======================================
prompt
create sequence SEQ_SYS_ITEM_PARAM_ID
minvalue 1
maxvalue 9999999999999999999999999999
start with 1001760
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_ITEM_PROPERTY_ID
prompt ==========================================
prompt
create sequence SEQ_SYS_ITEM_PROPERTY_ID
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_ITEM_TAG_ID
prompt =====================================
prompt
create sequence SEQ_SYS_ITEM_TAG_ID
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000240
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_SEARCH_IDX
prompt ====================================
prompt
create sequence SEQ_SYS_SEARCH_IDX
minvalue 1
maxvalue 9999999999
start with 201
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_SEGMENT
prompt =================================
prompt
create sequence SEQ_SYS_SEGMENT
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_S_SURVEY
prompt ==============================
prompt
create sequence SEQ_S_SURVEY
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000140
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_UMC_MSG
prompt =============================
prompt
create sequence SEQ_UMC_MSG
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_USER_CUSTOM
prompt =================================
prompt
create sequence SEQ_USER_CUSTOM
minvalue 1
maxvalue 9999999999999999999999999999
start with 2212836
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_USER_CUSTOM_LOG
prompt =====================================
prompt
create sequence SEQ_USER_CUSTOM_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 127421
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_VERIFYCODE_CPLATFORM
prompt ==========================================
prompt
create sequence SEQ_VERIFYCODE_CPLATFORM
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_VERIFYCODE_ORDER
prompt ======================================
prompt
create sequence SEQ_VERIFYCODE_ORDER
minvalue 1
maxvalue 9999999999999999999999999999
start with 1000080
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_XW_FEE_TEMP
prompt =================================
prompt
create sequence SEQ_XW_FEE_TEMP
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating view V_ACT_ORDER_PER
prompt =============================
prompt
create or replace force view v_act_order_per as
select act_order_id,
       act_begin_time,
       pay_begin_time,
       pay_finish_time,
       act_finish_time,
       (pay_begin_time - act_begin_time) * (24 * 3600) cost_act_to_pay,
       (pay_finish_time - pay_begin_time) * (24 * 3600) cost_pay,
       (act_finish_time - pay_finish_time) * (24 * 3600) cost_pay_to_act
  from (select ao.id act_order_id,
               to_date(ao.create_time, 'YYYYMMDDHH24MISS') act_begin_time,
               to_date(min(po.create_time), 'YYYYMMDDHH24MISS') pay_begin_time,
               to_date(max(po.update_time), 'YYYYMMDDHH24MISS') pay_finish_time,
               to_date(ao.pay_time, 'YYYYMMDDHH24MISS') act_finish_time
          from t_act_order ao
          left join t_pay_order po
            on po.act_order_id = ao.id
         group by ao.id, ao.create_time, ao.pay_time
         order by ao.id desc);

prompt
prompt Creating view V_GOODS_INFO
prompt ==========================
prompt
create or replace force view v_goods_info as
select tis.id g_id,
       tis.cash_idgoods g_payment_cash,
       tis.coin_idgoods g_payment_coin,
       tis.score_idgoods g_payment_score,
       tis.is_valid g_is_valid,
       tis.iseckill g_iseckill,
       tis.iseckill_price g_iseckill_price,
       tis.cash_idgoods g_cash_idgoods,
       tis.coin_idgoods g_coin_idgoods,
       tis.score_idgoods g_score_idgoods,
       tis.org_id g_org_id,
       tis.name g_name,
       tis.short_name g_short_name,
       tis.type_id g_type_id,
       tis.brand g_brand,
       tis.create_time g_create_time,
       tis.update_time g_update_time,
       tis.market_content g_market_content,
       tis.img_path g_web_path,
       to_char(nvl(tis.market_price, 0), 'fm999999990.00') g_market_price,
       to_char(nvl(tis.shop_price, 0), 'fm999999990.00') g_shop_price,
       tis.remark g_remark,
       tis.post_flag g_post_flag,
       tis.item_mode g_item_mode,
       tis.sale_start_time g_start_time,
       tis.sale_stop_time g_stop_time,
       tis.is_view g_is_view,
       tis.warm_prompt g_warm_prompt,
       tis.group_flag g_group_flag,
       tis.store_id g_store_id,
       to_char(nvl(tise.logistics_fee, 0), 'fm999999990.00') g_logistics_fee,
       nvl(tise.logistics_fee_type, 0) g_logistics_fee_type,
       (select to_char(wm_concat(region_code)) region_code from t_item_sale_area_link area_link where tis.id = area_link.sale_id) g_region_code,
       (select to_char(wm_concat(region_code)) region_codes from t_item_sale_user_area_link user_area_link where tis.id = user_area_link.sale_id) g_region_codes,
       (select to_char(wm_concat(user_level)) user_levels from t_item_sale_user_level_link sale_user_level where tis.id = sale_user_level.sale_id) g_user_levels,
       (select to_char(wm_concat(param_value)) property from t_item_param item_param where tis.id = item_param.item_id) g_property,
       (select to_char(wm_concat(tag)) tags from t_item_tag item_tag where tis.id = item_tag.item_id) g_tags
  from t_item_sale tis
  left join t_item_sale_ext tise
    on tis.id = tise.sale_id
 where tis.status = 3
   and tis.is_valid = 1;

prompt
prompt Creating view V_REGION
prompt ======================
prompt
create or replace force view v_region as
select r2.region_code,r.region_name||' '||r1.region_name||' '||r2.region_name region,
 r.short_name||' '||r1.short_name||' '||r2.short_name shortname from t_sys_region r, t_sys_region r1, t_sys_region r2 where r.region_code = r1.parent_region and r1.region_code = r2.parent_region;

prompt
prompt Creating view V_SEARCH_GOOD
prompt ===========================
prompt
create or replace force view v_search_good as
select tis.id g_id,
       tis.cash_idgoods g_payment_cash,
       tis.coin_idgoods g_payment_coin,
       tis.score_idgoods g_payment_score,
       tis.is_valid g_is_valid,
       tis.iseckill g_iseckill,
       tis.iseckill_price g_iseckill_price,
       tis.cash_idgoods g_cash_idgoods,
       tis.coin_idgoods g_coin_idgoods,
       tis.score_idgoods g_score_idgoods,
       tis.org_id g_org_id,
       tis.name g_name,
       tis.short_name g_short_name,
       ts.id g_store_id,
       ts.name g_store_name,
       ts.short_name g_store_short_name,
       tis.type_id g_type_id,
       tst.name g_type_name,
       tis.brand g_brand,
       tis.create_time g_create_time,
       tis.update_time g_update_time,
       tis.market_content g_market_content,
       nvl(tise.click_num, 0) g_click_num,
       tis.img_path g_web_path,
       to_char(nvl(tis.market_price, 0), 'fm999999990.00') g_market_price,
       to_char(nvl(tis.shop_price, 0), 'fm999999990.00') g_shop_price,
       nvl(tise.sale_num, 0) g_sale_num,
       nvl(tise.comment_num, 0) g_comment_num,
       nvl(tise.user_num, 0) g_user_num,
       nvl(tise.collect_num, 0) g_collect_num,
       nvl(tis.stock_num, 0) g_stock_num,
       tis.remark g_remark,
       to_char(nvl(tise.logistics_fee, 0), 'fm999999990.00') g_logistics_fee,
       nvl(tise.logistics_fee_type, 0) g_logistics_fee_type,
       tis.post_flag g_post_flag,
       tis.item_mode g_item_mode,
       tis.sale_start_time g_start_time,
       tis.sale_stop_time g_stop_time,
       nvl(tise.rank, 0) g_rank,
       tis.is_view g_is_view,
       tis.warm_prompt g_warm_prompt,
       tis.group_flag g_group_flag,
       (select to_char(wm_concat(region_code)) region_code from t_item_sale_area_link area_link where tis.id = area_link.sale_id) g_region_code,
       (select to_char(wm_concat(region_code)) region_codes from t_item_sale_user_area_link user_area_link where tis.id = user_area_link.sale_id) g_region_codes,
       (select to_char(wm_concat(user_level)) user_levels from t_item_sale_user_level_link sale_user_level where tis.id = sale_user_level.sale_id) g_user_levels,
       (select to_char(wm_concat(param_value)) property from t_item_param item_param where tis.id = item_param.item_id) g_property,
       (select to_char(wm_concat(tag)) tags from t_item_tag item_tag where tis.id = item_tag.item_id) g_tags,
       (select to_char(min(price), 'fm999999990.00') from t_item_price item_price where tis.id = item_price.sale_id) g_min_price,
       (select max(sys_connect_by_path(id, ',')) || ',' type_path
          from t_sys_type
         where is_valid = 1
         start with id = tis.type_id
        connect by prior p_id = id) g_type_path
  from t_item_sale tis
  left join t_store ts
    on tis.store_id = ts.id
  left join t_sys_type tst
    on tis.type_id = tst.id
  left join t_item_sale_ext tise
    on tis.id = tise.sale_id
 where tis.status = 3
   and tis.is_valid = 1;

prompt
prompt Creating view V_VERIFY_CONSUME
prompt ==============================
prompt
create or replace force view v_verify_consume as
select 'C'||to_char(id) as id, order_id, ship_id, pos_id,
'' as pos_seq, verify_channel, verify_date, use_times, is_reverse, verify_user, verify_status from t_verify_consume
union all
select 'F'||to_char(id) as id, order_id, ship_id, pos_id,
pos_seq, 'POS' as verify_channel, verify_date, 1, 0, terminal_id, '0000' from t_verify_consume_notify where pos_id is not null;

prompt
prompt Creating package XW_DATA_SYNC
prompt =============================
prompt
create or replace package xw_data_sync is

  -- Author  : ZHANGJIAN
  -- Created : 2013/7/1 17:01:55
  -- Purpose :

  -- Public type declarations
  --type <TypeName> is <Datatype>;

  -- Public constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
  --<VariableName> <Datatype>;

  -- Public function and procedure declarations
  procedure cleardata;
  function xwcatory_id2klid(xwid in varchar2) return number;
  function xwproduct_id2klid(xwid in varchar2) return number;
  function xwstore_id2klid(xwid in varchar2) return number;
  function xwmember_id2klid(xwid in varchar2) return number;
  function xwstore_catory_id2klid(xwid in varchar2) return number;
  function xwstore_temp_id2klid(xwtempid in varchar2,xwposition in number) return number;
  function xwfee_id2klid(xwid in varchar2) return number;
  FUNCTION MD5(passwd IN VARCHAR2) RETURN VARCHAR2;
  FUNCTION xw_fee2kl_fee(m_id in varchar2,p_typ in varchar2,f_rate1 in varchar2) return number;
  function xwmapid2xwmerid(mapp_id in varchar2) return varchar2;
  procedure covertdata;
  procedure logdata(log_step in number,vtable in varchar2,op_type in varchar2,op_result in varchar2);


end xw_data_sync;
/

prompt
prompt Creating type SPELL_CODE
prompt ========================
prompt
CREATE OR REPLACE TYPE "SPELL_CODE"                                          as object(spell varchar2(10),code number)
/

prompt
prompt Creating type T_SPELLCODE
prompt =========================
prompt
CREATE OR REPLACE TYPE "T_SPELLCODE"                                          is table of spell_code
/

prompt
prompt Creating function F_GETSPELLCODE
prompt ================================
prompt
create or replace function f_getSpellcode return t_spellcode Pipelined
is
Begin
  PIPE Row(spell_code('a', -20319));
  PIPE Row(spell_code('ai', -20317));
  PIPE Row(spell_code('an', -20304));
  PIPE Row(spell_code('ang', -20295));
  PIPE Row(spell_code('ao', -20292));
  PIPE Row(spell_code('ba', -20283));
  PIPE Row(spell_code('bai', -20265));
  PIPE Row(spell_code('ban', -20257));
  PIPE Row(spell_code('bang', -20242));
  PIPE Row(spell_code('bao', -20230));
  PIPE Row(spell_code('bei', -20051));
  PIPE Row(spell_code('ben', -20036));
  PIPE Row(spell_code('beng', -20032));
  PIPE Row(spell_code('bi', -20026));
  PIPE Row(spell_code('bian', -20002));
  PIPE Row(spell_code('biao', -19990));
  PIPE Row(spell_code('bie', -19986));
  PIPE Row(spell_code('bin', -19982));
  PIPE Row(spell_code('bing', -19976));
  PIPE Row(spell_code('bo', -19805));
  PIPE Row(spell_code('bu', -19784));
  PIPE Row(spell_code('ca', -19775));
  PIPE Row(spell_code('cai', -19774));
  PIPE Row(spell_code('can', -19763));
  PIPE Row(spell_code('cang', -19756));
  PIPE Row(spell_code('cao', -19751));
  PIPE Row(spell_code('ce', -19746));
  PIPE Row(spell_code('ceng', -19741));
  PIPE Row(spell_code('cha', -19739));
  PIPE Row(spell_code('chai', -19728));
  PIPE Row(spell_code('chan', -19725));
  PIPE Row(spell_code('chang', -19715));
  PIPE Row(spell_code('chao', -19540));
  PIPE Row(spell_code('che', -19531));
  PIPE Row(spell_code('chen', -19525));
  PIPE Row(spell_code('cheng', -19515));
  PIPE Row(spell_code('chi', -19500));
  PIPE Row(spell_code('chong', -19484));
  PIPE Row(spell_code('chou', -19479));
  PIPE Row(spell_code('chu', -19467));
  PIPE Row(spell_code('chuai', -19289));
  PIPE Row(spell_code('chuan', -19288));
  PIPE Row(spell_code('chuang', -19281));
  PIPE Row(spell_code('chui', -19275));
  PIPE Row(spell_code('chun', -19270));
  PIPE Row(spell_code('chuo', -19263));
  PIPE Row(spell_code('ci', -19261));
  PIPE Row(spell_code('cong', -19249));
  PIPE Row(spell_code('cou', -19243));
  PIPE Row(spell_code('cu', -19242));
  PIPE Row(spell_code('cuan', -19238));
  PIPE Row(spell_code('cui', -19235));
  PIPE Row(spell_code('cun', -19227));
  PIPE Row(spell_code('cuo', -19224));
  PIPE Row(spell_code('da', -19218));
  PIPE Row(spell_code('dai', -19212));
  PIPE Row(spell_code('dan', -19038));
  PIPE Row(spell_code('dang', -19023));
  PIPE Row(spell_code('dao', -19018));
  PIPE Row(spell_code('de', -19006));
  PIPE Row(spell_code('deng', -19003));
  PIPE Row(spell_code('di', -18996));
  PIPE Row(spell_code('dian', -18977));
  PIPE Row(spell_code('diao', -18961));
  PIPE Row(spell_code('die', -18952));
  PIPE Row(spell_code('ding', -18783));
  PIPE Row(spell_code('diu', -18774));
  PIPE Row(spell_code('dong', -18773));
  PIPE Row(spell_code('dou', -18763));
  PIPE Row(spell_code('du', -18756));
  PIPE Row(spell_code('duan', -18741));
  PIPE Row(spell_code('dui', -18735));
  PIPE Row(spell_code('dun', -18731));
  PIPE Row(spell_code('duo', -18722));
  PIPE Row(spell_code('e', -18710));
  PIPE Row(spell_code('en', -18697));
  PIPE Row(spell_code('er', -18696));
  PIPE Row(spell_code('fa', -18526));
  PIPE Row(spell_code('fan', -18518));
  PIPE Row(spell_code('fang', -18501));
  PIPE Row(spell_code('fei', -18490));
  PIPE Row(spell_code('fen', -18478));
  PIPE Row(spell_code('feng', -18463));
  PIPE Row(spell_code('fo', -18448));
  PIPE Row(spell_code('fou', -18447));
  PIPE Row(spell_code('fu', -18446));
  PIPE Row(spell_code('ga', -18239));
  PIPE Row(spell_code('gai', -18237));
  PIPE Row(spell_code('gan', -18231));
  PIPE Row(spell_code('gang', -18220));
  PIPE Row(spell_code('gao', -18211));
  PIPE Row(spell_code('ge', -18201));
  PIPE Row(spell_code('gei', -18184));
  PIPE Row(spell_code('gen', -18183));
  PIPE Row(spell_code('geng', -18181));
  PIPE Row(spell_code('gong', -18012));
  PIPE Row(spell_code('gou', -17997));
  PIPE Row(spell_code('gu', -17988));
  PIPE Row(spell_code('gua', -17970));
  PIPE Row(spell_code('guai', -17964));
  PIPE Row(spell_code('guan', -17961));
  PIPE Row(spell_code('guang', -17950));
  PIPE Row(spell_code('gui', -17947));
  PIPE Row(spell_code('gun', -17931));
  PIPE Row(spell_code('guo', -17928));
  PIPE Row(spell_code('ha', -17922));
  PIPE Row(spell_code('hai', -17759));
  PIPE Row(spell_code('han', -17752));
  PIPE Row(spell_code('hang', -17733));
  PIPE Row(spell_code('hao', -17730));
  PIPE Row(spell_code('he', -17721));
  PIPE Row(spell_code('hei', -17703));
  PIPE Row(spell_code('hen', -17701));
  PIPE Row(spell_code('heng', -17697));
  PIPE Row(spell_code('hong', -17692));
  PIPE Row(spell_code('hou', -17683));
  PIPE Row(spell_code('hu', -17676));
  PIPE Row(spell_code('hua', -17496));
  PIPE Row(spell_code('huai', -17487));
  PIPE Row(spell_code('huan', -17482));
  PIPE Row(spell_code('huang', -17468));
  PIPE Row(spell_code('hui', -17454));
  PIPE Row(spell_code('hun', -17433));
  PIPE Row(spell_code('huo', -17427));
  PIPE Row(spell_code('ji', -17417));
  PIPE Row(spell_code('jia', -17202));
  PIPE Row(spell_code('jian', -17185));
  PIPE Row(spell_code('jiang', -16983));
  PIPE Row(spell_code('jiao', -16970));
  PIPE Row(spell_code('jie', -16942));
  PIPE Row(spell_code('jin', -16915));
  PIPE Row(spell_code('jing', -16733));
  PIPE Row(spell_code('jiong', -16708));
  PIPE Row(spell_code('jiu', -16706));
  PIPE Row(spell_code('ju', -16689));
  PIPE Row(spell_code('juan', -16664));
  PIPE Row(spell_code('jue', -16657));
  PIPE Row(spell_code('jun', -16647));
  PIPE Row(spell_code('ka', -16474));
  PIPE Row(spell_code('kai', -16470));
  PIPE Row(spell_code('kan', -16465));
  PIPE Row(spell_code('kang', -16459));
  PIPE Row(spell_code('kao', -16452));
  PIPE Row(spell_code('ke', -16448));
  PIPE Row(spell_code('ken', -16433));
  PIPE Row(spell_code('keng', -16429));
  PIPE Row(spell_code('kong', -16427));
  PIPE Row(spell_code('kou', -16423));
  PIPE Row(spell_code('ku', -16419));
  PIPE Row(spell_code('kua', -16412));
  PIPE Row(spell_code('kuai', -16407));
  PIPE Row(spell_code('kuan', -16403));
  PIPE Row(spell_code('kuang', -16401));
  PIPE Row(spell_code('kui', -16393));
  PIPE Row(spell_code('kun', -16220));
  PIPE Row(spell_code('kuo', -16216));
  PIPE Row(spell_code('la', -16212));
  PIPE Row(spell_code('lai', -16205));
  PIPE Row(spell_code('lan', -16202));
  PIPE Row(spell_code('lang', -16187));
  PIPE Row(spell_code('lao', -16180));
  PIPE Row(spell_code('le', -16171));
  PIPE Row(spell_code('lei', -16169));
  PIPE Row(spell_code('leng', -16158));
  PIPE Row(spell_code('li', -16155));
  PIPE Row(spell_code('lia', -15959));
  PIPE Row(spell_code('lian', -15958));
  PIPE Row(spell_code('liang', -15944));
  PIPE Row(spell_code('liao', -15933));
  PIPE Row(spell_code('lie', -15920));
  PIPE Row(spell_code('lin', -15915));
  PIPE Row(spell_code('ling', -15903));
  PIPE Row(spell_code('liu', -15889));
  PIPE Row(spell_code('long', -15878));
  PIPE Row(spell_code('lou', -15707));
  PIPE Row(spell_code('lu', -15701));
  PIPE Row(spell_code('lv', -15681));
  PIPE Row(spell_code('luan', -15667));
  PIPE Row(spell_code('lue', -15661));
  PIPE Row(spell_code('lun', -15659));
  PIPE Row(spell_code('luo', -15652));
  PIPE Row(spell_code('ma', -15640));
  PIPE Row(spell_code('mai', -15631));
  PIPE Row(spell_code('man', -15625));
  PIPE Row(spell_code('mang', -15454));
  PIPE Row(spell_code('mao', -15448));
  PIPE Row(spell_code('me', -15436));
  PIPE Row(spell_code('mei', -15435));
  PIPE Row(spell_code('men', -15419));
  PIPE Row(spell_code('meng', -15416));
  PIPE Row(spell_code('mi', -15408));
  PIPE Row(spell_code('mian', -15394));
  PIPE Row(spell_code('miao', -15385));
  PIPE Row(spell_code('mie', -15377));
  PIPE Row(spell_code('min', -15375));
  PIPE Row(spell_code('ming', -15369));
  PIPE Row(spell_code('miu', -15363));
  PIPE Row(spell_code('mo', -15362));
  PIPE Row(spell_code('mou', -15183));
  PIPE Row(spell_code('mu', -15180));
  PIPE Row(spell_code('na', -15165));
  PIPE Row(spell_code('nai', -15158));
  PIPE Row(spell_code('nan', -15153));
  PIPE Row(spell_code('nang', -15150));
  PIPE Row(spell_code('nao', -15149));
  PIPE Row(spell_code('ne', -15144));
  PIPE Row(spell_code('nei', -15143));
  PIPE Row(spell_code('nen', -15141));
  PIPE Row(spell_code('neng', -15140));
  PIPE Row(spell_code('ni', -15139));
  PIPE Row(spell_code('nian', -15128));
  PIPE Row(spell_code('niang', -15121));
  PIPE Row(spell_code('niao', -15119));
  PIPE Row(spell_code('nie', -15117));
  PIPE Row(spell_code('nin', -15110));
  PIPE Row(spell_code('ning', -15109));
  PIPE Row(spell_code('niu', -14941));
  PIPE Row(spell_code('nong', -14937));
  PIPE Row(spell_code('nu', -14933));
  PIPE Row(spell_code('nv', -14930));
  PIPE Row(spell_code('nuan', -14929));
  PIPE Row(spell_code('nue', -14928));
  PIPE Row(spell_code('nuo', -14926));
  PIPE Row(spell_code('o', -14922));
  PIPE Row(spell_code('ou', -14921));
  PIPE Row(spell_code('pa', -14914));
  PIPE Row(spell_code('pai', -14908));
  PIPE Row(spell_code('pan', -14902));
  PIPE Row(spell_code('pang', -14894));
  PIPE Row(spell_code('pao', -14889));
  PIPE Row(spell_code('pei', -14882));
  PIPE Row(spell_code('pen', -14873));
  PIPE Row(spell_code('peng', -14871));
  PIPE Row(spell_code('pi', -14857));
  PIPE Row(spell_code('pian', -14678));
  PIPE Row(spell_code('piao', -14674));
  PIPE Row(spell_code('pie', -14670));
  PIPE Row(spell_code('pin', -14668));
  PIPE Row(spell_code('ping', -14663));
  PIPE Row(spell_code('po', -14654));
  PIPE Row(spell_code('pu', -14645));
  PIPE Row(spell_code('qi', -14630));
  PIPE Row(spell_code('qia', -14594));
  PIPE Row(spell_code('qian', -14429));
  PIPE Row(spell_code('qiang', -14407));
  PIPE Row(spell_code('qiao', -14399));
  PIPE Row(spell_code('qie', -14384));
  PIPE Row(spell_code('qin', -14379));
  PIPE Row(spell_code('qing', -14368));
  PIPE Row(spell_code('qiong', -14355));
  PIPE Row(spell_code('qiu', -14353));
  PIPE Row(spell_code('qu', -14345));
  PIPE Row(spell_code('quan', -14170));
  PIPE Row(spell_code('que', -14159));
  PIPE Row(spell_code('qun', -14151));
  PIPE Row(spell_code('ran', -14149));
  PIPE Row(spell_code('rang', -14145));
  PIPE Row(spell_code('rao', -14140));
  PIPE Row(spell_code('re', -14137));
  PIPE Row(spell_code('ren', -14135));
  PIPE Row(spell_code('reng', -14125));
  PIPE Row(spell_code('ri', -14123));
  PIPE Row(spell_code('rong', -14122));
  PIPE Row(spell_code('rou', -14112));
  PIPE Row(spell_code('ru', -14109));
  PIPE Row(spell_code('ruan', -14099));
  PIPE Row(spell_code('rui', -14097));
  PIPE Row(spell_code('run', -14094));
  PIPE Row(spell_code('ruo', -14092));
  PIPE Row(spell_code('sa', -14090));
  PIPE Row(spell_code('sai', -14087));
  PIPE Row(spell_code('san', -14083));
  PIPE Row(spell_code('sang', -13917));
  PIPE Row(spell_code('sao', -13914));
  PIPE Row(spell_code('se', -13910));
  PIPE Row(spell_code('sen', -13907));
  PIPE Row(spell_code('seng', -13906));
  PIPE Row(spell_code('sha', -13905));
  PIPE Row(spell_code('shai', -13896));
  PIPE Row(spell_code('shan', -13894));
  PIPE Row(spell_code('shang', -13878));
  PIPE Row(spell_code('shao', -13870));
  PIPE Row(spell_code('she', -13859));
  PIPE Row(spell_code('shen', -13847));
  PIPE Row(spell_code('sheng', -13831));
  PIPE Row(spell_code('shi', -13658));
  PIPE Row(spell_code('shou', -13611));
  PIPE Row(spell_code('shu', -13601));
  PIPE Row(spell_code('shua', -13406));
  PIPE Row(spell_code('shuai', -13404));
  PIPE Row(spell_code('shuan', -13400));
  PIPE Row(spell_code('shuang', -13398));
  PIPE Row(spell_code('shui', -13395));
  PIPE Row(spell_code('shun', -13391));
  PIPE Row(spell_code('shuo', -13387));
  PIPE Row(spell_code('si', -13383));
  PIPE Row(spell_code('song', -13367));
  PIPE Row(spell_code('sou', -13359));
  PIPE Row(spell_code('su', -13356));
  PIPE Row(spell_code('suan', -13343));
  PIPE Row(spell_code('sui', -13340));
  PIPE Row(spell_code('sun', -13329));
  PIPE Row(spell_code('suo', -13326));
  PIPE Row(spell_code('ta', -13318));
  PIPE Row(spell_code('tai', -13147));
  PIPE Row(spell_code('tan', -13138));
  PIPE Row(spell_code('tang', -13120));
  PIPE Row(spell_code('tao', -13107));
  PIPE Row(spell_code('te', -13096));
  PIPE Row(spell_code('teng', -13095));
  PIPE Row(spell_code('ti', -13091));
  PIPE Row(spell_code('tian', -13076));
  PIPE Row(spell_code('tiao', -13068));
  PIPE Row(spell_code('tie', -13063));
  PIPE Row(spell_code('ting', -13060));
  PIPE Row(spell_code('tong', -12888));
  PIPE Row(spell_code('tou', -12875));
  PIPE Row(spell_code('tu', -12871));
  PIPE Row(spell_code('tuan', -12860));
  PIPE Row(spell_code('tui', -12858));
  PIPE Row(spell_code('tun', -12852));
  PIPE Row(spell_code('tuo', -12849));
  PIPE Row(spell_code('wa', -12838));
  PIPE Row(spell_code('wai', -12831));
  PIPE Row(spell_code('wan', -12829));
  PIPE Row(spell_code('wang', -12812));
  PIPE Row(spell_code('wei', -12802));
  PIPE Row(spell_code('wen', -12607));
  PIPE Row(spell_code('weng', -12597));
  PIPE Row(spell_code('wo', -12594));
  PIPE Row(spell_code('wu', -12585));
  PIPE Row(spell_code('xi', -12556));
  PIPE Row(spell_code('xia', -12359));
  PIPE Row(spell_code('xian', -12346));
  PIPE Row(spell_code('xiang', -12320));
  PIPE Row(spell_code('xiao', -12300));
  PIPE Row(spell_code('xie', -12120));
  PIPE Row(spell_code('xin', -12099));
  PIPE Row(spell_code('xing', -12089));
  PIPE Row(spell_code('xiong', -12074));
  PIPE Row(spell_code('xiu', -12067));
  PIPE Row(spell_code('xu', -12058));
  PIPE Row(spell_code('xuan', -12039));
  PIPE Row(spell_code('xue', -11867));
  PIPE Row(spell_code('xun', -11861));
  PIPE Row(spell_code('ya', -11847));
  PIPE Row(spell_code('yan', -11831));
  PIPE Row(spell_code('yang', -11798));
  PIPE Row(spell_code('yao', -11781));
  PIPE Row(spell_code('ye', -11604));
  PIPE Row(spell_code('yi', -11589));
  PIPE Row(spell_code('yin', -11536));
  PIPE Row(spell_code('ying', -11358));
  PIPE Row(spell_code('yo', -11340));
  PIPE Row(spell_code('yong', -11339));
  PIPE Row(spell_code('you', -11324));
  PIPE Row(spell_code('yu', -11303));
  PIPE Row(spell_code('yuan', -11097));
  PIPE Row(spell_code('yue', -11077));
  PIPE Row(spell_code('yun', -11067));
  PIPE Row(spell_code('za', -11055));
  PIPE Row(spell_code('zai', -11052));
  PIPE Row(spell_code('zan', -11045));
  PIPE Row(spell_code('zang', -11041));
  PIPE Row(spell_code('zao', -11038));
  PIPE Row(spell_code('ze', -11024));
  PIPE Row(spell_code('zei', -11020));
  PIPE Row(spell_code('zen', -11019));
  PIPE Row(spell_code('zeng', -11018));
  PIPE Row(spell_code('zha', -11014));
  PIPE Row(spell_code('zhai', -10838));
  PIPE Row(spell_code('zhan', -10832));
  PIPE Row(spell_code('zhang', -10815));
  PIPE Row(spell_code('zhao', -10800));
  PIPE Row(spell_code('zhe', -10790));
  PIPE Row(spell_code('zhen', -10780));
  PIPE Row(spell_code('zheng', -10764));
  PIPE Row(spell_code('zhi', -10587));
  PIPE Row(spell_code('zhong', -10544));
  PIPE Row(spell_code('zhou', -10533));
  PIPE Row(spell_code('zhu', -10519));
  PIPE Row(spell_code('zhua', -10331));
  PIPE Row(spell_code('zhuai', -10329));
  PIPE Row(spell_code('zhuan', -10328));
  PIPE Row(spell_code('zhuang', -10322));
  PIPE Row(spell_code('zhui', -10315));
  PIPE Row(spell_code('zhun', -10309));
  PIPE Row(spell_code('zhuo', -10307));
  PIPE Row(spell_code('zi', -10296));
  PIPE Row(spell_code('zong', -10281));
  PIPE Row(spell_code('zou', -10274));
  PIPE Row(spell_code('zu', -10270));
  PIPE Row(spell_code('zuan', -10262));
  PIPE Row(spell_code('zui', -10260));
  PIPE Row(spell_code('zun', -10256));
  PIPE Row(spell_code('zuo', -10254));
  --PIPE Row(spell_code('bu', -30538));
  --PIPE Row(spell_code('jiao', -25358));
  Return;
end;
/

prompt
prompt Creating function F_GETFIRSTORFULLSPELL
prompt =======================================
prompt
create or replace function f_getFirstOrFullSpell(p_cnStr In varchar2,p_sign In number default null) return varchar2

as

lv_spell varchar2(200);
lv_temp Varchar2(10);
lv_char varchar2(10);
li_bytes Integer;

begin
if p_cnStr is null then
return '';
end if;
for i In 1..length(p_cnStr) loop
lv_char:=substr(p_cnStr,i,1);
if lengthb(lv_char) = 1 then
lv_spell:=lv_spell||lv_char;
elsif lengthb(lv_char) = 2 then
Select ascii(lv_char)-256*256 Into li_bytes From dual;
select nvl(max(spell),'###') Into lv_temp from table(f_getSpellcode) where code<=li_bytes;
if p_sign is null then
lv_spell:=lv_spell||substr(lv_temp,1,1);
else
lv_spell:=lv_spell||lv_temp;
end if;
elsif lengthb(lv_char) = 3 then
Select ascii(lv_char)-256*256 Into li_bytes From dual;
select max(spell) Into lv_temp from table(f_getSpellcode) where code<=li_bytes;
if p_sign is null then
lv_spell:=lv_spell||substr(lv_char,1,1);
else
lv_spell:=lv_spell||lv_char;
end if;
end if;
end loop;
return lv_spell;
end;
/

prompt
prompt Creating function MD5
prompt =====================
prompt
CREATE OR REPLACE FUNCTION MD5(

passwd IN VARCHAR2)

RETURN VARCHAR2

IS

retval varchar2(32);

BEGIN

retval := utl_raw.cast_to_raw(DBMS_OBFUSCATION_TOOLKIT.MD5(INPUT_STRING => passwd)) ;

RETURN retval;

END;
/

prompt
prompt Creating procedure P_CARD_GETCODE
prompt =================================
prompt
create or replace procedure P_CARD_GETCODE(v_store_id in t_verify_card_code_common.store_id%type,
                                            v_item_id  in t_verify_card_code_common.item_id%type,
              v_id out t_verify_card_code_common.id%type,
                                            v_card_id out t_verify_card_code_common.card_id%type,
                                            v_card_key out t_verify_card_code_common.card_key%type) is
  v_dtime    t_verify_card_code_common.generate_date%type;
begin
  v_dtime := to_char(sysdate, 'yyyymmddhh24miss');

  select id,card_id, card_key
  into v_id,v_card_id, v_card_key from
  ( select id,card_id, card_key from t_verify_card_code_common
    where status = 100
     and store_id = v_store_id
     and item_id = v_item_id
     and rownum < 100
    order by dbms_random.value )
  where rownum <= 1;

  update t_verify_card_code_common
     set status = 200, generate_date = v_dtime
   where id = v_id and status= 100;
  if sql%rowcount = 0 then
    v_card_id := '0';
    v_card_key := '0';
  end if;
  commit;

exception
  when NO_DATA_FOUND then
    v_card_id := '0';
    v_card_key := '0';
    v_id := 0;
    return;
  when others then
    v_card_id := '0';
    v_card_key := '0';
    v_id := 0;
    rollback;
end P_CARD_GETCODE;
/

prompt
prompt Creating procedure P_STAT_ITEM_SALE_EXT
prompt =======================================
prompt
create or replace procedure P_STAT_ITEM_SALE_EXT AS

STARTTIME varchar2 (12);
ENDTIME varchar2 (12);
V_SQL varchar2 (1000);

BEGIN

select stime into STARTTIME from T_TIMELABLE;
ENDTIME := to_char ((to_date(STARTTIME,'yyyymmddhh24mi') +1/48),'yyyymmddhh24mi') ;

update T_TIMELABLE set stime=ENDTIME;
commit;

--1��T_ITEM_SALE_EXT.CLICK_NUM -- ������ ����ֵ = �µ��� * 10 + �ղ��� * 5
V_SQL := 'merge into T_ITEM_SALE_EXT A
using (
select product_id, sum(cou) cou
  from (select aog.goods_id product_id, sum(count) * 10 cou
          from t_act_order_goods aog
          full join t_act_order ao
            on ao.id = aog.act_order_id
         where pay_time > '''||STARTTIME||'''
           and pay_time < '''||ENDTIME||'''
         group by aog.goods_id
        union all
        select fav.favorite_id product_id, count(*) * 5 cou
          from t_member_favorite fav
         group by fav.favorite_id)
 group by product_id) B
 on (A.SALE_ID=B.PRODUCT_ID)
 when matched then
update set
A.CLICK_NUM=A.CLICK_NUM+B.COU';

execute immediate V_SQL;
commit;

--2��T_ITEM_SALE_EXT.COLLECT_NUM  --�ղ�����
V_SQL := 'merge into T_ITEM_SALE_EXT A
using (
select fav.favorite_id product_id, count(id) cou
  from t_member_favorite fav
 where update_time > '''||STARTTIME||'''
   and update_time < '''||ENDTIME||'''
 group by fav.favorite_id) B
on (A.SALE_ID=B.PRODUCT_ID)
 when matched then
update set
A.COLLECT_NUM=A.COLLECT_NUM+B.COU';

execute immediate V_SQL;
commit;

--3��T_ITEM_SALE_EXT.RANK      --��Ʒ����
V_SQL := 'merge into T_ITEM_SALE_EXT A
using (
select sale_id, sum(rank) RAN
  from t_item_comment
 where type = 1
   and update_time > '''||STARTTIME||'''
   and update_time < '''||ENDTIME||'''
   and status = ''1'' --status 1��ʾ���ͨ��
 group by sale_id) B
 on (A.SALE_ID=B.SALE_ID)
 when matched then
update set
A.RANK=A.RANK+B.RAN';

execute immediate V_SQL;
commit;


--4��T_ITEM_SALE_EXT.SALE_NUM     --��������
V_SQL := 'merge into T_ITEM_SALE_EXT A
using (
select aog.goods_id product_id, sum(count) COU
  from t_act_order_goods aog
  full join t_act_order ao
    on ao.id = aog.act_order_id
 where ao.pay_status = 2 --status 2��ʾ����ɹ�
   and pay_time > '''||STARTTIME||'''
   and pay_time < '''||ENDTIME||'''
 group by aog.goods_id) B
 on (A.SALE_ID=B.product_id)
 when matched then
update set
A.SALE_NUM=A.SALE_NUM+B.COU';

execute immediate V_SQL;
commit;

--5��T_ITEM_SALE_EXT.COMMENT_NUM   --������
V_SQL := 'merge into T_ITEM_SALE_EXT A
using (
select sale_id, count(*) COU
  from t_item_comment
 where type = 1
   and status = ''1'' --status 1��ʾ���ͨ��
   and update_time > '''||STARTTIME||'''
   and update_time < '''||ENDTIME||'''
 group by sale_id) B
 on (A.SALE_ID=B.sale_id)
 when matched then
update set
A.COMMENT_NUM=A.COMMENT_NUM+B.COU';

execute immediate V_SQL;
commit;

--6��T_ITEM_SALE_EXT.USER_NUM     --��������
V_SQL := 'merge into T_ITEM_SALE_EXT A
using (
select aog.goods_id product_id, count(distinct ao.user_id) COU
  from t_act_order_goods aog
  full join t_act_order ao
    on ao.id = aog.act_order_id
 where ao.pay_status = 2 --status 2��ʾ����ɹ�
   and pay_time > '''||STARTTIME||'''
   and pay_time < '''||ENDTIME||'''
 group by aog.goods_id) B
 on (A.SALE_ID=B.product_id)
 when matched then
update set
A.USER_NUM=A.USER_NUM+B.COU';

execute immediate V_SQL;
commit;

    EXCEPTION
      WHEN OTHERS THEN
    null;
END;
/

prompt
prompt Creating procedure P_STORE_GETCODE
prompt ==================================
prompt
create or replace procedure P_STORE_GETCODE(v_store_id in t_verify_store_code_common.store_id%type,
                                            v_item_id  in t_verify_store_code_common.item_id%type,
                                            v_code_rsa out t_verify_store_code_common.code_rsa%type) is
  v_dtime    t_verify_store_code_common.generate_date%type;
  v_code_md5 t_verify_store_code_common.code_md5%type;
begin
  v_dtime := to_char(sysdate, 'yyyymmddhh24miss');

  select code_md5, code_rsa
  into v_code_md5, v_code_rsa from
  ( select code_md5, code_rsa from t_verify_store_code_common
    where status = 100
     and store_id = v_store_id
     and item_id = v_item_id
     and rownum < 100
    order by dbms_random.value )
  where rownum <= 1;

  update t_verify_store_code_common
     set status = 200, generate_date = v_dtime
   where code_md5 = v_code_md5 and status= 100;
  if sql%rowcount = 0 then
    v_code_rsa := '0';
  end if;
  commit;

exception
  when NO_DATA_FOUND then
    v_code_rsa := '0';
    return;
  when others then
    v_code_rsa := '0';
    rollback;
end P_STORE_GETCODE;
/


spool off
