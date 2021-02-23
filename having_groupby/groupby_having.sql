SELECT * FROM testdate.diem_thi;
-- Hiển thị tổng điểm của mỗi sinh viên
select ma_sinh_vien, sum(diem) from testdate.diem_thi group by ma_sinh_vien;

select ma_sinh_vien, sum(diem) as s from testdate.diem_thi where diem > 1 group by ma_sinh_vien;
 
select ma_sinh_vien, sum(diem) as s from testdate.diem_thi group by ma_sinh_vien having s >= 18
