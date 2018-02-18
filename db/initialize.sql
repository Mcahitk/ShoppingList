create table if not exists users (
  id int auto_increment,
  name varchar(50) not null,
  email varchar(50) not null,
  password varchar(32) not null,
  primary key(id),
  unique (email)
);

create table if not exists list (
  id int auto_increment,
  name varchar(50) not null,
  owner int not null,
  primary key(id)
);

create table if not exists list_item (
  id int auto_increment,
  list_id int not null,
  title varchar(50) not null,
  done boolean not null default false,
  primary key(id)
);

create table if not exists user_right (
  user_id int not null,
  list_id int not null,
  rights enum('owner', 'member') not null,
  primary key(user_id, list_id)
);

insert into users (name, email, password)
values
  ('Cavit Keskin', 'cavitkeskin@gmail.com', '1234'),
  ('Zuleyha Keskin', 'zuhalefil@gmail.com', 'zk'),
  ('Halid Ensar Keskin', 'halidensar@gmail.com', 'he'),
  ('Murat Keskin', 'muratkeskin@gmail.com', 'mk'),
  ('Ferit Keskin', 'feritkeskin@gmail.com', 'fk'),
  ('Mehmet Cahit Keskin', 'mehmetcahit@gmail.com', 'mck')
  ;

insert into list (name, owner)
  values
  ('alisveris', 1),
  ('spor', 6),
  ('kirtasiye', 2)
  ;

  insert into list_item (list_id, title, done)
    values
    (1, 'sut', false),
    (1, 'yumurta', false),
    (2, 'ayakkabi', false),
    (2, 'kemer', false),
    (3, 'kalem', true),
    (3, 'silgi', false)
    ;

insert into user_right (user_id, list_id, rights)
  values
  (1, 1, 'owner'),
  (2, 1, 'member'),
  (6, 1, 'member'),
  (6, 2, 'owner'),
  (1, 2, 'member'),
  (1, 3, 'member'),
  (2, 3, 'owner');


select *
from list l
inner join user_right r on l.id = r.list_id
where r.user_id = 6;


-- select l.*, u.name, u.email
-- from list l
-- inner join users u on u.id = l.owner;

-- select i.*, l.name as list_name
-- from list_item i
-- inner join list l on l.id = i.list_id;




-- select * from users
