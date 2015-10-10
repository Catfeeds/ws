prompt PL/SQL Developer import file
prompt Created on 2012��12��28�� by jisn
set feedback off
set define off
prompt Disabling triggers for T_APP_CLASSIFICATION...
alter table T_APP_CLASSIFICATION disable all triggers;
prompt Disabling triggers for T_BASE_APP_CONF...
alter table T_BASE_APP_CONF disable all triggers;
prompt Disabling triggers for T_BASE_APP_CONF_TYPE...
alter table T_BASE_APP_CONF_TYPE disable all triggers;
prompt Disabling triggers for T_BASE_APP_INFO...
alter table T_BASE_APP_INFO disable all triggers;
prompt Disabling triggers for T_BASE_APP_REPLY...
alter table T_BASE_APP_REPLY disable all triggers;
prompt Disabling triggers for T_BASE_APP_REPLY_VERSION...
alter table T_BASE_APP_REPLY_VERSION disable all triggers;
prompt Disabling triggers for T_BASE_APP_ROUTER...
alter table T_BASE_APP_ROUTER disable all triggers;
prompt Disabling triggers for T_SYS_MENU...
alter table T_SYS_MENU disable all triggers;
prompt Disabling triggers for T_SYS_SERVICE_INFO...
alter table T_SYS_SERVICE_INFO disable all triggers;
prompt Disabling triggers for T_SYS_USER...
alter table T_SYS_USER disable all triggers;
prompt Deleting T_SYS_USER...
delete from T_SYS_USER;
commit;
prompt Deleting T_SYS_SERVICE_INFO...
delete from T_SYS_SERVICE_INFO;
commit;
prompt Deleting T_SYS_MENU...
delete from T_SYS_MENU;
commit;
prompt Deleting T_BASE_APP_ROUTER...
delete from T_BASE_APP_ROUTER;
commit;
prompt Deleting T_BASE_APP_REPLY_VERSION...
delete from T_BASE_APP_REPLY_VERSION;
commit;
prompt Deleting T_BASE_APP_REPLY...
delete from T_BASE_APP_REPLY;
commit;
prompt Deleting T_BASE_APP_INFO...
delete from T_BASE_APP_INFO;
commit;
prompt Deleting T_BASE_APP_CONF_TYPE...
delete from T_BASE_APP_CONF_TYPE;
commit;
prompt Deleting T_BASE_APP_CONF...
delete from T_BASE_APP_CONF;
commit;
prompt Deleting T_APP_CLASSIFICATION...
delete from T_APP_CLASSIFICATION;
commit;
prompt Loading T_APP_CLASSIFICATION...
insert into T_APP_CLASSIFICATION (id, pid, class_name, class_status, remark, update_user_id, update_time)
values (188893, 0, '����', 0, null, 1, '20121207150514');
insert into T_APP_CLASSIFICATION (id, pid, class_name, class_status, remark, update_user_id, update_time)
values (188896, 0, '��ѯ', 0, null, 1, '20121207150544');
insert into T_APP_CLASSIFICATION (id, pid, class_name, class_status, remark, update_user_id, update_time)
values (205455, 0, '��Ѷ', 0, null, 1, '20121224141841');
insert into T_APP_CLASSIFICATION (id, pid, class_name, class_status, remark, update_user_id, update_time)
values (205457, 0, '����', 0, null, 1, '20121224141909');
insert into T_APP_CLASSIFICATION (id, pid, class_name, class_status, remark, update_user_id, update_time)
values (205459, 0, 'ͼ��', 0, null, 1, '20121224141935');
insert into T_APP_CLASSIFICATION (id, pid, class_name, class_status, remark, update_user_id, update_time)
values (205461, 0, '����', 0, null, 1, '20121224141954');
insert into T_APP_CLASSIFICATION (id, pid, class_name, class_status, remark, update_user_id, update_time)
values (205463, 0, '�罻', 0, null, 1, '20121224142004');
insert into T_APP_CLASSIFICATION (id, pid, class_name, class_status, remark, update_user_id, update_time)
values (205456, 0, '�Ķ�', 0, null, 1, '20121224141856');
insert into T_APP_CLASSIFICATION (id, pid, class_name, class_status, remark, update_user_id, update_time)
values (205458, 0, '��Ϸ', 0, null, 1, '20121224141924');
insert into T_APP_CLASSIFICATION (id, pid, class_name, class_status, remark, update_user_id, update_time)
values (205460, 0, '����', 0, null, 1, '20121224141946');
commit;
prompt 10 records loaded
prompt Loading T_BASE_APP_CONF...
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10096, 151, null, '1001', '�Բ���û������������Ҫ��Ӧ����Ϣ����Ϣ��Ӧ�������Ƽ���[recommend]����ظ���#Ӧ�����ơ�ʹ�ö�ӦӦ�ã���ظ���TJ����ȡ����Ӧ���Ƽ���', '�û�Ӧ�õ�WAP��ַ', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10097, 151, null, '1003', '#${APP.NAME}�ɡ���Ϣ�͡��ṩ�����Ȼظ����š�D����Ѷ�����Ϣ�ͷ���', 'ƽ̨����ȷ�����������', '${APP.NAME}��Ӧ�÷�������');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10098, 151, null, '1005', 'http://112.4.128.220:18009/wap/app/view_all_app.html?type=myapp', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10099, 100, null, '1002', '�ǳ���Ǹ������û�ж�����Ϣ�ͣ����Ȼظ����š�D����Ѷ�����Ϣ�͡������к�����Ӧ�ù���ʹ�á�', 'δ�����û��ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10100, 100, null, '1003', '��Ǹ��û�����������ϴ������ݣ�����Ӧ�������ܻ����Ȥ#[app_name]��[app_desc]���ظ�K��ͨ��Ӧ�á�', 'Ӧ���Ƽ��ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10101, 100, null, '1004', '#[app_name][app_desc]����ǰ��ͨ�û�[app_user]����������δ��ͨ��Ӧ�ã��޷�����ʹ�á���ظ����š�K����ͨӦ�á�', 'δ��ͨӦ�ûظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10102, 100, null, '1005', '��Ǹ�������͵�ָ��������ʱ�޷��������������Ϣ����ظ����š�������ȡ��Ϣ�͵İ������š�', 'ͨ�ô���ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10036, 163, null, '1002', '206534', '�Լ��ռ���ʾ��', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10037, 163, null, '1003', '����Ϣ�͡�ָ�ϣ�' || chr(13) || '' || chr(10) || '1.��Ϣ���Ǽ��罻��Ӧ�á�������Ϸ��ȫ��λ�Ļ�����ͨ�̲�ƽ̨��' || chr(13) || '' || chr(10) || '2.�����ṩ�ṩ��Ϣ��ѯ�����������������罻��Ӧ�����ص�һվʽ�������顣' || chr(13) || '' || chr(10) || '3.������ֱ�ӻظ�@+�����ǳƷ������ĺ��ѿռ䣬��ʱ�����ĺ��ѱ������硣' || chr(13) || '' || chr(10) || '4.��Ҳ����ֱ�ӻظ�#+Ӧ������ֱ��������������������Ӧ�á�' || chr(13) || '' || chr(10) || '5.�ظ���+�ؼ��ֿɽ���������ѯ��', '������ʾ��', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10038, 163, null, '1004', '����Ϣ�͡�ָ�ϣ�' || chr(13) || '' || chr(10) || '1.��Ϣ���Ǽ��罻��Ӧ�á�������Ϸ��ȫ��λ�Ļ�����ͨ�̲�ƽ̨��' || chr(13) || '' || chr(10) || '2.�����ṩ�ṩ��Ϣ��ѯ�����������������罻��Ӧ�����ص�һվʽ�������顣' || chr(13) || '' || chr(10) || '3.������ֱ�ӻظ�@+�����ǳƷ������ĺ��ѿռ䣬��ʱ�����ĺ��ѱ������硣' || chr(13) || '' || chr(10) || '4.��Ҳ����ֱ�ӻظ�#+Ӧ������ֱ��������������������Ӧ�á�' || chr(13) || '' || chr(10) || '5.�ظ���+�ؼ��ֿɽ���������ѯ��', 'İ������ʾ��', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10039, 163, null, '1005', '>>��鿴�������Ϣ����http://112.4.128.220:18009/wap', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10046, 162, null, '1001', '����������յ���������ͨ������ֱ�ӷ�����������ĺ��ѡ����Ѱ��������Ų���������ɡ�', '�������ƻظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10047, 162, null, '1002', '������-����������Ϣ�ͣ�������һ�����档�뽫�˶���ת����10658777804���Ϳ�����ѿ�ͨ��������${INVITE_CODE}��', '�����������ģ��', '${INVITE_CODE}��������');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10048, 162, null, '1003', '�û�@${USER.NICKNAME}����������Ϊ��Ϣ�ͺ��ѣ��ظ�����''J''ͬ�⡣', '�����������ģ��', '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10049, 162, null, '1005', '���������ѷ������Է�ͬ���Ta����Ϊ���ĺ��ѡ�', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10050, 162, null, '1006', '��Ǹ,������ĺ��Ѳ�����Ϣ�͵ķ���������޷���ӡ������Իظ�@������ȥ���Һ���,��ͨ���������ַ�ʽ������Ѽ�����Ϣ��: ' || chr(13) || '' || chr(10) || '1.ֱ�ӻظ������ֻ����룻 ' || chr(13) || '' || chr(10) || '2.�ظ�"YQ"����������,ת���������ֻ���', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10063, 108, null, '1001', '������Ƶ�ʽ��ճɹ������ѹرս��ա�', '�ر������»ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10064, 108, null, '1002', '������Ƶ�ʽ��ճɹ�������ÿ����ա�', 'ÿ����ջظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10065, 108, null, '1003', '������Ƶ�ʽ��ճɹ�������ÿ��һ���ա�', 'ÿ�ܽ��ջظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10066, 108, null, '1004', '������Ƶ�ʽ��ճɹ�������ÿ��һ�Ž��ա�', 'ÿ�½��ջظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10067, 108, null, '1005', '����δ������Ϣ�ͣ���ʱ�޷����á��ظ����š�D����Ѷ�����Ϣ�ͷ���', 'δ�����û��ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10090, 102, null, '1001', '��л���֧�֣�Ŀǰ������Ϣ���л���[friend_count]�����ѣ�����ʹ��[app_count]��Ӧ�ã������Ҫ��TA�Ƕ�ȥ���˶���ϵͳ����������е���Ϣ��¼�����޷��ָ��������ȷ���˶�����ظ�������Ÿ�֪�˶�ԭ��ͬʱ�˶���Ϣ�ͣ�1���������ӣ�2�������ݲ�����Ȥ��3������ԭ��', '��ʾȷ���˶��ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10091, 102, null, '1002', '��Ǹ������û�ж�����Ϣ�ͣ���ظ����š�D����Ѷ�����Ϣ�͡�', 'δ�����û��ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10092, 102, null, '1003', '���ѳɹ��˶���Ϣ�ͣ���л��һ·������֧�֡�', '�˶��ɹ��ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10093, 102, null, '1004', '������ʱ�������»ظ����ȷ���˶���' || chr(13) || '' || chr(10) || '1���������ӣ�' || chr(13) || '' || chr(10) || '2�������ݲ�����Ȥ��' || chr(13) || '' || chr(10) || '3������ԭ��', '��ʱ�ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10094, 102, null, '1005', '�ظ���ѡ���ȷ�������»ظ����ȷ���˶���' || chr(13) || '' || chr(10) || '1���������ӣ�' || chr(13) || '' || chr(10) || '2�������ݲ�����Ȥ��' || chr(13) || '' || chr(10) || '3������ԭ��', '����ѡ��ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10103, 100, null, '1001', '1065888820', 'Ӧ���ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10149, 101, null, '1002', '10658888', '��ӭ�����ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10147, 101, null, '1004', '10658888', '��ӭ�����ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10148, 101, null, '1005', '5', '��ӭ�����·��ӳ�(��)', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10190, 104, null, '1008', ',.;''<>!@#$%^&*()_+~`?/\����������������[]{}:����|������%������-=', '���Ƶ��ַ�', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10040, 101, null, '1001', '��ӭ����Ϊ��Ϣ��${USER.ID}������Ϊ��׼������ǧ�ֲ�ͬ���͵�������Ϣ�ͺ���Ӧ�ã������Ը������İ���������ѡ�����ܴ���֮�ࡣ�Ժ����ǻὫ��ʹ��ָ�ϡ�ͨ�����ŷ��������ظ�@+�����������ѣ�#+Ӧ������Ӧ�ã�����http://112.4.128.220:18009/wap', '���Լ�Ϊ����ʱ����ʾ��', '${USER.ID}���û�ID');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10041, 101, null, '1003', '205598', '��ӭ����ID', '179933');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10042, 101, null, '1007', '�û�@${USER.NICKNAME}ͬ�����Ϊ���ѡ�ֱ�ӻظ����ݼ��ɿ�ʼ��Ta���졣��ܰ��ʾ�����ɽ������˺��뱣��������ͨѶ�����������Ժ�ֱ����Ta���졣', '�����뷢�ͷ��Ķ��Żظ�������', '${USER.NICKNAME}�Ǳ���������ǳ�');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10043, 101, null, '1008', '����@${USER.NICKNAME}�ѳ�Ϊ��Ϣ�ͺ��ѡ�ֱ�ӻظ����ݼ��ɿ�ʼ��Ta���졣��ܰ��ʾ�����ɽ������˺��뱣��������ͨѶ�����������Ժ�ֱ����Ta���졣', '��������շ��Ķ��Żظ�������', '${USER.NICKNAME}������������ǳ�');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10044, 101, null, '1010', '[��Ϣ��Ӧ���Ƽ�]����Ϣ�����кܶ�Ӧ��Ŷ������Ƽ���#${APP.NAME}��${APP.DESC}���ظ�����"K"������ͨ#${APP.NAME}��', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10045, 101, null, '1011', '��Ǹ�����޷�����Լ�Ϊ���ѣ��뽫������ֱ��ͨ�����ŷ��͸����ĺ��ѡ����ĺ��Ѱ��������Ų������ɳ�Ϊ���ĺ��ѡ�', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10076, 105, null, '1003', '���ĺ���@[name]([phone])������������Ϣ��-#[app]���ظ�K��ѿ�ͨ��Ϣ��-#[app]��', '���ѽ���@[name]([phone])������,��ͨ��[app],����Ӧ������http://112.4.128.220:18009/wap', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10077, 105, null, '1004', '�뽫�����յ�����ת�������ѡ�', '��������Ӧ����ʾ��', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10078, 105, null, '1005', '����������Ϣ��-#[app],���˶���ת����[spcode]���ɿ�ͨ��������:[code]', '����������', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10079, 105, null, '1006', '���ĺ���@[name]�ѽ������룬#[app]', '�����ѱ����ܻظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10080, 105, null, '1007', '���ѽ���@[name]([phone])������,��ͨ����Ϣ��-#[app]��', '��������ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10081, 105, null, '1008', '���ĺ���@[name]([phone])�ѿ�ͨ��#[app],�볢�������������ѡ�', '�Ѿ���ͨӦ��ʱ�Ļظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10082, 105, null, '1009', '��Ǹ,������ĺ��Ѳ�����Ϣ�͵ķ���������޷���ͨ��Ӧ�á�', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10083, 105, null, '1010', '���ѽ���@[name]([phone])������,��ͨ����Ϣ��-#[app],����Ӧ������http://112.4.128.220:18009/wap', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10001, 151, null, '1007', '�ܱ�Ǹ��û���ҵ���Ϣ��Ӧ��#${QUERY}����Ҫ�ҵ��Ƿ��ǣ�' || chr(10) || '${APPS}' || chr(10) || '>>���http://192.168.5.96:8009/wap �鿴�㿪ͨ������Ӧ��' || chr(10) || '>>�ظ��������ʹ�ö�ӦӦ�á�' || chr(10) || '�ظ���#Ӧ�����ơ���������Ӧ�á�', '����Ӧ���嵥��ʾ��', '${APPS}���Ƽ�����');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10002, 151, null, '1008', '���Ѿ���ͨ��Ӧ���У�' || chr(10) || '${APPS}' || chr(10) || '>>���http://112.4.128.220:18009/wap���鿴���п�ͨ��Ӧ��' || chr(10) || '>>�ظ��������ʹ�ö�ӦӦ�ã�' || chr(10) || '�ظ���TJ����ȡ����Ӧ���Ƽ���', '�ѿ�ͨӦ���嵥��ʾ��', '${APPS}���Ƽ�����');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10068, 107, null, '1001', '����δ������Ϣ�ͣ��ظ����š�D����Ѷ�����Ϣ�͡�', '�Ƕ����û��ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10069, 107, null, '1003', '205628', '�ؼ��������ظ���Ĳ���ģ����', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10070, 107, null, '1004', '����ܰ��ʾ�� ������������������⣬���Ե�½http://112.4.128.220:18009/wap ����������', '�ؼ��������ظ����׺', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10071, 107, null, '1005', 'δ�ҵ����ڡ�[keyword]���������Ϣ��Ѱ�Һ��ѷ���@+��������������Ӧ�÷���#+Ӧ�����ơ�', '�ؼ��������޽��ʱ�Ļظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10072, 107, null, '1007', '205628', '�û������ظ���Ĳ���ģ����', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10073, 107, null, '1008', '����ܰ��ʾ�� ���������������http://112.4.128.220:18009/wap', '�û������ظ����׺', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10074, 107, null, '1009', 'δ�ҵ��ؼ��֡�[keyword]�����������', '�û������޽��ʱ�Ļظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10075, 107, null, '1010', '����Ϣ�͡�������' || chr(13) || '' || chr(10) || '1.��Ϣ���Ǽ��罻��Ӧ�á�������Ϸ��ȫ��λ�Ļ�����ͨ�̲�ƽ̨��' || chr(13) || '' || chr(10) || '2.�����ṩ�ṩ��Ϣ��ѯ�����������������罻��Ӧ�����ص�һվʽ�������顣' || chr(13) || '' || chr(10) || '3.������ֱ�ӻظ�@+�����ǳƷ������ĺ��ѿռ䣬��ʱ�����ĺ��ѱ������硣' || chr(13) || '' || chr(10) || '4.��Ҳ����ֱ�ӻظ�#+Ӧ������ֱ��������������������Ӧ�á�' || chr(13) || '' || chr(10) || '5.�ظ���+�ؼ��ֿɽ���������ѯ��' || chr(13) || '' || chr(10) || '6.���������Ϣ����ʣ�http://112.4.128.220:18009/wap', '�ڶ�֡������', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10084, 104, null, '1002', '����δ������Ϣ�ͣ��ظ����š�D����Ѷ�����Ϣ�ͷ���', '�Ƽ����ѻظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10085, 104, null, '1003', '@[name]([spcode])���������ĺ��ѣ��ظ�J��Ϊ���ѡ�', '����ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10086, 104, null, '1004', '�ѻָ���������@[name]([spcode])�Ķ��ţ��ظ�P�������Ρ�', '������ջظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10087, 104, null, '1005', '����������@[name]([spcode])�Ķ��ţ��ظ�S�ָ����ա�', '�ܾ����ջظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10088, 104, null, '1006', '���ظ�P���θú���˽�š�', '����ָ����ʾ', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10089, 104, null, '1007', '������˽�ŵĺ��Ѳ����ڣ�Ta�Ƕ��Ƿǳ���Ծ����Ϣ��Ŷ���ظ���ţ������Ta��Ϊ����һ��˽�ġ�[recommend]', '�Ƽ����ѻظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10005, 151, null, '1002', '5', '���ز�ѯ��������������', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10006, 151, null, '1004', '10658888', 'ƽ̨����ȷ������-�ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10023, 101, null, '1009', '1065888899', '�����ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10007, 104, null, '1001', '1065888899', '�ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10008, 105, null, '1001', '1065888805', '���������ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10009, 105, null, '1002', '1065888806', '���������ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10010, 106, null, '1001', '1065888802', '�ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10003, 107, null, '1002', 'http://192.168.5.96:9001/search/keyword?userId=[user_id]&keyword=[keyword]&count=5', '�ؼ������������ַ', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10004, 107, null, '1006', 'http://192.168.5.96:9001/search/user?userId=[user_id]&keyword=[keyword]&searchUserId=[search_id]', '�û����������ַ', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10011, 163, null, '1001', '1065888899', '�û��ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10012, 102, null, '1000', '1065888810', '��ʾȷ���˶����ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10013, 102, null, '1006', 'http://192.168.5.95:8184/api/open/msg/app/@userChange', '����ƽ̨URl', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10014, 102, null, '1007', '180000', '��ʱʱ��', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10015, 103, null, '1001', '10658888', '�ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10016, 103, null, '1008', ',.;''<>!@#$%^&*()_+~`?/\����������������[]{}:����|������%������-=', '���Ƶ��ַ�', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10030, 103, null, '1002', '����δ������Ϣ�ͣ��޷�������������ظ����š�D����Ѷ�����Ϣ�ͷ���', 'δ�����û��ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10031, 103, null, '1003', '�����õ�����Ϊ�գ�����δ�ɹ�����ظ�����*nc+��������*nc��Ϣ�ͣ��������������� ', '�����ݻظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10032, 103, null, '1004', '�����͵����ݰ��������ַ��������»ظ�����*nc+��������*nc��Ϣ�ͣ���������������', '���дʻظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10033, 103, null, '1005', '5', '��ʱ�ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10034, 103, null, '1006', '�����ǳƹ������ظ�����*nc+��������*nc��Ϣ�ͣ���������������', '�ǳƹ����ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10035, 103, null, '1007', '������@[nickname]�����óɹ���', '���óɹ��ظ���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10017, 101, null, '1006', '���Ѿ�������@${INVITE.NAME}�����룬��ͨ����Ϣ�͡���ӭ����Ϊ���ֵ���Ϣ�͡�����Ϊ��׼������ǧ�ֲ�ͬ���͵�������Ϣ�ͺ���Ӧ�ã������Ը������İ���������ѡ���Ժ󽫡�ʹ��ָ�ϡ�ͨ�����ŷ�����������Ӧ������http://112.4.128.220:18009/wap', '��ӭ����-�����Ƽ���ʾ', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10018, 152, null, '1003', 'http://192.168.5.96:19081/app', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10019, 162, null, '1004', '1065888899', '������������ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10020, 161, null, '1002', '10658888', 'ƽ̨����ȷ������-�ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10021, 161, null, '1003', '6', '���ز�ѯ��������������', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10022, 161, null, '1009', '1065888899', '�����ط���', null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10025, 152, null, '1001', '��#${APP.NAME}��${APP.DESC}��Ŀǰ�û�����${APP.USER_COUNT}���ظ����š�K����ͨ��', 'Ӧ�ö��Ƴɹ���ʾ��', '${APP.NAME}��Ӧ�÷�������${APP.DESC}��Ӧ�÷���������${APP.USER_COUNT}��Ŀǰ�û���');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10026, 152, null, '1002', '��#${APP.NAME}��${APP.HELP}�ظ����š�G�����رա�', 'Ӧ���˶�ȷ�϶�������', '${APP.NAME}��Ӧ�÷�������${APP.ORDER_DATE}Ӧ�ÿ�ͨʱ��');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10027, 152, null, '1004', '#${APP.NAME}�رճɹ���', 'Ӧ���˶�����ʾ��', '${APP.NAME}��Ӧ�÷�������');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10028, 152, null, '1005', '�ǳ���Ǹ��#${APP.NAME}��ʱ���ڷ�����״̬���޷���ͨ�������Գ�����������Ӧ�á��ظ�����#+Ӧ�����ơ�', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10029, 152, null, '1006', '��#${APP.NAME}����ͨ�ɹ� ${APP.HELP} �ظ�G�ر�#${APP.NAME} ��', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10024, 106, null, '1002', '206775', '����ģ��', 'Ӧ�ò���ģ��ID');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (10095, 151, null, '1006', '����Ϣ�͡�����Ӧ���Ƽ���' || chr(10) || '${APPS}' || chr(10) || '>>�ظ����ֱ�ӷ���Ӧ�ã�' || chr(10) || '>>��ظ�����#+Ӧ����������Ӧ�ã�' || chr(10) || '����Ӧ������http://112.4.128.220:18009/wap', '�Ƽ�Ӧ����ʾ��', '${APPS}���Ƽ�����');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209107, 161, null, '1004', '��Ǹ,û�С�@${QUERY}������û�,�����Իظ�@������ȥ���Һ���,��ͨ���������ַ�ʽ������Ѽ�����Ϣ��: 1.ֱ�ӻظ������ֻ����룻 2.�ظ�''YQ''����������,ת���������ֻ���3.��¼��http://112.4.128.220:18009/wap �������ѡ�', '�޲�ѯ�����ʾ��', '${QUERY}���û�����');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209108, 161, null, '1005', '�����ԶԺ���@${USER.NICKNAME}�������²������ظ�����1ֱ����Ta���죬�ظ�Cɾ��Ta���ظ�KJ�鿴Ta�Ŀռ䡣�ظ�M������������ͬ���û���', '���Ѳ����˵�', '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209109, 161, null, '1006', '@${USER.NICKNAME}���������ĺ��ѡ���ظ���Ϣ��J������@${USER.NICKNAME}��Ϊ���ĺ��ѡ��ظ���KJ���鿴Ta�Ŀռ䡣', 'İ���˲����˵�', '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209110, 161, null, '1001', '��Ǹ������δ������Ϣ�ͣ��޷�Ѱ�����ĺ��ѣ���ظ���D����Ѷ�����Ϣ�Ͱ�', 'İ����ѡ��˵�(�н����', '1');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209111, 161, null, '1007', '���ѳɹ�ɾ������@${USER.NICKNAME}������������ӣ������»ظ�����@${USER.NICKNAME}����Ta��Ϊ���ĺ��ѡ�', 'ɾ�����ѻظ���', '${USER.NICKNAME}�Ǻ����ǳ�');
commit;
prompt 100 records committed...
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209112, 161, null, '1010', '�������Ϊ����������������ظ�''KJ''�鿴�Լ��ĸ��˿ռ䣬����http://192.168.5.96:8009/wap ���и������á�', '���������˵�', '1');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209113, 161, null, '1011', '�����ڿ�����@${USER.NICKNAME}��������ֱ�ӻظ�������Ta���졣', '������ʾ����', '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209114, 161, null, '1012', 'http://112.4.128.220:18009/wap', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209115, 161, null, '1013', '��ظ��������ѡ��������ӵĺ��ѣ�${LIST}����������¼http://112.4.128.220:18009/wap�� �ظ�M�������������û���', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209116, 161, null, '1014', '��Ŀǰû������κκ��ѣ��ظ�������ſ����Ta��Ϊ���ѣ�${LIST}���ָ���������¼http://112.4.128.220:18009/wap', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209117, 161, null, '1015', '��ظ��������ѡ��������ӵĺ��ѣ�${LIST}����������¼http://112.4.128.220:18009/wap �ظ�M����İ�����û���', null, null);
insert into T_BASE_APP_CONF (id, base_app_id, version_id, param_code, param_value, remark, param_value_remark)
values (209118, 161, null, '1016', '�����Իظ�����������Ta�ǳ�Ϊ���ѣ�${LIST}�������¼http://112.4.128.220:18009/wap', null, null);
commit;
prompt 107 records loaded
prompt Loading T_BASE_APP_CONF_TYPE...
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (122, 100, '1001', 'Ӧ���ط���', 0, 1, 'Ӧ���ط���');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (13, 100, '1002', 'δ�����û��ظ���', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (14, 100, '1003', 'Ӧ���Ƽ��ظ���', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (15, 100, '1004', 'δ��ͨӦ�ûظ���', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (16, 100, '1005', 'ͨ�ô���ظ���', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (1, 101, '1001', '��ӭ��������', 1, 0, '${USER.ID}���û�ID');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (2, 101, '1002', '��ӭ�����ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (3, 101, '1003', '��ӭ����ID', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (4, 101, '1004', '��ӭ�����ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (5, 101, '1005', '��ӭ�����·��ӳ�(��)', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (6, 101, '1006', '��ӭ����-�����Ƽ���ʾ', 1, 1, '${INVITE.NAME}������������');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (7, 101, '1007', '�����뷢�ͷ��Ķ��Żظ�������', 1, 0, '${USER.NICKNAME}�Ǳ���������ǳ�');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (8, 101, '1008', '��������շ��Ķ��Żظ�������', 1, 0, '${USER.NICKNAME}������������ǳ�');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (9, 101, '1009', '�����ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (10, 102, '1000', '��ʾȷ���˶����ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (11, 102, '1001', '��ʾȷ���˶��ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (12, 102, '1002', 'δ�����û��ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (13, 102, '1003', '�˶��ɹ��ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (14, 102, '1004', '��ʱ�ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (15, 102, '1005', '����ѡ��ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (16, 102, '1006', '����ƽ̨URl', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (17, 102, '1007', '��ʱʱ��', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (18, 103, '1001', '�ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (19, 103, '1002', 'δ�����û��ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (20, 103, '1003', '�����ݻظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (21, 103, '1004', '���дʻظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (22, 103, '1005', '��ʱ�ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (23, 103, '1006', '�ǳƹ����ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (24, 103, '1007', '���óɹ��ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (25, 103, '1008', '���Ƶ��ַ�', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (26, 104, '1001', '�ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (27, 104, '1002', 'δ�����û��ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (28, 104, '1003', '����ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (29, 104, '1004', '������ջظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (30, 104, '1005', '�ܾ����ջظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (31, 104, '1006', '����ָ����ʾ', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (32, 105, '1001', '���������ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (33, 105, '1002', '���������ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (34, 105, '1003', '��������Ӧ����ʾ��', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (35, 105, '1004', '��������Ӧ����ʾ��', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (36, 105, '1005', '����������', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (37, 105, '1006', '�����ѱ����ܻظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (38, 105, '1007', '��������ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (39, 105, '1008', '�Ѿ���ͨӦ��ʱ�Ļظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (40, 106, '1001', '�ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (41, 106, '1002', '����ģ��', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (42, 108, '1001', '�ر������»ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (43, 108, '1002', 'ÿ����ջظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (44, 108, '1003', 'ÿ�ܽ��ջظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (45, 108, '1004', 'ÿ�½��ջظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (46, 108, '1005', 'δ�����û��ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (47, 151, '1001', '��ѯ�������=0����ʾ��', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (48, 151, '1002', '���ز�ѯ��������������', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (49, 151, '1003', 'ƽ̨����ȷ�����������', 1, 0, '${APP.NAME}��Ӧ�÷�������');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (50, 151, '1004', 'ƽ̨����ȷ������-�ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (51, 152, '1001', 'Ӧ�ö���ȷ�϶�������', 1, 0, '${APP.NAME}��Ӧ�÷�������${APP.DESC}��Ӧ�÷���������${APP.USER_COUNT}��Ŀǰ�û���');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (52, 152, '1002', 'Ӧ���˶�ȷ�϶�������', 1, 0, '${APP.NAME}��Ӧ�÷�������${APP.ORDER_DATE}Ӧ�ÿ�ͨʱ��');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (53, 152, '1003', '����ƽ̨���ƹ�ϵͬ���ӿڵ�ַ', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (54, 152, '1004', 'Ӧ���˶�����ʾ��', 1, 0, '${APP.NAME}��Ӧ�÷�������');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (55, 161, '1001', 'ƽ̨����ȷ�����������', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (56, 161, '1002', 'ƽ̨����ȷ������-�ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (57, 161, '1003', '���ز�ѯ��������������', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (58, 161, '1004', '�޲�ѯ�����ʾ��', 1, 0, '${QUERY}���û�����');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (59, 161, '1005', '���Ѳ����˵�', 1, 0, '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (60, 161, '1006', 'İ���˲����˵�', 1, 0, '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (61, 161, '1007', 'ɾ�����ѻظ���', 1, 0, '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (62, 161, '1009', '�����ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (63, 161, '1010', '���������˵�', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (64, 161, '1011', '������ʾ����', 1, 0, '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (65, 162, '1001', '�������������ʾ', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (66, 162, '1002', '�����������ģ��', 1, 0, '${INVITE_CODE}��������');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (67, 162, '1003', '�����������ģ��', 1, 0, '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (68, 162, '1004', '������������ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (69, 163, '1001', '�û��ط���', 0, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (70, 163, '1002', '�û��ռ����ģ��ID', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (71, 163, '1003', '������ʾ��', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (72, 163, '1004', 'İ������ʾ��', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (73, 107, '1001', '�Ƕ����û��ظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (74, 107, '1002', '�ؼ������������ַ', 1, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (75, 107, '1003', '�ؼ��������ظ���Ĳ���ģ����', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (76, 107, '1004', '�ؼ��������ظ����׺', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (77, 107, '1005', '�ؼ��������޽��ʱ�Ļظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (78, 107, '1006', '�û����������ַ', 1, 1, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (79, 107, '1007', '�û������ظ���Ĳ���ģ����', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (80, 107, '1008', '�û������ظ����׺', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (81, 107, '1009', '�û������޽��ʱ�Ļظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (82, 107, '1010', '�ڶ�֡������', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (73, 163, '1005', '�Լ��ռ���ʾ��', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (10, 101, '1010', '��Ϣ��Ӧ���Ƽ���ʾ', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (11, 101, '1011', '���Լ�Ϊ����ʱ����ʾ��', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (32, 104, '1007', '�Ƽ����ѻظ���', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (40, 105, '1009', '��Ǹ,������ĺ��Ѳ�����Ϣ�͵ķ���������޷���ͨ��Ӧ�á�', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (41, 105, '1010', '���ѽ���@[name]([phone])������,��ͨ��[app],����Ӧ������http://112.4.128.220:18009/wap', 0, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (51, 151, '1005', '�û�Ӧ�õ�WAP��ַ', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (55, 152, '1005', 'Ӧ�ö���ʧ����ʾ��', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (56, 152, '1006', 'Ӧ�ö��Ƴɹ���ʾ��', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (65, 161, '1012', 'WAP��վ��ַ', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (66, 161, '1013', '����ѡ��˵�(�к��ѣ�', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (67, 161, '1014', '����ѡ��˵�(�޺��ѣ�', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (68, 161, '1015', '����ѡ��˵�(��ѯʱ��', 1, 0, null);
commit;
prompt 100 records committed...
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (69, 161, '1016', 'İ����ѡ��˵�(�н����', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (69, 162, '1005', '�������������ʾ', 1, 0, null);
insert into T_BASE_APP_CONF_TYPE (id, base_app_id, param_code, param_desc, param_format, param_type, remark)
values (70, 162, '1006', '�������ƻظ���', 1, 0, null);
commit;
prompt 103 records loaded
prompt Loading T_BASE_APP_INFO...
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (107, '?����', 1, '20121016121509');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (101, '�û�ע��', 1, '20121016121509');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (104, '�û�����', 1, '20121016132510');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (105, '������Ѽ�Ӧ��', 1, '20121016132714');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (151, '#Ӧ������', 1, '20121016133838');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (152, 'Ӧ�ö���/�˶�', 1, '20121016134424');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (103, '�޸��ǳ�', 1, '20121016132148');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (106, 'Ӧ�ð���', 1, '20121016133028');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (108, '����������', 1, '20121016133235');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (161, '@��������', 1, '20121016134752');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (162, '�������/ɾ��', 1, '20121016134913');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (163, '���ѿռ�KJ', 1, '20121016135029');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (100, 'ͨ�ô�����', 1, '20121016121509');
insert into T_BASE_APP_INFO (id, base_app_name, update_user_id, update_time)
values (102, '�û��˶�', 1, '20121016131845');
commit;
prompt 14 records loaded
prompt Loading T_BASE_APP_REPLY...
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208276, 151, 178993, '1001', '�Բ���û������������Ҫ��Ӧ����Ϣ����Ϣ��Ӧ�������Ƽ���[recommend]����ظ���#Ӧ�����ơ�ʹ�ö�ӦӦ�ã���ظ���TJ����ȡ����Ӧ���Ƽ���', '�û�Ӧ�õ�WAP��ַ', 1, '20121227085558', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208277, 151, 178993, '1003', '#${APP.NAME}�ɡ���Ϣ�͡��ṩ�����Ȼظ����š�D����Ѷ�����Ϣ�ͷ���', 'ƽ̨����ȷ�����������', 1, '20121227085558', '${APP.NAME}��Ӧ�÷�������');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208278, 151, 178993, '1005', 'http://112.4.128.220:18009/wap/app/view_all_app.html?type=myapp', null, 1, '20121227085558', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207530, 163, 179052, '1002', '206534', '�Լ��ռ���ʾ��', 1, '20121226141611', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207531, 163, 179052, '1003', '����Ϣ�͡�ָ�ϣ�' || chr(13) || '' || chr(10) || '1.��Ϣ���Ǽ��罻��Ӧ�á�������Ϸ��ȫ��λ�Ļ�����ͨ�̲�ƽ̨��' || chr(13) || '' || chr(10) || '2.�����ṩ�ṩ��Ϣ��ѯ�����������������罻��Ӧ�����ص�һվʽ�������顣' || chr(13) || '' || chr(10) || '3.������ֱ�ӻظ�@+�����ǳƷ������ĺ��ѿռ䣬��ʱ�����ĺ��ѱ������硣' || chr(13) || '' || chr(10) || '4.��Ҳ����ֱ�ӻظ�#+Ӧ������ֱ��������������������Ӧ�á�' || chr(13) || '' || chr(10) || '5.�ظ���+�ؼ��ֿɽ���������ѯ��', '������ʾ��', 1, '20121226141611', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207532, 163, 179052, '1004', '����Ϣ�͡�ָ�ϣ�' || chr(13) || '' || chr(10) || '1.��Ϣ���Ǽ��罻��Ӧ�á�������Ϸ��ȫ��λ�Ļ�����ͨ�̲�ƽ̨��' || chr(13) || '' || chr(10) || '2.�����ṩ�ṩ��Ϣ��ѯ�����������������罻��Ӧ�����ص�һվʽ�������顣' || chr(13) || '' || chr(10) || '3.������ֱ�ӻظ�@+�����ǳƷ������ĺ��ѿռ䣬��ʱ�����ĺ��ѱ������硣' || chr(13) || '' || chr(10) || '4.��Ҳ����ֱ�ӻظ�#+Ӧ������ֱ��������������������Ӧ�á�' || chr(13) || '' || chr(10) || '5.�ظ���+�ؼ��ֿɽ���������ѯ��', 'İ������ʾ��', 1, '20121226141611', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207533, 163, 179052, '1005', '>>��鿴�������Ϣ����http://112.4.128.220:18009/wap', null, 1, '20121226141611', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208301, 100, 208300, '1002', '�ǳ���Ǹ������û�ж�����Ϣ�ͣ����Ȼظ����š�D����Ѷ�����Ϣ�͡������к�����Ӧ�ù���ʹ�á�', 'δ�����û��ظ���', 1, '20121227093951', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208302, 100, 208300, '1003', '��Ǹ��û�����������ϴ������ݣ�����Ӧ�������ܻ����Ȥ#[app_name]��[app_desc]���ظ�K��ͨ��Ӧ�á�', 'Ӧ���Ƽ��ظ���', 1, '20121227093951', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208303, 100, 208300, '1004', '#[app_name][app_desc]����ǰ��ͨ�û�[app_user]����������δ��ͨ��Ӧ�ã��޷�����ʹ�á���ظ����š�K����ͨӦ�á�', 'δ��ͨӦ�ûظ���', 1, '20121227093951', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208304, 100, 208300, '1005', '��Ǹ�������͵�ָ��������ʱ�޷��������������Ϣ����ظ����š�������ȡ��Ϣ�͵İ������š�', 'ͨ�ô���ظ���', 1, '20121227093951', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207939, 162, 179041, '1001', '����������յ���������ͨ������ֱ�ӷ�����������ĺ��ѡ����Ѱ��������Ų���������ɡ�', '�������ƻظ���', 1, '20121226174225', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207940, 162, 179041, '1002', '������-����������Ϣ�ͣ�������һ�����档�뽫�˶���ת����10658777804���Ϳ�����ѿ�ͨ��������${INVITE_CODE}��', '�����������ģ��', 1, '20121226174225', '${INVITE_CODE}��������');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207941, 162, 179041, '1003', '�û�@${USER.NICKNAME}����������Ϊ��Ϣ�ͺ��ѣ��ظ�����''J''ͬ�⡣', '�����������ģ��', 1, '20121226174225', '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207942, 162, 179041, '1005', '���������ѷ������Է�ͬ���Ta����Ϊ���ĺ��ѡ�', null, 1, '20121226174225', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207943, 162, 179041, '1006', '��Ǹ,������ĺ��Ѳ�����Ϣ�͵ķ���������޷���ӡ������Իظ�@������ȥ���Һ���,��ͨ���������ַ�ʽ������Ѽ�����Ϣ��: ' || chr(13) || '' || chr(10) || '1.ֱ�ӻظ������ֻ����룻 ' || chr(13) || '' || chr(10) || '2.�ظ�"YQ"����������,ת���������ֻ���', null, 1, '20121226174225', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207985, 108, 178980, '1001', '������Ƶ�ʽ��ճɹ������ѹرս��ա�', '�ر������»ظ���', 1, '20121226174553', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207986, 108, 178980, '1002', '������Ƶ�ʽ��ճɹ�������ÿ����ա�', 'ÿ����ջظ���', 1, '20121226174553', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207987, 108, 178980, '1003', '������Ƶ�ʽ��ճɹ�������ÿ��һ���ա�', 'ÿ�ܽ��ջظ���', 1, '20121226174553', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207988, 108, 178980, '1004', '������Ƶ�ʽ��ճɹ�������ÿ��һ�Ž��ա�', 'ÿ�½��ջظ���', 1, '20121226174553', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207989, 108, 178980, '1005', '����δ������Ϣ�ͣ���ʱ�޷����á��ظ����š�D����Ѷ�����Ϣ�ͷ���', 'δ�����û��ظ���', 1, '20121226174553', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208069, 102, 178900, '1001', '��л���֧�֣�Ŀǰ������Ϣ���л���[friend_count]�����ѣ�����ʹ��[app_count]��Ӧ�ã������Ҫ��TA�Ƕ�ȥ���˶���ϵͳ����������е���Ϣ��¼�����޷��ָ��������ȷ���˶�����ظ�������Ÿ�֪�˶�ԭ��ͬʱ�˶���Ϣ�ͣ�1���������ӣ�2�������ݲ�����Ȥ��3������ԭ��', '��ʾȷ���˶��ظ���', 1, '20121226175127', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208070, 102, 178900, '1002', '��Ǹ������û�ж�����Ϣ�ͣ���ظ����š�D����Ѷ�����Ϣ�͡�', 'δ�����û��ظ���', 1, '20121226175127', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208071, 102, 178900, '1003', '���ѳɹ��˶���Ϣ�ͣ���л��һ·������֧�֡�', '�˶��ɹ��ظ���', 1, '20121226175127', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208072, 102, 178900, '1004', '������ʱ�������»ظ����ȷ���˶���' || chr(13) || '' || chr(10) || '1���������ӣ�' || chr(13) || '' || chr(10) || '2�������ݲ�����Ȥ��' || chr(13) || '' || chr(10) || '3������ԭ��', '��ʱ�ظ���', 1, '20121226175127', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208073, 102, 178900, '1005', '�ظ���ѡ���ȷ�������»ظ����ȷ���˶���' || chr(13) || '' || chr(10) || '1���������ӣ�' || chr(13) || '' || chr(10) || '2�������ݲ�����Ȥ��' || chr(13) || '' || chr(10) || '3������ԭ��', '����ѡ��ظ���', 1, '20121226175127', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (1, 151, 178993, '1006', '����Ϣ�͡�����Ӧ���Ƽ��� ${APPS} >>�ظ����ֱ�ӷ���Ӧ�ã� >>��ظ�����#+Ӧ����������Ӧ�ã�����Ӧ������http://112.4.128.220:18009/wap', '�Ƽ�Ӧ����ʾ��', 1, '20121227085558', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (2, 151, 178993, '1007', '�ܱ�Ǹ��û���ҵ���Ϣ��Ӧ��#${QUERY}����Ҫ�ҵ��Ƿ��ǣ� ${APPS} >>���http://192.168.5.96:8009/wap �鿴�㿪ͨ������Ӧ�� >>�ظ��������ʹ�ö�ӦӦ�á��ظ���#Ӧ�����ơ���������Ӧ�á�', '����Ӧ���嵥��ʾ��', 1, '20121227085558', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (3, 151, 178993, '1008', '���Ѿ���ͨ��Ӧ���У� ${APPS} >>���http://112.4.128.220:18009/wap���鿴���п�ͨ��Ӧ�� >>�ظ��������ʹ�ö�ӦӦ�ã��ظ���TJ����ȡ����Ӧ���Ƽ���', '�ѿ�ͨӦ���嵥��ʾ��', 1, '20121227085558', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207914, 101, 189616, '1006', '���Ѿ�������@${INVITE.NAME}�����룬��ͨ����Ϣ�͡���ӭ����Ϊ���ֵ���Ϣ�͡�����Ϊ��׼������ǧ�ֲ�ͬ���͵�������Ϣ�ͺ���Ӧ�ã������Ը������İ���������ѡ���Ժ󽫡�ʹ��ָ�ϡ�ͨ�����ŷ�����������Ӧ������http://112.4.128.220:18009/wap', '��ӭ����-�����Ƽ���ʾ', null, null, null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207908, 101, 189616, '1001', '��ӭ����Ϊ��Ϣ��${USER.ID}������Ϊ��׼������ǧ�ֲ�ͬ���͵�������Ϣ�ͺ���Ӧ�ã������Ը������İ���������ѡ�����ܴ���֮�ࡣ�Ժ����ǻὫ��ʹ��ָ�ϡ�ͨ�����ŷ��������ظ�@+�����������ѣ�#+Ӧ������Ӧ�ã�����http://112.4.128.220:18009/wap', '���Լ�Ϊ����ʱ����ʾ��', 1, '20121226173859', '${USER.ID}���û�ID');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207909, 101, 189616, '1003', '205598', '��ӭ����ID', 1, '20121226173859', '179933');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207910, 101, 189616, '1007', '�û�@${USER.NICKNAME}ͬ�����Ϊ���ѡ�ֱ�ӻظ����ݼ��ɿ�ʼ��Ta���졣��ܰ��ʾ�����ɽ������˺��뱣��������ͨѶ�����������Ժ�ֱ����Ta���졣', '�����뷢�ͷ��Ķ��Żظ�������', 1, '20121226173859', '${USER.NICKNAME}�Ǳ���������ǳ�');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207911, 101, 189616, '1008', '����@${USER.NICKNAME}�ѳ�Ϊ��Ϣ�ͺ��ѡ�ֱ�ӻظ����ݼ��ɿ�ʼ��Ta���졣��ܰ��ʾ�����ɽ������˺��뱣��������ͨѶ�����������Ժ�ֱ����Ta���졣', '��������շ��Ķ��Żظ�������', 1, '20121226173859', '${USER.NICKNAME}������������ǳ�');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207912, 101, 189616, '1010', '[��Ϣ��Ӧ���Ƽ�]����Ϣ�����кܶ�Ӧ��Ŷ������Ƽ���#${APP.NAME}��${APP.DESC}���ظ�����"K"������ͨ#${APP.NAME}��', '��Ϣ��Ӧ���Ƽ���ʾ', 1, '20121226173859', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207913, 101, 189616, '1011', '��Ǹ�����޷�����Լ�Ϊ���ѣ��뽫������ֱ��ͨ�����ŷ��͸����ĺ��ѡ����ĺ��Ѱ��������Ų������ɳ�Ϊ���ĺ��ѡ�', '���Լ�Ϊ����ʱ����ʾ��', 1, '20121226173859', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208024, 105, 178955, '1003', '���ĺ���@[name]([phone])������������Ϣ��-#[app]���ظ�K��ѿ�ͨ��Ϣ��-#[app]��', '���ѽ���@[name]([phone])������,��ͨ��[app],����Ӧ������http://112.4.128.220:18009/wap', 1, '20121226174840', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208025, 105, 178955, '1004', '�뽫�����յ�����ת�������ѡ�', '��������Ӧ����ʾ��', 1, '20121226174840', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208026, 105, 178955, '1005', '����������Ϣ��-#[app],���˶���ת����[spcode]���ɿ�ͨ��������:[code]', '����������', 1, '20121226174840', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208027, 105, 178955, '1006', '���ĺ���@[name]�ѽ������룬#[app]', '�����ѱ����ܻظ���', 1, '20121226174840', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208028, 105, 178955, '1007', '���ѽ���@[name]([phone])������,��ͨ����Ϣ��-#[app]��', '��������ظ���', 1, '20121226174840', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208029, 105, 178955, '1008', '���ĺ���@[name]([phone])�ѿ�ͨ��#[app],�볢�������������ѡ�', '�Ѿ���ͨӦ��ʱ�Ļظ���', 1, '20121226174840', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208030, 105, 178955, '1009', '��Ǹ,������ĺ��Ѳ�����Ϣ�͵ķ���������޷���ͨ��Ӧ�á�', '�������û����ڷ���������ʾ��', 1, '20121226174840', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208031, 105, 178955, '1010', '���ѽ���@[name]([phone])������,��ͨ����Ϣ��-#[app],����Ӧ������http://112.4.128.220:18009/wap', '�Ѷ����û���������ظ���', 1, '20121226174840', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208003, 107, 204567, '1001', '����δ������Ϣ�ͣ��ظ����š�D����Ѷ�����Ϣ�͡�', '�Ƕ����û��ظ���', 1, '20121226174650', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208004, 107, 204567, '1003', '205628', '�ؼ��������ظ���Ĳ���ģ����', 1, '20121226174650', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208005, 107, 204567, '1004', '����ܰ��ʾ�� ������������������⣬���Ե�½http://112.4.128.220:18009/wap ����������', '�ؼ��������ظ����׺', 1, '20121226174650', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208006, 107, 204567, '1005', 'δ�ҵ����ڡ�[keyword]���������Ϣ��Ѱ�Һ��ѷ���@+��������������Ӧ�÷���#+Ӧ�����ơ�', '�ؼ��������޽��ʱ�Ļظ���', 1, '20121226174650', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208007, 107, 204567, '1007', '205628', '�û������ظ���Ĳ���ģ����', 1, '20121226174650', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208008, 107, 204567, '1008', '����ܰ��ʾ�� ���������������http://112.4.128.220:18009/wap', '�û������ظ����׺', 1, '20121226174650', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208009, 107, 204567, '1009', 'δ�ҵ��ؼ��֡�[keyword]�����������', '�û������޽��ʱ�Ļظ���', 1, '20121226174650', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208010, 107, 204567, '1010', '����Ϣ�͡�������' || chr(13) || '' || chr(10) || '1.��Ϣ���Ǽ��罻��Ӧ�á�������Ϸ��ȫ��λ�Ļ�����ͨ�̲�ƽ̨��' || chr(13) || '' || chr(10) || '2.�����ṩ�ṩ��Ϣ��ѯ�����������������罻��Ӧ�����ص�һվʽ�������顣' || chr(13) || '' || chr(10) || '3.������ֱ�ӻظ�@+�����ǳƷ������ĺ��ѿռ䣬��ʱ�����ĺ��ѱ������硣' || chr(13) || '' || chr(10) || '4.��Ҳ����ֱ�ӻظ�#+Ӧ������ֱ��������������������Ӧ�á�' || chr(13) || '' || chr(10) || '5.�ظ���+�ؼ��ֿɽ���������ѯ��' || chr(13) || '' || chr(10) || '6.���������Ϣ����ʣ�http://112.4.128.220:18009/wap', '�ڶ�֡������', 1, '20121226174650', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208047, 104, 178936, '1002', '����δ������Ϣ�ͣ��ظ����š�D����Ѷ�����Ϣ�ͷ���', '�Ƽ����ѻظ���', 1, '20121226174958', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208048, 104, 178936, '1003', '@[name]([spcode])���������ĺ��ѣ��ظ�J��Ϊ���ѡ�', '����ظ���', 1, '20121226174958', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208049, 104, 178936, '1004', '�ѻָ���������@[name]([spcode])�Ķ��ţ��ظ�P�������Ρ�', '������ջظ���', 1, '20121226174958', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208050, 104, 178936, '1005', '����������@[name]([spcode])�Ķ��ţ��ظ�S�ָ����ա�', '�ܾ����ջظ���', 1, '20121226174958', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208051, 104, 178936, '1006', '���ظ�P���θú���˽�š�', '����ָ����ʾ', 1, '20121226174958', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (208052, 104, 178936, '1007', '������˽�ŵĺ��Ѳ����ڣ�Ta�Ƕ��Ƿǳ���Ծ����Ϣ��Ŷ���ظ���ţ������Ta��Ϊ����һ��˽�ġ�[recommend]', '���óɹ��ظ���', 1, '20121226174958', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207142, 103, 178917, '1002', '����δ������Ϣ�ͣ��޷�������������ظ����š�D����Ѷ�����Ϣ�ͷ���', 'δ�����û��ظ���', 1, '20121226105736', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207143, 103, 178917, '1003', '�����õ�����Ϊ�գ�����δ�ɹ�����ظ�����*nc+��������*nc��Ϣ�ͣ��������������� ', '�����ݻظ���', 1, '20121226105736', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207144, 103, 178917, '1004', '�����͵����ݰ��������ַ��������»ظ�����*nc+��������*nc��Ϣ�ͣ���������������', '���дʻظ���', 1, '20121226105736', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207145, 103, 178917, '1005', '5', '��ʱ�ظ���', 1, '20121226105736', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207146, 103, 178917, '1006', '�����ǳƹ������ظ�����*nc+��������*nc��Ϣ�ͣ���������������', '�ǳƹ����ظ���', 1, '20121226105736', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (207147, 103, 178917, '1007', '������@[nickname]�����óɹ���', '���óɹ��ظ���', 1, '20121226105736', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (206902, 152, 179004, '1001', '��#${APP.NAME}��${APP.DESC}��Ŀǰ�û�����${APP.USER_COUNT}���ظ����š�K����ͨ��', 'Ӧ�ö��Ƴɹ���ʾ��', 1, '20121225202526', '${APP.NAME}��Ӧ�÷�������${APP.DESC}��Ӧ�÷���������${APP.USER_COUNT}��Ŀǰ�û���');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (206903, 152, 179004, '1002', '��#${APP.NAME}��${APP.HELP}�ظ����š�G�����رա�', 'Ӧ���˶�ȷ�϶�������', 1, '20121225202526', '${APP.NAME}��Ӧ�÷�������${APP.ORDER_DATE}Ӧ�ÿ�ͨʱ��');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (206904, 152, 179004, '1004', '#${APP.NAME}�رճɹ���', 'Ӧ���˶�����ʾ��', 1, '20121225202526', '${APP.NAME}��Ӧ�÷�������');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (206905, 152, 179004, '1005', '�ǳ���Ǹ��#${APP.NAME}��ʱ���ڷ�����״̬���޷���ͨ�������Գ�����������Ӧ�á��ظ�����#+Ӧ�����ơ�', null, 1, '20121225202526', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (206906, 152, 179004, '1006', '��#${APP.NAME}����ͨ�ɹ� ${APP.HELP} �ظ�G�ر�#${APP.NAME} ��', null, 1, '20121225202526', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (206779, 106, 178967, '1002', '206775', '����ģ��', 1, '20121225181954', 'Ӧ�ò���ģ��ID');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209119, 161, 179024, '1004', '��Ǹ,û�С�@${QUERY}������û�,�����Իظ�@������ȥ���Һ���,��ͨ���������ַ�ʽ������Ѽ�����Ϣ��: 1.ֱ�ӻظ������ֻ����룻 2.�ظ�''YQ''����������,ת���������ֻ���3.��¼��http://112.4.128.220:18009/wap �������ѡ�', '�޲�ѯ�����ʾ��', 1, '20121228103029', '${QUERY}���û�����');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209120, 161, 179024, '1005', '�����ԶԺ���@${USER.NICKNAME}�������²������ظ�����1ֱ����Ta���죬�ظ�Cɾ��Ta���ظ�KJ�鿴Ta�Ŀռ䡣�ظ�M������������ͬ���û���', '���Ѳ����˵�', 1, '20121228103029', '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209121, 161, 179024, '1006', '@${USER.NICKNAME}���������ĺ��ѡ���ظ���Ϣ��J������@${USER.NICKNAME}��Ϊ���ĺ��ѡ��ظ���KJ���鿴Ta�Ŀռ䡣', 'İ���˲����˵�', 1, '20121228103029', '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209122, 161, 179024, '1001', '��Ǹ������δ������Ϣ�ͣ��޷�Ѱ�����ĺ��ѣ���ظ���D����Ѷ�����Ϣ�Ͱ�', 'İ����ѡ��˵�(�н����', 1, '20121228103029', '1');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209123, 161, 179024, '1007', '���ѳɹ�ɾ������@${USER.NICKNAME}������������ӣ������»ظ�����@${USER.NICKNAME}����Ta��Ϊ���ĺ��ѡ�', 'ɾ�����ѻظ���', 1, '20121228103029', '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209124, 161, 179024, '1010', '�������Ϊ����������������ظ�''KJ''�鿴�Լ��ĸ��˿ռ䣬����http://192.168.5.96:8009/wap ���и������á�', '���������˵�', 1, '20121228103029', '1');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209125, 161, 179024, '1011', '�����ڿ�����@${USER.NICKNAME}��������ֱ�ӻظ�������Ta���졣', '������ʾ����', 1, '20121228103029', '${USER.NICKNAME}�Ǻ����ǳ�');
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209126, 161, 179024, '1012', 'http://112.4.128.220:18009/wap', null, 1, '20121228103029', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209127, 161, 179024, '1013', '��ظ��������ѡ��������ӵĺ��ѣ�${LIST}����������¼http://112.4.128.220:18009/wap�� �ظ�M�������������û���', null, 1, '20121228103029', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209128, 161, 179024, '1014', '��Ŀǰû������κκ��ѣ��ظ�������ſ����Ta��Ϊ���ѣ�${LIST}���ָ���������¼http://112.4.128.220:18009/wap', null, 1, '20121228103029', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209129, 161, 179024, '1015', '��ظ��������ѡ��������ӵĺ��ѣ�${LIST}����������¼http://112.4.128.220:18009/wap �ظ�M����İ�����û���', null, 1, '20121228103029', null);
insert into T_BASE_APP_REPLY (id, base_app_id, version_id, param_code, param_value, remark, update_user_id, update_time, param_value_remark)
values (209130, 161, 179024, '1016', '�����Իظ�����������Ta�ǳ�Ϊ���ѣ�${LIST}�������¼http://112.4.128.220:18009/wap', null, 1, '20121228103029', null);
commit;
prompt 82 records loaded
prompt Loading T_BASE_APP_REPLY_VERSION...
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (208300, 100, 'Ĭ�ϰ汾', 'ͨ�ô���ظ���', 0, 1, '20121227093951');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (204567, 107, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121226174650');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (189616, 101, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121226173859');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (178936, 104, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121226174958');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (178955, 105, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121226174840');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (178993, 151, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121227085558');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (179004, 152, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121225202526');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (178967, 106, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121225181954');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (178900, 102, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121226175127');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (178917, 103, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121226105736');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (178980, 108, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121226174553');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (179024, 161, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121228103029');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (179041, 162, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121226174225');
insert into T_BASE_APP_REPLY_VERSION (id, base_app_id, version_name, remark, status, update_user_id, update_time)
values (179052, 163, 'Ĭ�ϰ汾', '�ظ���', 0, 1, '20121226141611');
commit;
prompt 14 records loaded
prompt Loading T_BASE_APP_ROUTER...
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10023, 107, '�û�����', '2', '?*', '1065888899*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10021, 107, '�ؼ���������Ӧ���ط��ţ�', '1', '?*', '1065888820*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10020, 162, '������ѣ��ֻ����룩', 'INVITE_ONLINE', 'J*', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10022, 107, '�ؼ�������', '1', '?*', '10658888*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10044, 151, 'Ӧ���������', null, '#*', '*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10045, 152, 'Ӧ�ö���ȷ��', 'OC', 'K', '10658888*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10046, 152, 'Ӧ���˶�ȷ��', 'QC', 'G', '10658888*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10024, 101, 'ƽ̨����', ' ', 'D', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10025, 101, 'ͬ���Ϊ����', 'ACCEPT_ONLINE_INVITE', 'J', '1065888803*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10026, 101, 'ͬ���Ϊ����', 'ACCEPT_OFFLINE_INVITE', '*', '1065888804*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10033, 104, '����', '1', '*', '1065888899*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10034, 104, 'ȷ���������', '2', 'J', '1065888899*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10035, 104, '������˽��', '4', 'S', '1065888899*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10036, 104, '����˽��', '3', 'P', '1065888899*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10037, 105, '������������', 'CONFIRM', 'K', '1065888805*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10038, 105, '������������', null, '*', '1065888805*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10019, 101, 'ƽ̨����', null, 'D', '1065888810', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10027, 102, '�û��˶�', '1', 'T', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10032, 103, '�����ǳ�', null, '*nc*', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10039, 106, 'Ӧ�ð���', null, '?', '1065888820*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10040, 108, '�ر�������', '1', '*GB', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10028, 102, 'ȷ���˶�', '2', '1', '1065888810', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10029, 102, 'ȷ���˶�', '2', '2', '1065888810', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10041, 108, 'ÿ�����', '2', '*GBD', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10042, 108, 'ÿ�ܽ���', '3', '*GBW', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10043, 108, 'ÿ�½���', '4', '*GBM', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10047, 161, '�����û���Ϊ����', 'INVITE', 'J', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10048, 161, 'ɾ������', 'DELETE', 'C', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10049, 161, '��İ����������', 'SEARCH_STRANGERS', 'M', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10050, 161, '�û��������', null, '@*', '*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10051, 162, '�û���������ģ��', 'INVITE_OFFLINE', 'YQ', '10658888*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10052, 163, '�û��ռ�', null, 'KJ', '10658888', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10030, 102, 'ȷ���˶�', '2', '3', '1065888810', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10010, 106, 'Ӧ�ð���', null, '?', '1065888821*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10031, 102, '��Ч��ѡ��', '3', '*', '1065888810', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10011, 106, 'Ӧ�ð���', null, '?', '1065888822*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10012, 106, 'Ӧ�ð���', null, '?', '1065888823*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10013, 106, 'Ӧ�ð���', null, '?', '1065888824*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10014, 106, 'Ӧ�ð���', null, '?', '1065888825*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10015, 106, 'Ӧ�ð���', null, '?', '1065888826*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10016, 106, 'Ӧ�ð���', null, '?', '1065888827*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10017, 106, 'Ӧ�ð���', null, '?', '1065888828*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10018, 106, 'Ӧ�ð���', null, '?', '1065888829*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10009, 107, '�ؼ���������Ӧ���ط��ţ�', '1', '?*', '1065888827*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10008, 107, '�ؼ���������Ӧ���ط��ţ�', '1', '?*', '1065888826*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10007, 107, '�ؼ���������Ӧ���ط��ţ�', '1', '?*', '1065888825*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10006, 107, '�ؼ���������Ӧ���ط��ţ�', '1', '?*', '1065888824*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10005, 107, '�ؼ���������Ӧ���ط��ţ�', '1', '?*', '1065888823*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10004, 107, '�ؼ���������Ӧ���ط��ţ�', '1', '?*', '1065888822*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10003, 107, '�ؼ���������Ӧ���ط��ţ�', '1', '?*', '1065888821*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10002, 107, '�ؼ���������Ӧ���ط��ţ�', '1', '?*', '1065888820*', 1, 'http://192.168.5.96:19081/app');
insert into T_BASE_APP_ROUTER (id, base_app_id, sub_opt_name, sub_code, command, sp_code, mo_type, url)
values (10001, 151, 'Ӧ���������(�Ƽ���', 'RECOMMEND', 'tj', '10658888', 1, 'http://192.168.5.96:19081/app');
commit;
prompt 52 records loaded
prompt Loading T_SYS_MENU...
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (1, '001', '��������', '0', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (45, '001005003', '����ά��', '001005', 'developer/developerMessageQryAction.do?method=qryList', 1, 'developer_message_query', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (8, '002', 'Ӧ�����ݹ���', '0', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (9, '002001', '��������', '002', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (10, '002001001', '����¼��', '002001', 'info/sms/preAdd.do', 1, 'sms_content', null, 0, 'info/sms/3_1.html', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (11, '002001002', '�������', '002001', 'info/sms/auditList.do', 1, 'sms_audit', 'audit_btn', 0, 'info/sms/3_2.html', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (12, '002001003', '�����б�', '002001', 'info/sms/list.do', 1, 'sms_list', 'mod_btn,del_btn', 0, 'info/sms/3_3.html', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (13, '002002', '��������', '002', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (14, '002002001', '����¼��', '002002', 'info/mmsInfoAction.do?method=openInput&contentSrc=0', 1, 'mms_content', null, 0, 'info/mms/add.jsp', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (15, '002002002', '�������', '002002', 'info/mmsShenHeAction.do?method=open&contentSrc=0', 1, 'mms_audit', 'audit_btn', 0, 'info/mms/auditList.jsp', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (16, '002002003', '�����б�', '002002', 'info/mmsInfoAction.do?method=list&contentSrc=0', 1, 'mms_list', 'view_btn,mod_btn,del_btn,send_btn', 0, 'info/mms/list.jsp', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (33, '002003', 'Ӧ��������', '002', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (34, '002003001', 'Ӧ�����������', '002003', 'newsmanage/newsAppLogList.do?method=auditingList', 1, 'app_news_audit', 'audit_btn', 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (35, '002003002', 'Ӧ���������б�', '002003', 'newsmanage/newsAppLogList.do', 1, 'news_app_log', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (30, '003', 'ƽ̨������', '0', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (31, '003001', 'ƽ̨������¼��', '003', 'info/mmsInfoAction.do?method=openInput&contentSrc=3', 1, 'fresh_mms_add', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (36, '003002', 'ƽ̨���������', '003', 'info/mmsShenHeAction.do?method=open&contentSrc=3', 1, 'fresh_mms_audit', 'audit_btn', 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (32, '003003', 'ƽ̨�������б�', '003', 'info/mmsInfoAction.do?method=list&contentSrc=3', 1, 'fresh_mms_list', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (38, '004', 'Ⱥ������', '0', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (97, '004001', 'Ⱥ���������', '004', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (39, '004001001', 'Ⱥ����������', '004001', 'send/smsBatchTaskAction.do?method=preAddTask', 1, 'batch_task_add', null, 0, 'helpdoc/sale/sale_batch.htm', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (40, '004001002', 'Ⱥ���������', '004001', 'send/batchTaskListAction.do?method=smsAuditList', 1, 'batch_task_audit', 'audit_btn', 0, 'helpdoc/sale/sale_audit.htm', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (41, '004001003', 'Ⱥ��������', '004001', 'send/batchTask.do?method=smsList', 1, 'sms_batch_task_monitor', 'start_btn,pause_btn,cancel_btn', 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (21, '004002', '�û���Ⱥ', '004', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (86, '004002001', '�½���Ⱥ', '004002', 'usermanage/userGroupAction.do?method=showAddPage', 1, 'user_group_add', 'mod_btn,del_btn', 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (87, '004002002', '��Ⱥ�б�', '004002', 'usermanage/userGroupList.do', 1, 'user_group', 'mod_btn,del_btn', 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (98, '004003', 'Ⱥ�����Ź���', '004', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (89, '004003001', 'Ⱥ������¼��', '004003', 'info/mmsInfoAction.do?method=openInput&contentSrc=1', 1, 'batch_mms_add', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (90, '004003002', 'Ⱥ���������', '004003', 'info/mmsShenHeAction.do?method=open&contentSrc=1', 1, 'batch_mms_audit', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (91, '004003003', 'Ⱥ�������б�', '004003', 'info/mmsInfoAction.do?method=list&contentSrc=1', 1, 'batch_mms_list', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (99, '005', '����Ӧ������', '0', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (55, '005001', '�ظ������', '005', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (57, '005001001', '�ظ�������', '005001', 'baseappmanage/baseAppList.do', 1, 'app_conf_cfg', 'mod_btn,del_btn', 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (27, '005002', '��ӭ����ģ��', '005', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (28, '005002001', 'ģ������', '005002', 'mmsmanager/mmsInfoAction.do?method=openInput', 1, 'welcome_mms_input', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (29, '005002002', 'ģ���б�', '005002', 'mmsmanager/mmsInfoAction.do?method=qryContMms', 1, 'welcome_mms_query', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (82, '005003', 'Ӧ�ð�������ģ��', '005', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (83, '005003001', 'ģ������', '005003', 'mmsmanager/mmsInfoAction.do?method=openAppHelpInput', 1, 'app_help_mms_input', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (84, '005003002', 'ģ���б�', '005003', 'mmsmanager/mmsInfoAction.do?method=qryAppHelpContMms', 1, 'app_help_mms_query', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (100, '005004', 'ƽ̨������ģ��', '005', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (88, '005004001', 'ģ������', '005004', 'mmsmanager/kindly_remind_edit.jsp', 1, 'kindly_remind', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (51, '006', 'ϵͳ����', '0', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (52, '006001', 'ϵͳ�˺�', '006', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (53, '006001001', '��ɫ����', '006001', 'unitmanage/roleList.do', 1, 'role_manage', 'add_btn,mod_btn,del_btn', 0, 'unitmanage/2_2.jsp', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (54, '006001002', '�˺Ź���', '006001', 'partnermanage/partnerManagerList.do', 1, 'partner_manager', 'mod_btn,view_btn,del_btn', 0, 'partnermanage/3_2.jsp', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (58, '006003', '��������', '006', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (59, '006003001', '�Ŷι���', '006003', 'sysmgr/segment.do', 1, 'segmentcfg', 'add_btn,mod_btn,del_btn,in_btn', 0, 'systemmanage/segment_manage.jsp', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (60, '006003002', '����������', '006003', 'sysmgr/blackUser.do', 1, 'black_cfg', 'add_btn,mod_btn,del_btn,in_btn', 0, 'systemmanage/black_user_manage.jsp', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (61, '006003003', '�����ֹ���', '006003', 'sysmgr/sensitivePhrase.do', 1, 'filter_cfg', 'add_btn,mod_btn,del_btn,in_btn', 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (62, '006003004', '���Ժ������', '006003', 'config/testAccount.do', 1, 'test_account', null, 0, 'systemmanage/test_account_manage.jsp', null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (63, '006003005', '�����ֵ�', '006003', 'sysmgr/dicType.do', 1, 'sysdata', 'add_btn,mod_btn,del_btn,in_btn', 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (92, '007', '��ѯͳ��', '0', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (22, '007001', '������ϵ', '007', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (23, '007001001', 'ƽ̨������ѯ', '007001', 'usermanage/platUserList.do', 1, 'plat_user', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (24, '007001002', 'Ӧ�ÿ�ͨ��ѯ', '007001', 'usermanage/userAppList.do', 1, 'user_app', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (101, '007002', '��Ӫ����', '007', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (93, '007002001', 'ƽ̨��������', '007002', 'platbaseinfo/platBaseInfoList.do', 1, 'platbaseinfo', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (94, '007002002', '�������а�', '007002', 'platinforank/platInfoRankList.do', 1, 'platinforank', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (95, '007002003', 'WAP��վ����', '007002', 'wapstatistics/wapStatisticsList.do', 1, 'wapstatistics', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (2, '001001', '�����߹���', '001', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (3, '001001001', '�������б�', '001001', 'developer/developerInfoAction.do?method=qryList', 1, 'developer_info_query', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (4, '001002', 'Ӧ�ù���', '001', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (5, '001002001', 'Ӧ�����', '001002', 'appmanager/appInfoAction.do?method=qryList&flag=1', 1, 'app_info_audit', 'audit_btn', 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (7, '001002002', 'Ӧ��ά��', '001002', 'appmanager/appInfoAction.do?method=qryEditList', 1, 'app_info_edit', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (79, '001002003', 'Ӧ�÷���', '001002', 'appmanager/appClassAction.do?method=framemain', 1, 'app_type', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (96, '001003', '�ӿ���Ȩ����', '001', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (6, '001003001', '�ӿ���Ȩ', '001003', 'appmanager/appInfoAction.do?method=qryInterfaceGrantList', 1, 'app_interface_grant', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (17, '001004', '��������', '001', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (18, '001004001', '����¼��', '001004', 'syssupport/sysSupportAction.do?method=showAddPage', 1, 'sys_support_input', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (19, '001004002', '�����б�', '001004', 'syssupport/sysSupportList.do', 1, 'sys_support_cfg', 'mod_btn,del_btn', 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (43, '001005', '��̬���Ź���', '001', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (44, '001005001', '����¼��', '001005', 'developer/developerMessageAction.do?method=preAddMessage', 1, 'developer_message_input', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (81, '001005002', '�������', '001005', 'developer/developerMessageQryAction.do?method=qryAuditList', 1, 'platform_news_audit', 'audit_btn', 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (102, '005005', '�ؼ�����������ģ��', '005', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (103, '005006', '�û���������ģ��', '005', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (104, '005007', '���ѿռ����ģ��', '005', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (105, '005008', '���˿ռ����ģ��', '005', null, 0, null, null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (106, '005005001', 'ģ������', '005005', 'mmsmanager/mmsInfoAction.do?method=openKeywordSearchInput', 1, 'keyword_search_input', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (107, '005005002', 'ģ���б�', '005005', 'mmsmanager/mmsInfoAction.do?method=qryKeywordSearchMms', 1, 'keyword_search_list', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (108, '005006001', 'ģ������', '005006', 'mmsmanager/mmsInfoAction.do?method=openUserSearchInput', 1, 'user_search_input', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (109, '005006002', 'ģ���б�', '005006', 'mmsmanager/mmsInfoAction.do?method=qryUserSearchMms', 1, 'user_search_list', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (110, '005007001', 'ģ������', '005007', 'mmsmanager/mmsInfoAction.do?method=openFriendZoneInput', 1, 'friend_zone_input', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (111, '005007002', 'ģ���б�', '005007', 'mmsmanager/mmsInfoAction.do?method=qryFriendZoneMms', 1, 'friend_zone_list', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (112, '005008001', 'ģ������', '005008', 'mmsmanager/mmsInfoAction.do?method=openUserZoneInput', 1, 'user_zone_input', null, 0, null, null);
insert into T_SYS_MENU (id, menu_code, menu_name, menu_pcode, menu_url, leaf_yn, model_code, url_btns, sys_type, help_url, unit_id)
values (113, '005008002', 'ģ���б�', '005008', 'mmsmanager/mmsInfoAction.do?method=qryUserZoneMms', 1, 'user_zone_list', null, 0, null, null);
commit;
prompt 85 records loaded
prompt Loading T_SYS_SERVICE_INFO...
insert into T_SYS_SERVICE_INFO (id, service_name, service_id, fee_type, fee, service_type, remark, batch_type)
values (1, '�������', 'FREE', 1, 0, 1, null, 1);
insert into T_SYS_SERVICE_INFO (id, service_name, service_id, fee_type, fee, service_type, remark, batch_type)
values (2, '�������', '101101', 1, 0, 2, null, 1);
insert into T_SYS_SERVICE_INFO (id, service_name, service_id, fee_type, fee, service_type, remark, batch_type)
values (3, 'WAP���', 'FREE', 1, 0, 3, null, 1);
commit;
prompt 3 records loaded
prompt Loading T_SYS_USER...
insert into T_SYS_USER (id, user_id, user_pwd, user_name, unit_id, tel, status, attr_flag, remark, email, teminal_id, forever, valid_time, create_time, change_pwd_time, lock_status, update_time)
values (1, 'system', 'E10ADC3949BA59ABBE56E057F20F883E', '��������Ա', '01', null, 1, 0, null, 'jisn@c-platform.com', '13851628076', 1, '20201122165749', '20091117000000', '20121221102355', '0', '20121221102355');
insert into T_SYS_USER (id, user_id, user_pwd, user_name, unit_id, tel, status, attr_flag, remark, email, teminal_id, forever, valid_time, create_time, change_pwd_time, lock_status, update_time)
values (207837, 'limin', 'E10ADC3949BA59ABBE56E057F20F883E', '����', null, null, 1, 1, '��������Ա��Ү~', 'liminb@c-platform.com', '15951921547', 1, '20201122165749', '20121226163157', '20121226163157', '0', null);
commit;
prompt 2 records loaded
prompt Enabling triggers for T_APP_CLASSIFICATION...
alter table T_APP_CLASSIFICATION enable all triggers;
prompt Enabling triggers for T_BASE_APP_CONF...
alter table T_BASE_APP_CONF enable all triggers;
prompt Enabling triggers for T_BASE_APP_CONF_TYPE...
alter table T_BASE_APP_CONF_TYPE enable all triggers;
prompt Enabling triggers for T_BASE_APP_INFO...
alter table T_BASE_APP_INFO enable all triggers;
prompt Enabling triggers for T_BASE_APP_REPLY...
alter table T_BASE_APP_REPLY enable all triggers;
prompt Enabling triggers for T_BASE_APP_REPLY_VERSION...
alter table T_BASE_APP_REPLY_VERSION enable all triggers;
prompt Enabling triggers for T_BASE_APP_ROUTER...
alter table T_BASE_APP_ROUTER enable all triggers;
prompt Enabling triggers for T_SYS_MENU...
alter table T_SYS_MENU enable all triggers;
prompt Enabling triggers for T_SYS_SERVICE_INFO...
alter table T_SYS_SERVICE_INFO enable all triggers;
prompt Enabling triggers for T_SYS_USER...
alter table T_SYS_USER enable all triggers;
set feedback on
set define on
prompt Done.
