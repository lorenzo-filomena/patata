DROP TABLE IF EXISTS T_MAINTAINER;
DROP TABLE IF EXISTS TASK;

CREATE TABLE TASK (

    ID integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	Title CHAR(30) NOT NULL,
	Description TEXT,
	Durate INT NOT NULL,
	TaskType CHAR(1) NOT NULL,
    Done BIT DEFAULT 0,
    CONSTRAINT CHK_Pri CHECK (TaskType=='I' OR TaskType=='E' OR TaskType=='S' OR TaskType=='C')
);

CREATE TABLE T_MAINTAINER (
	T_ID INT NOT NULL,
	Maintainer CHAR(50) NOT NULL,
    PRIMARY KEY (T_ID,Maintainer),
    FOREIGN KEY (T_ID)
        REFERENCES TASK(ID)
        ON UPDATE CASCADE
);

-- 💻 ⚡ 🎮 🍀
