CREATE TABLE cities (
    id VARCHAR(36) PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    country_id VARCHAR(60) NOT NULL,
    country_code VARCHAR(3) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (country_id) REFERENCES countries(id)
);