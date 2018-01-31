CREATE TABLE p1_category(
    cat_id varchar(12) PRIMARY KEY,
    cat_name varchar(255),
    created_at varchar(12),
    updated_at varchar(12)
);

create TABLE p1_items(
    item_id varchar(12) PRIMARY KEY,
    cat_id varchar(12),
    item_qunatity integer,
    item_price number(12,2),
    item_name varchar(255),
    created_at varchar(12),
    updated_at varchar(12)
    
);

create TABLE p1_sku_details(
    sku_id varchar(12) PRIMARY KEY,
    sku_qunatity integer,
    sku_name varchar(255),
    sku_price number(12,2),
    sku_manufacturing_price number(12,2),
    is_open ENUM('0','1'),
    created_at varchar(12),
    updated_at varchar(12)
    
);

CREATE table p1_sku_item(
    sku_id varchar(12),
    item_id varchar(12),
    item_quantity integer,
    PRIMARY key(sku_id,item_id)
)