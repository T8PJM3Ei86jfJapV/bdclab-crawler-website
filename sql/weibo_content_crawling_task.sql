CREATE DATABASE IF NOT EXISTS db4testing
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

USE db4testing;

/*
DROP TABLE IF EXISTS weibo_content_crawling_task;
*/
CREATE TABLE weibo_content_crawling_task (
    task_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    submit_id CHAR(20) NOT NULL,
    project_name VARCHAR(128),
    keyword VARCHAR(128) NOT NULL,
    province VARCHAR(16),
    city VARCHAR(32),
    start_time CHAR(16),
    end_time CHAR(16),
    time_interval INT(4),
    creator VARCHAR(16),
    task_status TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    output_file_name VARCHAR(128),
    PRIMARY KEY (task_id),
    INDEX (submit_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
