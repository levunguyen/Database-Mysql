-- transaction

delimiter //
create procedure save_class()
begin
    
    declare exit handler for sqlexception rollback;
    
    start transaction;
    
	insert into class (id, name, type_of_class_id)
	values (4, 'I0720G1', 3);
    
    insert into student (id, name, date_of_birth, account, class_id)
    values (5, 'Hung', '30-08-2020', null, 4);
    
    commit;
    
end; //
delimiter ;

drop procedure save_class;

call save_class();

