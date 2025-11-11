CREATE DATABASE insurance;
use insurance;

CREATE TABLE vehicle_make (
    make_id INT PRIMARY KEY,
    make_desc VARCHAR(100) NOT NULL,
    status VARCHAR(10) CHECK (status IN ('active', 'inactive'))
);

CREATE TABLE vehicle_model (
    model_id INT PRIMARY KEY,
    model_desc VARCHAR(100) NOT NULL,
    make_id INT,
    status VARCHAR(10) CHECK (status IN ('active', 'inactive')),
    FOREIGN KEY (make_id) REFERENCES vehicle_make(make_id)
);

CREATE TABLE region (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(100)
);


CREATE TABLE state (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(100),
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES region(region_id)
);

CREATE TABLE city (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(100),
    state_id INT,
    FOREIGN KEY (state_id) REFERENCES state(state_id)
);

CREATE TABLE vehicle_color (
    color_id INT PRIMARY KEY,
    color_name VARCHAR(50)
);



CREATE TABLE vehicle_body (
    body_id INT PRIMARY KEY,
    body_type VARCHAR(50)
);

CREATE TABLE vehicle_category (
    category_id INT PRIMARY KEY,
    category_type VARCHAR(50)
);

CREATE TABLE product_config (
    config_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    coverage_type VARCHAR(20) CHECK (coverage_type IN ('Comprehensive', 'TPL', 'Both')),
    base_premium DECIMAL(10,2)
);

CREATE TABLE user_personal_info (
    user_id INT PRIMARY KEY,
    usertype VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    dob DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    addr1 VARCHAR(100),
    city INT,
    state INT,
    country INT,
    national_id BIGINT NOT NULL,
    nationality INT NOT NULL,
    status VARCHAR(10) CHECK (status IN ('active', 'inactive'))
);

CREATE TABLE login_user (
    login_id INT PRIMARY KEY,
    password VARCHAR(255),
    user_id INT,
    usertype VARCHAR(50) NOT NULL,
    status VARCHAR(10) CHECK (status IN ('active', 'inactive')),
    FOREIGN KEY (user_id) REFERENCES user_personal_info(user_id)
);

CREATE TABLE broker_info (
    broker_id INT PRIMARY KEY,
    broker_name VARCHAR(100),
    broker_org_name VARCHAR(100),
    address VARCHAR(150),
    status VARCHAR(10) CHECK (status IN ('active', 'inactive'))
);

CREATE TABLE quote_info (
    quote_id INT PRIMARY KEY,
    user_id INT,
    vehicle_id INT,
    config_id INT,
    quote_date DATE,
    final_premium DECIMAL(10,2),
    status VARCHAR(10) CHECK (status IN ('active', 'inactive')),
    FOREIGN KEY (user_id) REFERENCES user_personal_info(user_id),
    FOREIGN KEY (config_id) REFERENCES product_config(config_id)
);

CREATE TABLE premium_config (
    premium_id INT PRIMARY KEY,
    config_id INT,
    tax_rate DECIMAL(5,2),
    surcharge DECIMAL(5,2),
    FOREIGN KEY (config_id) REFERENCES product_config(config_id)
);

CREATE TABLE premium_summary (
    summary_id INT PRIMARY KEY,
    quote_id INT,
    base_premium DECIMAL(10,2),
    tax_amount DECIMAL(10,2),
    total_premium DECIMAL(10,2),
    FOREIGN KEY (quote_id) REFERENCES quote_info(quote_id)
);

CREATE TABLE lov_data (
    lov_id INT PRIMARY KEY,
    lov_type VARCHAR(100),
    lov_value VARCHAR(100)
);
