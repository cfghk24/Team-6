-- 创建 event 表
CREATE TABLE event (
    event_id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    `desc` VARCHAR(255),  -- 使用反引号包裹保留字
    fee DOUBLE,
    mentor VARCHAR(255)
);

-- 创建 users 表
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    Dob DATE,
    Profession VARCHAR(255),
    district VARCHAR(255)
);

-- 创建 posts 表
CREATE TABLE posts (
    posts_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    date DATE,
    `like` INTEGER,      -- 使用反引号包裹保留字
    `desc` VARCHAR(255),  -- 使用反引号包裹保留字
    click INTEGER,
    shares INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- 创建 comment 表
CREATE TABLE comment (
    comment_id INTEGER PRIMARY KEY,
    posts_id INTEGER,
    user_id INTEGER,
    content VARCHAR(255),
    FOREIGN KEY (posts_id) REFERENCES posts(posts_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- 创建 event_users 表
CREATE TABLE event_users (
    event_id INTEGER,
    user_id INTEGER,
    enroll_time DATE,
    participent BOOLEAN,
    PRIMARY KEY (event_id, user_id),
    FOREIGN KEY (event_id) REFERENCES event(event_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);