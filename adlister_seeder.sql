use adlister_db;

insert into users (username, email, password) values ('bob123', 'bob@email.com', 'password');

insert into ads (user_id, title, description) values
                                                     (1, 'Title 1', 'Description 1 yadda yadda'),
                                                     (1, 'Title 2', 'Description 2 yadda yadda'),
                                                     (1, 'Title 3', 'Description 3 yadda yadda'),
                                                     (1, 'Title 4', 'Description 4 yadda yadda'),
                                                     (1, 'Title 5', 'Description 5 yadda yadda');
