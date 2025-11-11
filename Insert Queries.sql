-- INSERTS FOR vehicle_make
INSERT INTO vehicle_make VALUES (1, 'Tata Motors', 'active');
INSERT INTO vehicle_make VALUES (2, 'Mahindra & Mahindra', 'active');
INSERT INTO vehicle_make VALUES (3, 'Maruti Suzuki', 'active');
INSERT INTO vehicle_make VALUES (4, 'Hyundai India', 'active');
INSERT INTO vehicle_make VALUES (5, 'Honda Cars India', 'inactive');
INSERT INTO vehicle_make VALUES (6, 'Toyota India', 'active');
INSERT INTO vehicle_make VALUES (7, 'Kia Motors', 'active');
INSERT INTO vehicle_make VALUES (8, 'Renault India', 'inactive');
INSERT INTO vehicle_make VALUES (9, 'Nissan India', 'active');
INSERT INTO vehicle_make VALUES (10, 'Volkswagen India', 'inactive');
INSERT INTO vehicle_make VALUES (11, 'Skoda India', 'active');
INSERT INTO vehicle_make VALUES (12, 'MG Motor', 'active');
INSERT INTO vehicle_make VALUES (13, 'Ford India', 'inactive');
INSERT INTO vehicle_make VALUES (14, 'Isuzu India', 'active');
INSERT INTO vehicle_make VALUES (15, 'Jeep India', 'active');

-- INSERTS FOR vehicle_model
INSERT INTO vehicle_model VALUES (1, 'Nexon', 1, 'active');
INSERT INTO vehicle_model VALUES (2, 'Thar', 2, 'active');
INSERT INTO vehicle_model VALUES (3, 'Swift', 3, 'active');
INSERT INTO vehicle_model VALUES (4, 'Creta', 4, 'active');
INSERT INTO vehicle_model VALUES (5, 'City', 5, 'inactive');
INSERT INTO vehicle_model VALUES (6, 'Innova', 6, 'active');
INSERT INTO vehicle_model VALUES (7, 'Seltos', 7, 'active');
INSERT INTO vehicle_model VALUES (8, 'Kwid', 8, 'active');
INSERT INTO vehicle_model VALUES (9, 'Magnite', 9, 'inactive');
INSERT INTO vehicle_model VALUES (10, 'Polo', 10, 'active');
INSERT INTO vehicle_model VALUES (11, 'Rapid', 11, 'active');
INSERT INTO vehicle_model VALUES (12, 'Hector', 12, 'inactive');
INSERT INTO vehicle_model VALUES (13, 'EcoSport', 13, 'inactive');
INSERT INTO vehicle_model VALUES (14, 'D-Max', 14, 'active');
INSERT INTO vehicle_model VALUES (15, 'Compass', 15, 'active');

-- INSERTS FOR region
INSERT INTO region VALUES (1, 'North');
INSERT INTO region VALUES (2, 'South');
INSERT INTO region VALUES (3, 'East');
INSERT INTO region VALUES (4, 'West');


-- INSERTS FOR state
INSERT INTO state VALUES (1, 'Tamil Nadu', 2);
INSERT INTO state VALUES (2, 'Maharashtra', 4);
INSERT INTO state VALUES (3, 'Delhi', 1);
INSERT INTO state VALUES (4, 'Karnataka', 2);
INSERT INTO state VALUES (5, 'West Bengal', 3);
INSERT INTO state VALUES (6, 'Kerala', 2);
INSERT INTO state VALUES (7, 'Uttar Pradesh', 1);
INSERT INTO state VALUES (8, 'Bihar', 3);
INSERT INTO state VALUES (9, 'Gujarat', 4);
INSERT INTO state VALUES (10, 'Rajasthan', 1);
INSERT INTO state VALUES (11, 'Punjab', 1);
INSERT INTO state VALUES (12, 'Haryana', 1);
INSERT INTO state VALUES (13, 'Andhra Pradesh', 2);
INSERT INTO state VALUES (14, 'Odisha', 3);

-- INSERTS FOR city
INSERT INTO city VALUES (1, 'Chennai', 1);
INSERT INTO city VALUES (2, 'Mumbai', 2);
INSERT INTO city VALUES (3, 'Delhi', 3);
INSERT INTO city VALUES (4, 'Bangalore', 4);
INSERT INTO city VALUES (5, 'Kolkata', 5);
INSERT INTO city VALUES (6, 'Kochi', 6);
INSERT INTO city VALUES (7, 'Lucknow', 7);
INSERT INTO city VALUES (8, 'Patna', 8);
INSERT INTO city VALUES (9, 'Ahmedabad', 9);
INSERT INTO city VALUES (10, 'Jaipur', 10);
INSERT INTO city VALUES (11, 'Amritsar', 11);
INSERT INTO city VALUES (12, 'Gurgaon', 12);
INSERT INTO city VALUES (13, 'Vijayawada', 13);
INSERT INTO city VALUES (14, 'Bhubaneswar', 14);


-- INSERTS FOR vehicle_color
INSERT INTO vehicle_color VALUES (1, 'Red');
INSERT INTO vehicle_color VALUES (2, 'Blue');
INSERT INTO vehicle_color VALUES (3, 'Green');
INSERT INTO vehicle_color VALUES (4, 'Black');
INSERT INTO vehicle_color VALUES (5, 'White');

-- INSERTS FOR vehicle_body
INSERT INTO vehicle_body VALUES (1, 'Sedan');
INSERT INTO vehicle_body VALUES (2, 'SUV');
INSERT INTO vehicle_body VALUES (3, 'Hatchback');
INSERT INTO vehicle_body VALUES (4, 'Convertible');
INSERT INTO vehicle_body VALUES (5, 'Coupe');

-- INSERTS FOR vehicle_category
INSERT INTO vehicle_category VALUES (1, 'Private');
INSERT INTO vehicle_category VALUES (2, 'Commercial');
INSERT INTO vehicle_category VALUES (3, 'Luxury');
INSERT INTO vehicle_category VALUES (4, 'Transport');
INSERT INTO vehicle_category VALUES (5, 'Tourist');

-- INSERTS FOR product_config
INSERT INTO product_config VALUES (1, 'Standard Plan', 'Comprehensive', 4500.00);
INSERT INTO product_config VALUES (2, 'Economy Plan', 'TPL', 3200.00);
INSERT INTO product_config VALUES (3, 'Premium Plan', 'Both', 8000.00);
INSERT INTO product_config VALUES (4, 'Urban Plus', 'Comprehensive', 7000.00);
INSERT INTO product_config VALUES (5, 'Rural Saver', 'TPL', 2800.00);

-- INSERTS FOR lov_data
INSERT INTO lov_data VALUES (1, 'MaritalStatus', 'Single');
INSERT INTO lov_data VALUES (2, 'MaritalStatus', 'Married');
INSERT INTO lov_data VALUES (3, 'Education', 'Graduate');
INSERT INTO lov_data VALUES (4, 'Education', 'Post-Graduate');
INSERT INTO lov_data VALUES (5, 'Education', 'Diploma');



-- INSERTS FOR user_personal_info
INSERT INTO user_personal_info VALUES (1, 'Customer', 'Ravi', 'Kumar', 'Male', '1995-06-15', 'ravi.kumar@example.com', '9876543210', '12 MG Road, Chennai', 1, 1, 1, 123456789012, 1, 'active');
INSERT INTO user_personal_info VALUES (2, 'Customer', 'Anjali', 'Verma', 'Female', '1990-02-20', 'anjali.verma@example.com', '9876543211', '88 Park Street, Kolkata', 5, 5, 1, 234567890123, 1, 'active');
INSERT INTO user_personal_info VALUES (3, 'Customer', 'Vikram', 'Singh', 'Male', '1988-09-10', 'vikram.singh@example.com', '9876543212', '22 Residency Rd, Bangalore', 4, 4, 1, 345678901234, 1, 'inactive');
INSERT INTO user_personal_info VALUES (4, 'Customer', 'Neha', 'Sharma', 'Female', '1993-12-05', 'neha.sharma@example.com', '9876543213', '44 MI Lane, Delhi', 3, 3, 1, 456789012345, 1, 'active');
INSERT INTO user_personal_info VALUES (5, 'Customer', 'Amit', 'Patel', 'Male', '1992-03-11', 'amit.patel@example.com', '9876543214', '20 Ring Road, Ahmedabad', 9, 9, 1, 567890123456, 1, 'active');
INSERT INTO user_personal_info VALUES (6, 'Customer', 'Deepa', 'Joshi', 'Female', '1987-07-19', 'deepa.joshi@example.com', '9876543215', '32 Sector 18, Noida', 7, 7, 1, 678901234567, 1, 'active');
INSERT INTO user_personal_info VALUES (7, 'Customer', 'Rahul', 'Mishra', 'Male', '1991-01-25', 'rahul.mishra@example.com', '9876543216', '70 Rajaji Nagar, Bengaluru', 4, 4, 1, 789012345678, 1, 'active');
INSERT INTO user_personal_info VALUES (8, 'Customer', 'Sneha', 'Menon', 'Female', '1985-04-22', 'sneha.menon@example.com', '9876543217', '11 MG Road, Kochi', 6, 6, 1, 890123456789, 1, 'inactive');
INSERT INTO user_personal_info VALUES (9, 'Customer', 'Arjun', 'Deshmukh', 'Male', '1994-11-08', 'arjun.deshmukh@example.com', '9876543218', '25 Andheri East, Mumbai', 2, 2, 1, 901234567890, 1, 'active');
INSERT INTO user_personal_info VALUES (10, 'Customer', 'Meena', 'Pillai', 'Female', '1996-08-30', 'meena.pillai@example.com', '9876543219', '17 Kowdiar, Thiruvananthapuram', 6, 6, 1, 912345678901, 1, 'active');

-- INSERTS FOR login_user
INSERT INTO login_user VALUES (1, 'pass1234',  1, 'Customer', 'active');
INSERT INTO login_user VALUES (2, 'pass2345',  2, 'Customer', 'active');
INSERT INTO login_user VALUES (3, 'pass3456',  3, 'Customer', 'inactive');
INSERT INTO login_user VALUES (4, 'pass4567',  4, 'Customer', 'active');
INSERT INTO login_user VALUES (5, 'pass5678',  5, 'Customer', 'active');
INSERT INTO login_user VALUES (6, 'pass6789',  1, 'Customer', 'active');
INSERT INTO login_user VALUES (7, 'pass7890',  2, 'Customer', 'active');
INSERT INTO login_user VALUES (8, 'pass8901',  3, 'Customer', 'inactive');
INSERT INTO login_user VALUES (9, 'pass9012', 4, 'Customer', 'active');
INSERT INTO login_user VALUES (10, 'pass0123', 5, 'Customer', 'active');

-- INSERTS FOR broker_info
INSERT INTO broker_info VALUES (1, 'Suresh Babu', 'SecureBrokers Pvt Ltd', '101 GST Road, Chennai', 'active');
INSERT INTO broker_info VALUES (2, 'Priya Mehta', 'Shield Insurance', '55 Nariman Point, Mumbai', 'active');
INSERT INTO broker_info VALUES (3, 'Alok Reddy', 'CoverSure India', '78 Brigade Road, Bangalore', 'inactive');
INSERT INTO broker_info VALUES (4, 'Divya Kapoor', 'MaxPolicy Agency', '19 CP Circle, Delhi', 'active');
INSERT INTO broker_info VALUES (5, 'Rajan Desai', 'TrustBrokers LLP', '16 CG Road, Ahmedabad', 'active');

-- INSERTS FOR quote_info
INSERT INTO quote_info VALUES (1, 1, 1, 1, '2024-06-01', 5200.00, 'active');
INSERT INTO quote_info VALUES (2, 2, 3, 2, '2024-06-03', 3400.00, 'active');
INSERT INTO quote_info VALUES (3, 3, 5, 3, '2024-06-05', 7900.00, 'inactive');
INSERT INTO quote_info VALUES (4, 4, 7, 4, '2024-06-07', 7100.00, 'active');
INSERT INTO quote_info VALUES (5, 5, 9, 5, '2024-06-09', 2950.00, 'active');

-- INSERTS FOR premium_config
INSERT INTO premium_config VALUES (1, 1, 18.0, 2.5);
INSERT INTO premium_config VALUES (2, 2, 12.5, 1.5);
INSERT INTO premium_config VALUES (3, 3, 15.0, 3.0);
INSERT INTO premium_config VALUES (4, 4, 10.0, 2.0);
INSERT INTO premium_config VALUES (5, 5, 8.0, 1.0);

-- INSERTS FOR premium_summary
INSERT INTO premium_summary VALUES (1, 1, 4500.00, 810.00, 5310.00);
INSERT INTO premium_summary VALUES (2, 2, 3200.00, 400.00, 3600.00);
INSERT INTO premium_summary VALUES (3, 3, 8000.00, 1200.00, 9200.00);
INSERT INTO premium_summary VALUES (4, 4, 7000.00, 950.00, 7950.00);
INSERT INTO premium_summary VALUES (5, 5, 2800.00, 560.00, 3360.00);
