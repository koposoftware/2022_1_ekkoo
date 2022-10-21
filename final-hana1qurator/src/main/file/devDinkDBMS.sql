select * from t_board;
desc t_board;

DESC T_MEMBER

create table t_test_member(
    password varchar2(20)
);
commit;
drop table t_test_member;
insert into t_test_member values ('passwd');
select * from table_privilege_map;
grant execute on dbms_crypto to opc;