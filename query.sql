-- Вивести назви дорам в яких зіграла акторка Park Ha-na
select kdrama_name
from kdramas join kdramas_actor
on kdramas.kdrama_id = kdramas_actor.kdrama_id
join actors
on kdramas_actor.actor_id = actors.actor_id
where actor_name = 'Park Ha-na';

-- Вивести усі жанри дорами Glitch
select genre_name
from kdramas_genre join kdramas
on kdramas_genre.kdrama_id = kdramas.kdrama_id
where kdrama_name = 'Glitch';


-- Вивести акторів, які зіграли в дорамах, загальна тривалість яких більше ніж 17 годин
select distinct(actor_name)
from kdramas join kdramas_actor
on kdramas.kdrama_id = kdramas_actor.kdrama_id
join actors
on kdramas_actor.actor_id = actors.actor_id
where number_of_episodes * episode_run_time > 1020;