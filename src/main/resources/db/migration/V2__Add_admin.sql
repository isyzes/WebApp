insert into user (id, username, password, active)
    values (1, 'admin', '$2a$08$zmS/mKqNZYjtAYM7P3lxOevrYsWU06/4ZTTSno9BrL8IOhkBKe66.', true);

insert into user_role (user_id, roles)
    values (1, 'USER'), (1, 'ADMIN');