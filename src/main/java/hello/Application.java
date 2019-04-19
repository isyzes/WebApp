package hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
//D:/My projects/WebApp/files
// /home/my_hp/IdeaProjects/WebApp/files

/*
Hibernate: drop table if exists hibernate_sequence
Hibernate: drop table if exists message
Hibernate: drop table if exists user
Hibernate: drop table if exists user_role

Hibernate: create table hibernate_sequence (next_val bigint) engine=MyISAM
Hibernate: insert into hibernate_sequence values ( 1 )
Hibernate: insert into hibernate_sequence values ( 1 )
Hibernate: create table message (id integer not null, filename varchar(255), teg varchar(255), text varchar(255), user_id bigint, primary key (id)) engine=MyISAM
Hibernate: create table user (id bigint not null, activation_code varchar(255), active bit not null, email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=MyISAM
Hibernate: create table user_role (user_id bigint not null, roles varchar(255)) engine=MyISAM
Hibernate: alter table message add constraint FKb3y6etti1cfougkdr0qiiemgv foreign key (user_id) references user (id)
Hibernate: alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
 */