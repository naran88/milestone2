-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-02-12 09:36:15.817

-- tables
-- Table: Accessories
CREATE TABLE Accessories (
    Accessories_id varchar(50)  NOT NULL,
    name_of_accessories varchar(50)  NOT NULL,
    qty float  NOT NULL,
    total_price float  NOT NULL,
    CONSTRAINT Accessories_pk PRIMARY KEY  (Accessories_id)
);

-- Table: Men
CREATE TABLE Men (
    men_id varchar(50)  NOT NULL,
    product_name varchar(50)  NOT NULL,
    qty int  NOT NULL,
    price int  NOT NULL,
    Accessories_Accessories_id varchar(50)  NOT NULL,
    CONSTRAINT Men_pk PRIMARY KEY  (men_id)
);

-- Table: bags
CREATE TABLE bags (
    bags_id varchar(50)  NOT NULL,
    Name varchar(50)  NOT NULL,
    Price float  NOT NULL,
    brand varchar(50)  NOT NULL,
    color varchar(50)  NOT NULL,
    Accessories_Accessories_id varchar(50)  NOT NULL,
    CONSTRAINT bags_pk PRIMARY KEY  (bags_id)
);

-- Table: beauty_product
CREATE TABLE beauty_product (
    beauty_id varchar(50)  NOT NULL,
    name varchar(50)  NOT NULL,
    brand varchar(50)  NOT NULL,
    price float  NOT NULL,
    Accessories_Accessories_id varchar(50)  NOT NULL,
    CONSTRAINT beauty_product_pk PRIMARY KEY  (beauty_id)
);

-- Table: house
CREATE TABLE house (
    house_id varchar(50)  NOT NULL,
    product_name varchar(50)  NOT NULL,
    qty int  NOT NULL,
    price varchar(50)  NOT NULL,
    Accessories_Accessories_id varchar(50)  NOT NULL,
    CONSTRAINT house_pk PRIMARY KEY  (house_id)
);

-- Table: jewelry
CREATE TABLE jewelry (
    jewelry_id int  NOT NULL,
    jewelry_name varchar(50)  NOT NULL,
    qty int  NOT NULL,
    price float  NOT NULL,
    brand varchar(50)  NOT NULL,
    Accessories_Accessories_id varchar(50)  NOT NULL,
    CONSTRAINT jewelry_pk PRIMARY KEY  (jewelry_id)
);

-- Table: kids
CREATE TABLE kids (
    kids_id varchar(50)  NOT NULL,
    product_name varchar(50)  NOT NULL,
    brand varchar(50)  NOT NULL,
    qty int  NOT NULL,
    price float  NOT NULL,
    Accessories_Accessories_id varchar(50)  NOT NULL,
    CONSTRAINT kids_pk PRIMARY KEY  (kids_id)
);

-- Table: shoes
CREATE TABLE shoes (
    shoes_id varchar(50)  NOT NULL,
    name varchar(50)  NOT NULL,
    brand varchar(50)  NOT NULL,
    qty int  NOT NULL,
    price float  NOT NULL,
    Accessories_Accessories_id varchar(50)  NOT NULL,
    CONSTRAINT shoes_pk PRIMARY KEY  (shoes_id)
);

-- Table: women
CREATE TABLE women (
    women_id varchar(50)  NOT NULL,
    product_name varchar(50)  NOT NULL,
    qty int  NOT NULL,
    price float  NOT NULL,
    Accessories_Accessories_id varchar(50)  NOT NULL,
    CONSTRAINT women_pk PRIMARY KEY  (women_id)
);

-- foreign keys
-- Reference: Men_Accessories (table: Men)
ALTER TABLE Men ADD CONSTRAINT Men_Accessories
    FOREIGN KEY (Accessories_Accessories_id)
    REFERENCES Accessories (Accessories_id);

-- Reference: bags_Accessories (table: bags)
ALTER TABLE bags ADD CONSTRAINT bags_Accessories
    FOREIGN KEY (Accessories_Accessories_id)
    REFERENCES Accessories (Accessories_id);

-- Reference: beauty_product_Accessories (table: beauty_product)
ALTER TABLE beauty_product ADD CONSTRAINT beauty_product_Accessories
    FOREIGN KEY (Accessories_Accessories_id)
    REFERENCES Accessories (Accessories_id);

-- Reference: house_Accessories (table: house)
ALTER TABLE house ADD CONSTRAINT house_Accessories
    FOREIGN KEY (Accessories_Accessories_id)
    REFERENCES Accessories (Accessories_id);

-- Reference: jewelry_Accessories (table: jewelry)
ALTER TABLE jewelry ADD CONSTRAINT jewelry_Accessories
    FOREIGN KEY (Accessories_Accessories_id)
    REFERENCES Accessories (Accessories_id);

-- Reference: kids_Accessories (table: kids)
ALTER TABLE kids ADD CONSTRAINT kids_Accessories
    FOREIGN KEY (Accessories_Accessories_id)
    REFERENCES Accessories (Accessories_id);

-- Reference: shoes_Accessories (table: shoes)
ALTER TABLE shoes ADD CONSTRAINT shoes_Accessories
    FOREIGN KEY (Accessories_Accessories_id)
    REFERENCES Accessories (Accessories_id);

-- Reference: women_Accessories (table: women)
ALTER TABLE women ADD CONSTRAINT women_Accessories
    FOREIGN KEY (Accessories_Accessories_id)
    REFERENCES Accessories (Accessories_id);

-- End of file.

