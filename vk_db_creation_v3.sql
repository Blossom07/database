/* Базы данных. Урок 4. https://geekbrains.ru/users/3995069
   https://github.com/Blossom07/database/pull/2
 */

-- Задание i. Заполнить все таблицы БД vk данными (по 10-100 записей в каждой таблице)

INSERT INTO users (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES
	('41', 'Hillary', 'Green', 'spfannerstill@example.org', '7a9a6ac81ca3702afdbcfe715566df73bcb5d59a', '6'),
	('42', 'Vincent', 'Sporer', 'tillman38@example.org', '096816cf2e50c87d6dfe841d91a6bde107282289', '1'),
	('43', 'Salvador', 'Davis', 'lkshlerin@example.com', '1bc33364709e336bf15b70afa4b26c3fe91c6fed', '81'),
	('44', 'Kaleb', 'Ziemann', 'geoffrey.johnson@example.com', '4c783eb102896470305584aff3011e34283f34ac', '371109'),
	('45', 'Michael', 'Olson', 'ydickinson@example.net', 'f151b1fb4ffc1a5889909d10c7d746a187ff5350', '0'),
	('46', 'Verner', 'Wolff', 'monserrat47@example.org', 'f4ba923b8e1842cb34edbb7520ed730755630fb0', '148183'),
	('47', 'Eunice', 'Hermann', 'max98@example.net', '09ecc9b1ad627c3ec55aae8606f2f1ac6476e014', '950088'),
	('48', 'Joanne', 'Yundt', 'alexane63@example.net', 'daeea1ba9c69de74d0fabffe2b9938100f426721', '6812204303'),
	('49', 'Ariane', 'Pfeffer', 'jabari.hermann@example.net', '89d24b4ca867d642dc4fa1dcb58da3e02cab239f', '424'),
	('53', 'Katlyn', 'Erdman', 'vidal16@example.net', '35938d5fad799536bfd9211e2d781daa300c265b', '454295'),
	('54', 'Hailey', 'Skiles', 'alfred02@example.com', '3e9f8f94fe2dd3bfeeeec6332abae065afc03f92', '883549'),
	('56', 'Elsie', 'Harvey', 'kay42@example.org', 'e67ac5cf03abcca94e49d4390e3856293392434c', '588560'),
	('57', 'Loyal', 'Hane', 'lexie.ortiz@example.net', 'ced17a3b803ca780ed0a18e53004dde83eb3e744', '2104421525'),
	('58', 'Mitchell', 'Jones', 'sylvia55@example.net', 'e2644a3af2ab92957950afa3129101797d193b9a', '726'),
	('60', 'Magali', 'Kilback', 'gutkowski.annabell@example.com', '868e7ddf55b9d3564e5f8862b95b26ac114ddd22', '954'),
	('62', 'Shanon', 'Hackett', 'pkautzer@example.org', '56d0f9452f3f8050e5bb088e0bc6f98c04761512', '861324'),
	('66', 'Ariel', 'Heaney', 'dan.schowalter@example.com', '7081c3ca3f4f1a7a7641d37c245e9e982728f968', '204'),
	('68', 'Violet', 'Toy', 'langworth.brady@example.net', '10f77d1b8b7d19cc1db5a622118b52cc6ad03618', '398'),
	('71', 'Julius', 'Batz', 'cormier.ofelia@example.org', 'afedf040a619bfd76ecbdea42a4ad2d2ad279955', '116335'),
	('74', 'Angelita', 'Mosciski', 'vrohan@example.net', '2392c2af692d4f882daa0ead0f7d480b3b19788d', '976'),
	('75', 'Cynthia', 'Kuhn', 'crist.heath@example.org', '58c4d7671904758d97c9e32c9b589fab1de449e0', '896628'),
	('76', 'Holden', 'Langosh', 'nwolff@example.net', '41d9471246045342e7b6e505676987d96f92284f', '2578605424'),
	('78', 'Randy', 'Rutherford', 'qhartmann@example.net', 'ca2f3f6c5de367f8ccf55d102a18a0dd73e52191', '97'),
	('80', 'Mack', 'Considine', 'bvon@example.com', '3c1525fa611bd4c69bb9f43b39dac64d90a534be', '8255148357')
;

INSERT INTO photo_albums (`id`, `name`, `user_id`) VALUES ('1', 'mollitia', '41');

INSERT INTO media_types (`id`, `name`, `created_at`, `updated_at`) VALUES 
	('1', 'cum', '2004-01-29 06:28:31', '2001-07-11 17:12:58'),
	('2', 'possimus', '1975-07-20 07:50:56', '2009-06-27 11:04:48'),
	('3', 'et', '1982-02-27 13:24:38', '1972-06-15 18:22:43'),
	('4', 'pariatur', '1997-05-01 19:19:19', '2009-09-07 20:49:44'),
	('5', 'sint', '1986-01-19 01:05:57', '2001-10-03 09:00:27'),
	('6', 'unde', '1980-01-18 00:40:00', '1981-12-07 14:58:21'),
	('7', 'quia', '2007-09-03 11:09:39', '2017-04-15 02:37:49'),
	('8', 'molestiae', '2016-05-08 00:36:27', '1981-01-30 11:08:21'),
	('9', 'voluptatem', '1995-05-09 05:32:25', '1973-05-03 12:57:12'),
	('10', 'harum', '2005-09-22 00:16:46', '1981-04-11 04:29:11')
;

INSERT INTO media (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES 
	('1', '1', '41', 'Sunt ea magnam ut aut occaecati aut eveniet. Sunt dolore earum nulla qui nesciunt ut dolorum dolorem. Nobis laudantium nostrum et ad est libero neque.', 'non', 9775, NULL, '1981-11-26 20:51:52', '2003-12-07 21:37:57'),
	('2', '2', '42', 'Amet maxime earum optio possimus adipisci saepe maiores. Dolorem eum vel fuga ducimus natus tempora quas. Mollitia ad non officiis et qui maiores minima non.', 'nemo', 5842877, NULL, '1983-01-04 12:05:50', '1999-10-31 18:56:55'),
	('3', '3', '43', 'Non rerum ipsam voluptas. Praesentium sunt eaque quis facilis. Ut suscipit iusto reprehenderit nostrum inventore dignissimos sit provident. Modi quis harum aspernatur ut ut dignissimos qui et.', 'rem', 48, NULL, '2020-01-19 01:43:36', '2012-01-26 18:00:34'),
	('4', '4', '44', 'Ea et voluptatem non iste quibusdam accusantium ut nihil. Natus voluptate tenetur quidem nihil impedit tenetur. Quam odio est alias perspiciatis quod dolorem.', 'corrupti', 7942616, NULL, '2002-12-22 05:54:14', '2008-10-27 01:36:17'),
	('5', '5', '45', 'Rerum non est sunt maxime sed a. Maiores numquam qui ea dignissimos et. Dolor quia vitae asperiores exercitationem eos. Aut ipsum qui voluptates aut perspiciatis dolorum.', 'veritatis', 887501215, NULL, '1981-03-10 23:59:28', '2012-08-24 19:50:49'),
	('6', '6', '46', 'Iusto eos aut non aperiam dolores velit rerum sed. Aspernatur provident cumque voluptatem ut velit reiciendis asperiores ea. Quo impedit consequatur odit. Maiores cumque dolor quia sit illo.', 'et', 642028, NULL, '1988-05-25 05:14:12', '2017-11-02 02:19:17'),
	('7', '7', '47', 'Dicta est voluptate libero esse quo. Ut dolor consectetur cupiditate et. Ut enim qui error.', 'qui', 55927443, NULL, '2019-01-25 07:11:51', '2009-06-06 14:18:38'),
	('8', '8', '48', 'Nisi architecto ut et soluta. Consequuntur atque unde recusandae fuga cupiditate. Maiores ullam minus et tenetur ducimus ab magni. Ipsa dolorem ducimus omnis odio.', 'et', 9378183, NULL, '1971-02-09 09:10:47', '2011-12-22 13:55:48'),
	('9', '9', '49', 'Molestias consequatur aut veritatis nostrum sint temporibus. Voluptatibus atque reprehenderit laboriosam ducimus id. Ipsa omnis earum sed atque inventore autem assumenda. Dolore similique est sit incidunt qui velit.', 'fuga', 379925, NULL, '1994-08-03 10:52:47', '1992-05-19 19:49:37'),
	('10', '10', '53', 'Dolorum et similique quo quia magni. Illum magni repudiandae repellendus veniam consectetur tempore.', 'consequuntur', 5670828, NULL, '1999-01-22 10:05:05', '2008-12-09 21:44:23'),
	('11', '1', '54', 'Et iure est beatae occaecati debitis. Illum enim eum voluptas ea earum.', 'qui', 8, NULL, '1973-10-13 06:08:41', '2013-10-21 16:11:12'),
	('12', '2', '56', 'Pariatur nulla magni consequatur ut placeat eos quis. Temporibus et in suscipit. Eum pariatur sit voluptatem dolor tempore voluptatibus. Qui placeat repellat alias cum pariatur.', 'velit', 343801, NULL, '2007-06-03 14:14:30', '1986-06-28 20:16:57'),
	('13', '3', '57', 'Cumque omnis fuga illo atque sit ut velit. Numquam ut et ut. Sit ex et sunt fugit aliquam. Ea voluptas sed eveniet consequatur reprehenderit ut.', 'nihil', 7300170, NULL, '2009-07-12 15:59:32', '2007-12-29 08:17:31'),
	('14', '4', '58', 'Rem et debitis nemo ex. Libero dolores voluptatem inventore et est consequatur eaque. Fugiat quidem illum ut nulla dolorem deserunt laborum. Deserunt sit quibusdam voluptas quia non dolores.', 'harum', 373, NULL, '1989-09-22 22:43:39', '2011-01-30 05:15:49'),
	('15', '5', '60', 'Autem saepe amet non commodi ipsam. Suscipit rem ullam animi reiciendis aut tenetur consequatur. Aliquid ut est corrupti doloremque ut architecto quos ea.', 'inventore', 1650555, NULL, '1974-02-17 09:33:58', '1974-10-05 11:14:56')
;

INSERT INTO photos (`id`, `album_id`, `media_id`) VALUES
	('1', '1', '1'),
	('2', '1', '2'),
	('3', '1', '3'),
	('4', '1', '4'),
	('5', '1', '5'),
	('6', '1', '6'),
	('7', '1', '7'),
	('8', '1', '8'),
	('9', '1', '9'),
	('10', '1', '10'),
	('11', '1', '11'),
	('12', '1', '12'),
	('13', '1', '13'),
	('14', '1', '14'),
	('15', '1', '15'),
	('16', '1', '1'),
	('17', '1', '2'),
	('18', '1', '3'),
	('19', '1', '4'),
	('20', '1', '5'),
	('21', '1', '6'),
	('22', '1', '7'),
	('23', '1', '8'),
	('24', '1', '9'),
	('25', '1', '10'),
	('26', '1', '11'),
	('27', '1', '12'),
	('28', '1', '13'),
	('29', '1', '14'),
	('30', '1', '15')
;

INSERT INTO profiles (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES
	('41', NULL, '1998-09-30', '1', '1984-09-27 07:32:40', 'New Vincenzoview'),
	('42', NULL, '2007-02-09', '2', '2019-01-23 10:09:09', 'Marionborough'),
	('43', NULL, '1995-01-04', '3', '1979-11-10 12:37:17', 'Kameronport'),
	('44', NULL, '2003-08-06', '4', '1977-03-09 11:13:58', 'Charityhaven'),
	('45', NULL, '1997-12-01', '5', '1999-06-14 04:16:53', 'Port Kaylinberg'),
	('46', NULL, '1998-02-24', '6', '1986-04-04 02:33:58', 'South Christaside'),
	('47', NULL, '1970-02-09', '7', '2004-11-19 05:51:06', 'Schoenshire'),
	('48', NULL, '2014-09-02', '8', '1988-09-24 23:34:18', 'VonRuedenburgh'),
	('49', NULL, '2010-08-20', '9', '1998-02-23 17:54:12', 'Lake Nola'),
	('53', NULL, '2010-02-03', '10', '2001-08-08 20:25:21', 'Boehmport'),
	('54', NULL, '1976-02-08', '11', '1982-12-16 11:49:18', 'Mayerport'),
	('56', NULL, '1994-04-17', '12', '1973-09-14 01:40:07', 'Geovanymouth'),
	('57', NULL, '2016-06-06', '13', '1991-07-27 22:27:04', 'South Benjamin'),
	('58', NULL, '1999-11-02', '14', '2018-12-23 05:28:59', 'Port Randal'),
	('60', NULL, '1989-04-18', '15', '2004-11-09 07:30:19', 'West Emilia'),
	('62', NULL, '1974-03-02', '16', '2003-03-13 09:22:28', 'North Arlenefurt'),
	('66', NULL, '1975-10-08', '17', '2019-11-07 02:51:20', 'Lynnview'),
	('68', NULL, '1974-03-01', '18', '2014-01-20 03:52:40', 'South Tommieborough'),
	('71', NULL, '1971-03-31', '19', '2008-01-19 04:16:07', 'Abshireshire'),
	('74', NULL, '1977-12-09', '20', '2011-07-28 01:57:18', 'East Jeremie'),
	('75', NULL, '1988-11-19', '21', '2004-02-10 03:42:41', 'Rosamondfurt'),
	('76', NULL, '2001-02-25', '22', '2007-08-07 13:16:48', 'East Karibury'),
	('78', NULL, '1994-02-13', '23', '1973-12-16 21:22:04', 'Blandafurt'),
	('80', NULL, '1983-10-16', '24', '1999-08-22 16:49:47', 'Celiamouth')
;

INSERT INTO communities (`user_id`, `community_id`) VALUES 
	('1', 'blanditiis', '41'),
	('2', 'sed', '42'),
	('3', 'quia', '43'),
	('4', 'amet', '44'),
	('5', 'omnis', '45')
;

INSERT INTO users_communities (`name`, `admin_user_id`) VALUES 
	('41', '1'),
	('42', '2'),
	('43', '3'),
	('44', '4'),
	('45', '5'),
	('46', '1'),
	('47', '2'),
	('48', '3'),
	('49', '4'),
	('53', '5'),
	('54', '1'),
	('56', '2'),
	('57', '3'),
	('58', '4'),
	('60', '5')
;

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES 
	('41', '41', 'approved', '1978-03-06 02:56:34', '1985-04-26 12:56:01'),
	('42', '42', 'requested', '1995-05-28 01:12:55', '1991-01-29 01:01:55'),
	('43', '43', 'approved', '1984-04-24 17:27:57', '1994-01-21 08:11:24'),
	('44', '44', 'unfriended', '1985-09-21 16:45:06', '2004-02-12 10:08:00'),
	('45', '45', 'requested', '2014-09-09 16:08:27', '1985-10-30 21:31:07'),
	('46', '46', 'approved', '1990-10-25 23:46:00', '1990-12-09 08:20:52'),
	('47', '47', 'unfriended', '1971-04-20 00:41:49', '1990-11-02 11:53:51'),
	('48', '48', 'unfriended', '1993-08-03 15:27:24', '1991-06-26 22:38:01'),
	('49', '49', 'unfriended', '2007-02-14 19:58:06', '1991-07-04 17:42:12'),
	('53', '53', 'declined', '2015-07-17 00:41:18', '1985-05-11 08:46:42'),
	('54', '54', 'approved', '1987-04-14 10:19:43', '1996-06-05 16:48:00'),
	('56', '56', 'approved', '1976-05-22 02:42:32', '1981-04-30 16:34:24'),
	('57', '57', 'requested', '1995-01-20 12:18:43', '1985-03-13 12:13:03'),
	('58', '58', 'declined', '2000-03-02 03:48:27', '2010-03-30 22:23:04'),
	('60', '60', 'requested', '1980-11-08 09:33:08', '2017-01-22 21:08:43'),
	('62', '62', 'approved', '2007-02-03 18:18:00', '2019-05-28 09:14:29'),
	('66', '66', 'unfriended', '2001-10-27 08:20:54', '1995-03-21 23:45:13'),
	('68', '68', 'declined', '1970-03-20 02:12:34', '2014-03-24 10:56:27'),
	('71', '71', 'approved', '2004-03-18 06:42:50', '1997-02-21 00:04:28'),
	('74', '74', 'unfriended', '1985-06-28 22:45:17', '2009-01-08 03:10:13'),
	('75', '75', 'approved', '2006-06-20 23:20:42', '1998-09-28 18:36:41'),
	('76', '76', 'unfriended', '1985-04-01 01:48:36', '1972-08-03 13:06:08'),
	('78', '78', 'requested', '2001-08-29 12:35:18', '2019-09-12 17:57:57'),
	('80', '80', 'approved', '1978-01-31 22:07:04', '2001-04-20 01:53:04')
;

INSERT INTO gifts (`id`, `grantor_user_id`, `granted_user_id`, `media_id`, `created_at`) VALUES
	('1', '41', '41', '1', '1994-01-16 03:45:12'),
	('2', '42', '42', '2', '1975-03-03 04:39:39'),
	('3', '43', '43', '3', '2002-07-01 12:30:11'),
	('4', '44', '44', '4', '2007-10-12 23:12:56'),
	('5', '45', '45', '5', '1998-05-20 18:40:14'),
	('6', '46', '46', '6', '1985-12-19 06:45:50'),
	('7', '47', '47', '7', '1987-07-06 00:06:52'),
	('8', '48', '48', '8', '1999-04-09 07:32:13'),
	('9', '49', '49', '9', '2007-10-21 20:39:28'),
	('10', '53', '53', '10', '2011-10-28 02:00:14'),
	('11', '54', '54', '11', '2004-09-19 16:24:15'),
	('12', '56', '56', '12', '1991-06-20 22:00:56'),
	('13', '57', '57', '13', '2020-05-14 09:23:19'),
	('14', '58', '58', '14', '2016-03-27 12:54:33'),
	('15', '60', '60', '15', '2017-08-10 09:09:59'),
	('16', '62', '62', '1', '2013-06-25 14:29:45'),
	('17', '66', '66', '2', '1997-01-09 16:46:22'),
	('18', '68', '68', '3', '1988-02-05 13:03:29'),
	('19', '71', '71', '4', '1998-10-11 12:48:57'),
	('20', '74', '74', '5', '1997-06-09 03:26:18'),
	('21', '75', '75', '6', '1982-12-06 15:35:15'),
	('22', '76', '76', '7', '2000-10-27 20:27:02'),
	('23', '78', '78', '8', '1971-05-16 05:01:12'),
	('24', '80', '80', '9', '1986-01-12 01:42:15'),
	('25', '41', '41', '10', '2016-05-06 05:24:28'),
	('26', '42', '42', '11', '1997-06-23 16:36:40'),
	('27', '43', '43', '12', '1992-07-07 21:18:52'),
	('28', '44', '44', '13', '1995-04-05 09:13:47'),
	('29', '45', '45', '14', '1985-01-14 09:09:10'),
	('30', '46', '46', '15', '1997-01-05 13:50:54')
;

INSERT INTO likes (`id`, `user_id`, `media_id`, `created_at`) VALUES
	('1', '41', '1', '1981-10-03 16:52:06'),
	('2', '42', '2', '2016-03-12 17:08:51'),
	('3', '43', '3', '2019-08-10 06:07:02'),
	('4', '44', '4', '1975-11-28 12:14:57'),
	('5', '45', '5', '1985-03-14 07:28:57'),
	('6', '46', '6', '2012-01-11 06:49:58'),
	('7', '47', '7', '1980-12-21 03:29:02'),
	('8', '48', '8', '1978-09-25 04:11:05'),
	('9', '49', '9', '1992-10-11 02:31:49'),
	('10', '53', '10', '1981-04-15 20:31:13')
;

INSERT INTO messages (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES
	('1', '41', '41', 'Eius quo nesciunt voluptatibus cupiditate eaque repudiandae voluptatibus. Fugit perferendis saepe pariatur sed ad quia id libero. Et quasi modi in at neque nam.', '1981-12-26 19:25:29'),
	('2', '42', '42', 'Veniam est voluptatum dolor impedit magnam. Enim quia adipisci magnam et quod neque explicabo.', '1992-05-03 01:42:04'),
	('3', '43', '43', 'Inventore velit totam ad cupiditate dolores architecto magnam. Nam qui esse voluptate. Facere dicta sunt et voluptas cum enim assumenda.', '1989-07-08 00:35:41'),
	('4', '44', '44', 'Enim illo sapiente laboriosam explicabo inventore qui natus. Quos vero earum dolores ut beatae. Quia ea optio omnis exercitationem. Quo id sint libero qui exercitationem minima.', '2009-06-27 12:06:47'),
	('5', '45', '45', 'Eos est ut quidem vero voluptatibus dolorem. Voluptates praesentium sapiente est et asperiores praesentium aut odit. Iste qui ipsa nihil facilis repellat vel occaecati.', '1988-03-11 16:40:05'),
	('6', '46', '46', 'Et optio eligendi laudantium. Ut nihil non nihil quisquam quibusdam esse sunt hic.', '2015-02-10 05:28:49'),
	('7', '47', '47', 'Dignissimos eveniet recusandae magnam culpa sapiente a voluptatem. Sit voluptate qui omnis qui consequatur alias nostrum. Magni animi nostrum id eos. Voluptas repellendus autem sit fugiat.', '1981-01-26 14:32:03'),
	('8', '48', '48', 'Placeat modi delectus et. Amet tempora eius quas rerum sapiente debitis necessitatibus. Esse amet neque aut qui enim.', '1990-11-06 13:09:20'),
	('9', '49', '49', 'Eius aut illo porro dolorem exercitationem quasi. Corrupti natus non ut commodi impedit illum. Voluptatem id et iusto eaque asperiores enim numquam ut. Minima eum enim repellendus excepturi blanditiis.', '1975-01-23 12:46:05'),
	('10', '53', '53', 'Iusto sint dolorem id dignissimos sed. Consequuntur ut nihil dignissimos laboriosam. Cumque quod itaque porro cupiditate.', '1973-11-03 11:50:19'),
	('11', '54', '54', 'Maxime sint esse necessitatibus qui delectus deleniti sed aliquam. Et nam nulla qui voluptatem vitae deserunt. Non omnis consectetur quidem labore.', '1998-02-06 12:56:49'),
	('12', '56', '56', 'Ut est eius et quia voluptatem nulla rerum. Molestiae blanditiis temporibus quis. Commodi esse et autem illo quaerat ullam ut.', '1980-01-08 10:51:59'),
	('13', '57', '57', 'Veniam exercitationem laboriosam quas dolore dolorem. Voluptatem consequatur nulla nulla dicta. Autem voluptatem unde nostrum quisquam.', '1986-06-09 10:14:03'),
	('14', '58', '58', 'Possimus sit quasi sit saepe sequi enim excepturi quae. Aut dignissimos similique enim consequatur odit. Incidunt officiis rerum enim ullam repudiandae dolor nobis.', '1972-02-06 03:34:17'),
	('15', '60', '60', 'Magnam qui esse necessitatibus aut assumenda libero id. Commodi nihil dolore harum nihil ut debitis qui et. Optio reiciendis atque voluptas sint quia dolorem illo. In similique velit libero et qui.', '1996-05-30 19:43:41'),
	('16', '62', '62', 'Voluptatum qui nisi repellat quibusdam praesentium quo. Cumque veritatis soluta quia commodi voluptatum hic iste. Fugiat magni perferendis iure ipsam ab rerum nam.', '1998-04-14 07:05:02'),
	('17', '66', '66', 'Error nemo aut hic et quia sed amet quo. Reprehenderit in reiciendis sit voluptas impedit quae culpa. Sunt rerum fugit minima ut libero qui. Distinctio in accusantium ab.', '1992-05-12 01:30:10'),
	('18', '68', '68', 'Consequatur velit assumenda nobis accusamus quo ab quod sed. Nulla culpa architecto omnis hic et minus nemo. Libero esse excepturi qui sunt quasi ut nesciunt.', '1970-04-09 01:34:27'),
	('19', '71', '71', 'Sit cupiditate et ut saepe autem. Tempore aut omnis vitae neque. Consectetur qui suscipit numquam voluptas autem.', '1998-12-31 07:28:07'),
	('20', '74', '74', 'Quia aspernatur dolores et quia. Ipsa ut mollitia et fugit laboriosam fugiat. Sit molestiae et dolor et.', '1989-03-30 13:33:04')
;

INSERT INTO play_lists (`id`, `name`, `description`, `user_id`, `created_at`, `updated_at`) VALUES ('0', 'esse', 'Eveniet laudantium numquam illum aliquid doloremque voluptates dignissimos. Maxime dolor optio doloribus dolor sint accusamus odit omnis. Eos alias officia voluptatibus dignissimos sed. Nesciunt alias officia at iste.', '41', '1992-05-15 14:47:21', '1995-09-11 16:13:12');

INSERT INTO music (`id`, `play_list_id`, `media_id`, `performer_name`, `track_name`, `track_duration`) VALUES
	('1', '0', '1', 'velit', 'vel', '13:09:50'),
	('2', '0', '2', 'ea', 'et', '03:46:23'),
	('3', '0', '3', 'nihil', 'veritatis', '12:05:40'),
	('4', '0', '4', 'laborum', 'hic', '16:27:29'),
	('5', '0', '5', 'at', 'nostrum', '09:29:46'),
	('6', '0', '6', 'veritatis', 'nam', '19:19:55'),
	('7', '0', '7', 'magni', 'est', '15:44:15'),
	('8', '0', '8', 'odit', 'iusto', '16:44:03'),
	('9', '0', '9', 'occaecati', 'laboriosam', '15:07:14'),
	('10', '0', '10', 'accusamus', 'facilis', '03:06:27'),
	('11', '0', '11', 'quis', 'et', '22:48:49'),
	('12', '0', '12', 'dolores', 'sed', '13:19:44'),
	('13', '0', '13', 'voluptatibus', 'autem', '09:29:34'),
	('14', '0', '14', 'molestiae', 'beatae', '19:43:14'),
	('15', '0', '15', 'officiis', 'ullam', '23:45:28'),
	('16', '0', '1', 'unde', 'ut', '03:13:55'),
	('17', '0', '2', 'et', 'autem', '08:29:58'),
	('18', '0', '3', 'in', 'eum', '09:27:24'),
	('19', '0', '4', 'dolorem', 'vel', '18:50:30'),
	('20', '0', '5', 'qui', 'facilis', '22:52:14'),
	('21', '0', '6', 'eius', 'qui', '19:34:32'),
	('22', '0', '7', 'et', 'in', '00:36:17'),
	('23', '0', '8', 'ut', 'dolor', '05:35:55'),
	('24', '0', '9', 'rem', 'natus', '01:32:55'),
	('25', '0', '10', 'neque', 'ipsum', '15:25:41'),
	('26', '0', '11', 'aliquid', 'aut', '08:52:25'),
	('27', '0', '12', 'exercitationem', 'autem', '09:08:12'),
	('28', '0', '13', 'dolores', 'officia', '18:48:33'),
	('29', '0', '14', 'earum', 'deleniti', '12:26:55'),
	('30', '0', '15', 'aut', 'non', '06:33:21'),
	('31', '0', '1', 'reiciendis', 'placeat', '19:09:50'),
	('32', '0', '2', 'aut', 'omnis', '15:39:42'),
	('33', '0', '3', 'et', 'officiis', '05:09:12'),
	('34', '0', '4', 'reiciendis', 'veniam', '23:13:59'),
	('35', '0', '5', 'animi', 'nam', '11:13:07'),
	('36', '0', '6', 'iure', 'vero', '11:15:51'),
	('37', '0', '7', 'quis', 'quos', '23:48:33'),
	('38', '0', '8', 'corporis', 'ea', '19:20:19'),
	('39', '0', '9', 'perspiciatis', 'fugiat', '02:03:40'),
	('40', '0', '10', 'ab', 'enim', '06:22:07')
;

INSERT INTO subscriptions (`subscriber_user_id`, `target_user_id`, `status`, `created_at`, `updated_at`) VALUES
	('41', '41', 'subscribed', '2012-03-07 11:47:53', '1981-08-22 21:08:45'),
	('42', '42', 'unsubscribed', '1971-01-17 18:14:04', '1973-10-20 22:20:30'),
	('43', '43', 'unsubscribed', '1979-05-28 09:42:09', '2014-10-16 13:16:00'),
	('44', '44', 'unsubscribed', '1976-10-24 18:14:42', '1978-12-03 08:30:04'),
	('45', '45', 'subscribed', '1976-03-25 01:45:46', '1989-12-05 00:47:48'),
	('46', '46', 'unsubscribed', '2016-02-02 17:00:36', '2012-08-29 02:57:08'),
	('47', '47', 'subscribed', '1980-11-22 08:03:37', '1999-07-12 02:57:17'),
	('48', '48', 'subscribed', '1993-07-25 18:32:48', '2016-08-13 04:27:07'),
	('49', '49', 'subscribed', '2019-10-12 18:36:22', '2007-11-11 19:22:01'),
	('53', '53', 'subscribed', '1995-02-17 17:21:30', '1987-07-04 02:47:15'),
	('54', '54', 'unsubscribed', '1979-12-18 09:40:56', '1982-02-19 04:02:07'),
	('56', '56', 'unsubscribed', '1994-12-02 11:00:45', '2008-05-12 18:00:05'),
	('57', '57', 'subscribed', '1982-02-21 10:56:07', '2007-09-01 03:39:19'),
	('58', '58', 'unsubscribed', '2018-01-20 12:06:56', '1998-04-03 09:56:07'),
	('60', '60', 'subscribed', '1999-03-18 13:31:10', '2018-01-24 01:49:03'),
	('62', '62', 'unsubscribed', '1990-02-17 18:28:19', '2017-05-23 22:59:57'),
	('66', '66', 'unsubscribed', '1994-10-24 15:58:11', '1998-09-29 02:31:42'),
	('68', '68', 'subscribed', '2008-10-14 18:49:02', '1978-05-16 20:11:02'),
	('71', '71', 'unsubscribed', '1989-07-23 22:03:28', '1996-01-17 15:32:30'),
	('74', '74', 'subscribed', '2001-10-29 09:49:22', '2011-03-21 08:17:43')
;

-- Задание ii. Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке

SELECT distinct firstname
FROM users ASC;

SELECT distinct lastname, firstname -- попробовала в обратном алфавитном порядке
FROM users ORDER BY lastname DESC;

/* iii. Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false). 
 * Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)   
 */

ALTER TABLE vk.profiles ADD is_active BIT DEFAULT 1 NULL;

update profiles 
set 
	is_active = 0
where (birthday + interval 18 year) > now() 
;

-- iv. Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней)

delete from vk.messages
where created_at > now();

-- в моих данных не оказалось таких сообщений, добавила

INSERT INTO messages (`from_user_id`, `to_user_id`, `body`, `created_at`) VALUES
	('41', '41', 'Eius quo nesciunt voluptatibus cupiditate eaque repudiandae voluptatibus. Fugit perferendis saepe pariatur sed ad quia id libero. Et quasi modi in at neque nam.', '2081-12-26 19:25:29'),
	('42', '42', 'Veniam est voluptatum dolor impedit magnam. Enim quia adipisci magnam et quod neque explicabo.', '2092-05-03 01:42:04'),
	('43', '43', 'Inventore velit totam ad cupiditate dolores architecto magnam. Nam qui esse voluptate. Facere dicta sunt et voluptas cum enim assumenda.', '2089-07-08 00:35:41'),
	('44', '44', 'Enim illo sapiente laboriosam explicabo inventore qui natus. Quos vero earum dolores ut beatae. Quia ea optio omnis exercitationem. Quo id sint libero qui exercitationem minima.', '2029-06-27 12:06:47'),
	('45', '45', 'Eos est ut quidem vero voluptatibus dolorem. Voluptates praesentium sapiente est et asperiores praesentium aut odit. Iste qui ipsa nihil facilis repellat vel occaecati.', '2088-03-11 16:40:05'),
	('46', '46', 'Et optio eligendi laudantium. Ut nihil non nihil quisquam quibusdam esse sunt hic.', '2025-02-10 05:28:49'),
	('47', '47', 'Dignissimos eveniet recusandae magnam culpa sapiente a voluptatem. Sit voluptate qui omnis qui consequatur alias nostrum. Magni animi nostrum id eos. Voluptas repellendus autem sit fugiat.', '2981-01-26 14:32:03')
;

delete from vk.messages
where created_at > now();

/* v. Написать название темы курсового проекта (в комментарии). 
 * 
 * Тема: Модель хранения данных о договорной базе организации
 * Описание проекта: 
 * Тексты договоров нетиповые, содержат свои условия о предмете договора, порядке оплаты и поставки.
 * К организации предъявляются требования закупочной деятельности.
 * Сотрудникам сопровождения необходимо выполнять опреативный поиск действующих договоров с одинаковым предметом и контрагентом.
 * Руководству организации необходимо получать отчет о заключенных договорах за период, на какие суммы, сроки, кем подписано.
 */
