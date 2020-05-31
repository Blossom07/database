-- Базы данных. Урок 3. https://geekbrains.ru/users/3995069

drop table if exists play_lists;
create table play_lists ( 
	id bigint unsigned not null,
	name varchar(255) default null, -- наименование плей-листа
	description varchar(255) default null, -- описание плей-листа
	user_id bigint unsigned not null, -- пользователь, кто создал плей-лист
	created_at datetime default now(), -- дата и время создания
	updated_at datetime on update current_timestamp, -- дата и время обновления
	
	primary key (id),
	foreign key (user_id) references users(id)
);

drop table if exists music;
create table music (
	id serial,
	play_list_id bigint unsigned not null, -- плей-лист
	media_id bigint unsigned not null, -- аудиофайл, включенный в плей-лист из коллекции медиа
	performer_name varchar(255) default 'unknown', -- наименование исполнителя, т.к. в коллекции медиа разнообразные файлы, то я вынесла сюда данные специфические именно для аудио треков
	track_name varchar(255) default 'unknown', -- наименование аудио трэка, тоже нет в медиа, т.к. специфично для аудио файлов
	track_duration time not null, -- длительность аудио трэка,  

	foreign key (play_list_id) references play_lists(id),
	foreign key (media_id) references media(id)	on delete cascade -- мне кажется, если тот, кто залил аудио-трэк, или администратор сети, удалят его, что он должен удалиться из всех плей листов
);

drop table if exists subscriptions; -- подписка на страницу другого пользователя
create table subscriptions (
	subscriber_user_id BIGINT UNSIGNED NOT NULL, -- подписчик
    target_user_id BIGINT UNSIGNED NOT NULL, -- тот, на кого подписался подписчик
    status ENUM('subscribed', 'unsubscribed'), -- статус подписки
	created_at datetime default now(), -- дата и время создания
	updated_at datetime on update current_timestamp, -- дата и время обновления
	
    PRIMARY KEY (subscriber_user_id, target_user_id),
    FOREIGN KEY (subscriber_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)
);

drop table if exists gifts; -- подарки-картинки
create table gifts (
	id serial,
	grantor_user_id BIGINT UNSIGNED NOT NULL, -- даритель
    granted_user_id BIGINT UNSIGNED NOT NULL, -- одариваемый
    media_id bigint unsigned not null, -- картинка, предмет подарка
	created_at datetime default now(), -- дата и время, когда сделан подарок
		
    FOREIGN KEY (grantor_user_id) REFERENCES users(id),
    FOREIGN KEY (granted_user_id) REFERENCES users(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);
