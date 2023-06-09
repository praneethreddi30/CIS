use CIS;

create table A(a int);
create table B(a int);


insert into A values(1),(2),(NULL),(3),(2),(4),(4),(6),(10);

insert into B values(7),(NULL),(NULL),(3),(4),(4),(2),(2),(8);

select * from A;
select * from B;

select distinct * from A join B where A.a=B.a;

select distinct * from A left outer join B on (A.a=B.a);

select distinct * from A right outer join B on (A.a=B.a);

select * from A left outer join B on (A.a=B.a) union select * from A right outer join B on (A.a=B.a);