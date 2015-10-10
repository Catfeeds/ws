prompt PL/SQL Developer import file
prompt Created on 2012��12��28�� by jisn
set feedback off
set define off
prompt Disabling triggers for T_SYS_AREA_INFO...
alter table T_SYS_AREA_INFO disable all triggers;
prompt Deleting T_SYS_AREA_INFO...
delete from T_SYS_AREA_INFO;
commit;
prompt Loading T_SYS_AREA_INFO...
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (3, '0511', '��', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (4, '0512', '����', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (5, '0513', '��ͨ', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (6, '0514', '����', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (7, '0515', '�γ�', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (8, '0516', '����', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (9, '0517', '����', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (10, '0518', '���Ƹ�', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (11, '0519', '����', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (12, '0523', '̩��', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (13, '0527', '��Ǩ', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (1, '025', '�Ͼ�', '����', '0', '0');
insert into T_SYS_AREA_INFO (id, area_code, area_name, province_name, day_limit, month_limit)
values (2, '0510', '����', '����', '0', '0');
commit;
prompt 13 records loaded
prompt Enabling triggers for T_SYS_AREA_INFO...
alter table T_SYS_AREA_INFO enable all triggers;
set feedback on
set define on
prompt Done.
