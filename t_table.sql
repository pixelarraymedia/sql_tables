

CREATE TABLE IF NOT EXISTS TeaTable
(
    uid INT AUTO_INCREMENT,
    dt DATETIME,
    s VARCHAR(100),
    
    PRIMARY KEY(uid)
);

INSERT INTO TeaTable ( dt, s ) VALUES 
( NOW(), 'test msg 2 ' );


SELECT * FROM TeaTable ORDER BY dt, s desc


