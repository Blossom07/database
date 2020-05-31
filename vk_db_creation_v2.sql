-- ���� ������. ���� 3. https://geekbrains.ru/users/3995069

drop table if exists play_lists;
create table play_lists ( 
	id bigint unsigned not null,
	name varchar(255) default null, -- ������������ ����-�����
	description varchar(255) default null, -- �������� ����-�����
	user_id bigint unsigned not null, -- ������������, ��� ������ ����-����
	created_at datetime default now(), -- ���� � ����� ��������
	updated_at datetime on update current_timestamp, -- ���� � ����� ����������
	
	primary key (id),
	foreign key (user_id) references users(id)
);

drop table if exists music;
create table music (
	id serial,
	play_list_id bigint unsigned not null, -- ����-����
	media_id bigint unsigned not null, -- ���������, ���������� � ����-���� �� ��������� �����
	performer_name varchar(255) default 'unknown', -- ������������ �����������, �.�. � ��������� ����� ������������� �����, �� � ������� ���� ������ ������������� ������ ��� ����� ������
	track_name varchar(255) default 'unknown', -- ������������ ����� �����, ���� ��� � �����, �.�. ���������� ��� ����� ������
	track_duration time not null, -- ������������ ����� �����,  

	foreign key (play_list_id) references play_lists(id),
	foreign key (media_id) references media(id)	on delete cascade -- ��� �������, ���� ���, ��� ����� �����-����, ��� ������������� ����, ������ ���, ��� �� ������ ��������� �� ���� ���� ������
);

drop table if exists subscriptions; -- �������� �� �������� ������� ������������
create table subscriptions (
	subscriber_user_id BIGINT UNSIGNED NOT NULL, -- ���������
    target_user_id BIGINT UNSIGNED NOT NULL, -- ���, �� ���� ���������� ���������
    status ENUM('subscribed', 'unsubscribed'), -- ������ ��������
	created_at datetime default now(), -- ���� � ����� ��������
	updated_at datetime on update current_timestamp, -- ���� � ����� ����������
	
    PRIMARY KEY (subscriber_user_id, target_user_id),
    FOREIGN KEY (subscriber_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)
);

drop table if exists gifts; -- �������-��������
create table gifts (
	id serial,
	grantor_user_id BIGINT UNSIGNED NOT NULL, -- ��������
    granted_user_id BIGINT UNSIGNED NOT NULL, -- �����������
    media_id bigint unsigned not null, -- ��������, ������� �������
	created_at datetime default now(), -- ���� � �����, ����� ������ �������
		
    FOREIGN KEY (grantor_user_id) REFERENCES users(id),
    FOREIGN KEY (granted_user_id) REFERENCES users(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);
