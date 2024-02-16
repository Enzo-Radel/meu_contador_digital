CREATE TABLE movementTypes (
    id VARCHAR(36) PRIMARY KEY,
    name VARCHAR(150)
);

CREATE TABLE timePeriods (
    id VARCHAR(36) PRIMARY KEY,
    `month` TINYINT,
    `year` INT,
    balance DOUBLE
);

CREATE TABLE movements (
    id VARCHAR(36) PRIMARY KEY,
    `description` VARCHAR(255),
    `inOut` ENUM('IN','OUT'),
    `value` DOUBLE,
    movementTypeId VARCHAR(36),
    timePeriodId VARCHAR(36),

    FOREIGN KEY movementTypefk (movementTypeId) REFERENCES movementTypes(id),
    FOREIGN KEY timePeriodfk (timePeriodId) REFERENCES timePeriods(id)
);