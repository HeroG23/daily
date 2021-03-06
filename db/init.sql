CREATE TABLE week_user(
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(40),
    username VARCHAR(40),
    password VARCHAR(40),
    first_name TEXT,
    last_name TEXT,
    phone_num VARCHAR(20),
    current_town, VARCHAR(100),
    profile_pic VARCHAR(3000)
);

CREATE TABLE activities(
    activity_id SERIAL PRIMARY KEY,
    activity_name TEXT,
    times_a_week INT,
    activity_pic VARCHAR(3000),
    activity_latitude FLOAT(20) DEFAULT NULL,
    activity_longitude FLOAT(20) DEFAULT NULL,
    user_id REFERENCES week_user(user_id) ON DELETE CASCADE
);

CREATE TABLE reminder(
    reminder_id SERIAL PRIMARY KEY,
    user_id REFERENCES week_user(user_id) ON DELETE CASCADE,
    activity_id REFERENCES activities(activity_id) ON DELETE CASCADE,
    created_at DATETIME,
    content TEXT
);