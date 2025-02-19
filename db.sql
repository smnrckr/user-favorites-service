create table
    favorite_list (
        id serial primary key,
        user_id integer not null,
        name varchar(255) not null
    );

create table
    favorite (
        id serial primary key,
        user_id integer not null,
        product_id integer not null,
        list_id integer not null constraint favorite_list_id___fk references favorite_list,
        constraint favorite_product_id_list_id_unique_key_pk unique (product_id, list_id)
    );

INSERT INTO favorite_list (user_id, name)
VALUES (1, 'ayakkabılar');

INSERT INTO favorite (user_id,list_id,product_id)
VALUES (1,1,1)



user_id 1
{
ayakkabı listesi {
    user_id
    product_id 1{
         ürün kodu
         ürün adı,
         ürün kodu,
         ürün fiyatı
    },

    product_id 2{
         ürün kodu
         ürün adı,
         ürün kodu,
         ürün fiyatı
    }
   
}
,
çanta listesi {
    user_id
    produc_id 1{
         ürün kodu
         ürün adı,
         ürün kodu,
         ürün fiyatı
    },
    produc_id 2{
         ürün kodu
         ürün adı,
         ürün kodu,
         ürün fiyatı
    },
     produc_id 3{
         ürün kodu
         ürün adı,
         ürün kodu,
         ürün fiyatı
    }
}
}
