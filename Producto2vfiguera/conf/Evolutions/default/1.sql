# --- First database schema

# --- !Ups

create table restaurant (
  id                        bigint not null,
  name                      varchar(255),
  constraint pk_restaurant primary key (id))
;

create table pedidos (
  id                        bigint not null,
  name                      varchar(255),
  tipo                      varchar(255),
  cantidad                  bigint not null,
  precio                    bigint not null,
  restaurant_id                bigint,
  constraint pk_pedidos primary key (id))
;

create sequence restaurant_seq start with 1000;

create sequence pedidos_seq start with 1000;

alter table pedidos add constraint fk_pedidos_restaurant_1 foreign key (restaurant_id) references restaurant (id) on delete restrict on update restrict;
create index ix_restaurant_pedidos_1 on pedidos (restaurant_id);


# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists restaurant;

drop table if exists pedidos;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists restaurant_seq;

drop sequence if exists pedidos_seq;

