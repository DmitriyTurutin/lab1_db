-- faculties
CREATE TABLE faculties (
    name VARCHAR(40) PRIMARY KEY NOT NULL
);

INSERT INTO faculties (name) VALUES ("ФН"), ("ИУ"), ("Э"), ("СГН");

-- departments
CREATE TABLE department (
    name VARCHAR(40) PRIMARY KEY NOT NULL, 
    facultie VARCHAR(40),
    FOREIGN KEY(facultie) references faculties(name) ON DELETE CASCADE
);

INSERT INTO department(name, facultie) VALUES ("ФН-11", "ФН"), ("ФН-1", "ФН"), ("ИУ-6", "ИУ"), ("ИУ-8", "ИУ"), ("Э-4", "Э"), ("СГН-1", "СГН"), ("СГН-2", "СГН");

-- first_names
CREATE TABLE first_names (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    first_name VARCHAR(40) NOT NULL
);

insert into first_names (first_name) values ('Bird');
insert into first_names (first_name) values ('Georgeta');
insert into first_names (first_name) values ('Francois');
insert into first_names (first_name) values ('Catlaina');
insert into first_names (first_name) values ('Jasper');
insert into first_names (first_name) values ('Lilias');
insert into first_names (first_name) values ('Gracia');
insert into first_names (first_name) values ('Steward');
insert into first_names (first_name) values ('Jordain');
insert into first_names (first_name) values ('Alejoa');
insert into first_names (first_name) values ('Trenton');
insert into first_names (first_name) values ('Myron');
insert into first_names (first_name) values ('Orran');
insert into first_names (first_name) values ('Tynan');
insert into first_names (first_name) values ('Jo-ann');
insert into first_names (first_name) values ('Guilbert');
insert into first_names (first_name) values ('Maryl');
insert into first_names (first_name) values ('Niel');
insert into first_names (first_name) values ('Roxie');
insert into first_names (first_name) values ('Milzie');
insert into first_names (first_name) values ('Felice');
insert into first_names (first_name) values ('Benn');
insert into first_names (first_name) values ('Clay');
insert into first_names (first_name) values ('Nicko');
insert into first_names (first_name) values ('Reinald');
insert into first_names (first_name) values ('Englebert');
insert into first_names (first_name) values ('Adriena');
insert into first_names (first_name) values ('Boycey');
insert into first_names (first_name) values ('Fifine');
insert into first_names (first_name) values ('Carce');
insert into first_names (first_name) values ('Ravid');
insert into first_names (first_name) values ('Aubrey');
insert into first_names (first_name) values ('Sidnee');
insert into first_names (first_name) values ('Lexine');
insert into first_names (first_name) values ('Octavia');
insert into first_names (first_name) values ('Vin');
insert into first_names (first_name) values ('Carey');
insert into first_names (first_name) values ('Stanford');
insert into first_names (first_name) values ('Ravid');
insert into first_names (first_name) values ('Claudetta');
insert into first_names (first_name) values ('Sarine');
insert into first_names (first_name) values ('Gray');
insert into first_names (first_name) values ('Marlee');
insert into first_names (first_name) values ('Rakel');
insert into first_names (first_name) values ('Melinda');
insert into first_names (first_name) values ('Emory');
insert into first_names (first_name) values ('Jens');
insert into first_names (first_name) values ('Marsiella');
insert into first_names (first_name) values ('Granville');
insert into first_names (first_name) values ('Billye');
insert into first_names (first_name) values ('Ginny');
insert into first_names (first_name) values ('Silvano');
insert into first_names (first_name) values ('Terrence');
insert into first_names (first_name) values ('Pepi');
insert into first_names (first_name) values ('Barnabas');
insert into first_names (first_name) values ('Arron');
insert into first_names (first_name) values ('Valerye');
insert into first_names (first_name) values ('Eddi');
insert into first_names (first_name) values ('Joann');
insert into first_names (first_name) values ('Erasmus');
insert into first_names (first_name) values ('Coop');
insert into first_names (first_name) values ('Alyssa');
insert into first_names (first_name) values ('Natal');
insert into first_names (first_name) values ('Luther');
insert into first_names (first_name) values ('Alessandra');
insert into first_names (first_name) values ('Alain');
insert into first_names (first_name) values ('Wenonah');
insert into first_names (first_name) values ('Sharai');
insert into first_names (first_name) values ('Miof mela');
insert into first_names (first_name) values ('Wald');
insert into first_names (first_name) values ('Tatum');
insert into first_names (first_name) values ('Harald');
insert into first_names (first_name) values ('Estele');
insert into first_names (first_name) values ('Hailee');
insert into first_names (first_name) values ('Ninon');
insert into first_names (first_name) values ('Sada');
insert into first_names (first_name) values ('Sly');
insert into first_names (first_name) values ('Thorsten');
insert into first_names (first_name) values ('Scottie');
insert into first_names (first_name) values ('Pancho');
insert into first_names (first_name) values ('Mitchel');
insert into first_names (first_name) values ('Lea');
insert into first_names (first_name) values ('Richmond');
insert into first_names (first_name) values ('Aili');
insert into first_names (first_name) values ('Peterus');
insert into first_names (first_name) values ('Saidee');
insert into first_names (first_name) values ('Gilli');
insert into first_names (first_name) values ('Marlena');
insert into first_names (first_name) values ('Galvin');
insert into first_names (first_name) values ('Modestine');
insert into first_names (first_name) values ('Dael');
insert into first_names (first_name) values ('Nancee');
insert into first_names (first_name) values ('Hewett');

-- last_names
CREATE TABLE last_names (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    last_name VARCHAR(40) NOT NULL
);

insert into last_names (last_name) values ('Muccino');
insert into last_names (last_name) values ('Karolczyk');
insert into last_names (last_name) values ('Abbati');
insert into last_names (last_name) values ('Leversha');
insert into last_names (last_name) values ('Spilling');
insert into last_names (last_name) values ('Schott');
insert into last_names (last_name) values ('Haggeth');
insert into last_names (last_name) values ('Orgee');
insert into last_names (last_name) values ('MacRonald');
insert into last_names (last_name) values ('Andreasson');
insert into last_names (last_name) values ('De Bell');
insert into last_names (last_name) values ('Gytesham');
insert into last_names (last_name) values ('Burnep');
insert into last_names (last_name) values ('Ivoshin');
insert into last_names (last_name) values ('Clother');
insert into last_names (last_name) values ('Woolbrook');
insert into last_names (last_name) values ('Chastney');
insert into last_names (last_name) values ('Nend');
insert into last_names (last_name) values ('Heakey');
insert into last_names (last_name) values ('Sheppard');
insert into last_names (last_name) values ('Niessen');
insert into last_names (last_name) values ('Coulling');
insert into last_names (last_name) values ('Walasik');
insert into last_names (last_name) values ('Olenchikov');
insert into last_names (last_name) values ('Bispham');
insert into last_names (last_name) values ('Jobson');
insert into last_names (last_name) values ('Rospars');
insert into last_names (last_name) values ('Possek');
insert into last_names (last_name) values ('Leving');
insert into last_names (last_name) values ('Pannett');
insert into last_names (last_name) values ('Winning');
insert into last_names (last_name) values ('Cluelow');
insert into last_names (last_name) values ('Clamp');
insert into last_names (last_name) values ('Eric');
insert into last_names (last_name) values ('Allsopp');
insert into last_names (last_name) values ('Pues');
insert into last_names (last_name) values ('Vouls');
insert into last_names (last_name) values ('Paler');
insert into last_names (last_name) values ('Gaveltone');
insert into last_names (last_name) values ('Keming');
insert into last_names (last_name) values ('Drew-Clifton');
insert into last_names (last_name) values ('McAnellye');
insert into last_names (last_name) values ('Galgey');
insert into last_names (last_name) values ('Brahan');
insert into last_names (last_name) values ('Genever');
insert into last_names (last_name) values ('Napper');
insert into last_names (last_name) values ('Thickpenny');
insert into last_names (last_name) values ('Tomadoni');
insert into last_names (last_name) values ('Rulf');
insert into last_names (last_name) values ('Van Oord');
insert into last_names (last_name) values ('Winman');
insert into last_names (last_name) values ('Yanne');
insert into last_names (last_name) values ('Sutlieff');
insert into last_names (last_name) values ('Denzilow');
insert into last_names (last_name) values ('Swash');
insert into last_names (last_name) values ('McGrill');
insert into last_names (last_name) values ('Dobbin');
insert into last_names (last_name) values ('Chalfain');
insert into last_names (last_name) values ('St. Louis');
insert into last_names (last_name) values ('Haime');
insert into last_names (last_name) values ('Elies');
insert into last_names (last_name) values ('Fussen');
insert into last_names (last_name) values ('Byfield');
insert into last_names (last_name) values ('Matthaus');
insert into last_names (last_name) values ('Rosling');
insert into last_names (last_name) values ('Dobbins');
insert into last_names (last_name) values ('McLaine');
insert into last_names (last_name) values ('Petegrew');
insert into last_names (last_name) values ('MacAndie');
insert into last_names (last_name) values ('Meni');
insert into last_names (last_name) values ('Fullegar');
insert into last_names (last_name) values ('Pablo');
insert into last_names (last_name) values ('McIlhagga');
insert into last_names (last_name) values ('Inchcomb');
insert into last_names (last_name) values ('Rylands');
insert into last_names (last_name) values ('Dedham');
insert into last_names (last_name) values ('Elman');
insert into last_names (last_name) values ('Slocomb');
insert into last_names (last_name) values ('Weaben');
insert into last_names (last_name) values ('Fayerman');
insert into last_names (last_name) values ('Lengthorn');
insert into last_names (last_name) values ('Shepeard');
insert into last_names (last_name) values ('Hawick');
insert into last_names (last_name) values ('Breeder');
insert into last_names (last_name) values ('Bannell');
insert into last_names (last_name) values ('McSpirron');
insert into last_names (last_name) values ('Huge');
insert into last_names (last_name) values ('Fone');
insert into last_names (last_name) values ('Baudassi');
insert into last_names (last_name) values ('Albers');
insert into last_names (last_name) values ('Tafani');
insert into last_names (last_name) values ('Petticrow');
insert into last_names (last_name) values ('Chancelier');
insert into last_names (last_name) values ('Champniss');
insert into last_names (last_name) values ('LLelweln');
insert into last_names (last_name) values ('Birney');
insert into last_names (last_name) values ('Zylberdik');
insert into last_names (last_name) values ('Perel');
insert into last_names (last_name) values ('Tillard');

-- groups
CREATE TABLE groups (
    name VARCHAR(40) PRIMARY KEY NOT NULL,
    dep VARCHAR(40),
    FOREIGN KEY (dep) REFERENCES department(name) ON DELETE CASCADE
);

INSERT INTO groups (name, dep) VALUES ("ФН-11 33Б", "ФН-11"), ("ФН11 23Д", "ФН-11"), ("ФН-1 33", "ФН-1"), ("ИУ-8 11", "ИУ-8"), ("Э-4 42", "Э-4"), ("СГН-1 12", "СГН-1"), ("СГН-1 22", "СГН-1"), ("ИУ-6 64", "ИУ-6");

-- students
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR (40) NOT NULL,
    group_i VARCHAR(40),
    FOREIGN KEY (group_i) REFERENCES groups(name) ON DELETE CASCADE
);

INSERT INTO students (first_name, last_name, group_i)
    values ( (SELECT first_name FROM first_names order by RANDOM() LIMIT 1),
             (SELECT last_name FROM last_names order by RANDOM() LIMIT 1),
             (SELECT name FROM groups order by RANDOM() LIMIT 1)
);

INSERT INTO students (first_name, last_name, group_i)
    values ( (SELECT first_name FROM first_names order by RANDOM() LIMIT 1),
             (SELECT last_name FROM last_names order by RANDOM() LIMIT 1),
             (SELECT name FROM groups order by RANDOM() LIMIT 1)
);

INSERT INTO students (first_name, last_name, group_i)
    values ( (SELECT first_name FROM first_names order by RANDOM() LIMIT 1),
             (SELECT last_name FROM last_names order by RANDOM() LIMIT 1),
             (SELECT name FROM groups order by RANDOM() LIMIT 1)
);

INSERT INTO students (first_name, last_name, group_i)
    values ( (SELECT first_name FROM first_names order by RANDOM() LIMIT 1),
             (SELECT last_name FROM last_names order by RANDOM() LIMIT 1),
             (SELECT name FROM groups order by RANDOM() LIMIT 1)
);

INSERT INTO students (first_name, last_name, group_i)
    values ( (SELECT first_name FROM first_names order by RANDOM() LIMIT 1),
             (SELECT last_name FROM last_names order by RANDOM() LIMIT 1),
             (SELECT name FROM groups order by RANDOM() LIMIT 1)
);

INSERT INTO students (first_name, last_name, group_i)
    values ( (SELECT first_name FROM first_names order by RANDOM() LIMIT 1),
             (SELECT last_name FROM last_names order by RANDOM() LIMIT 1),
             (SELECT name FROM groups order by RANDOM() LIMIT 1)
);

INSERT INTO students (first_name, last_name, group_i)
    values ( (SELECT first_name FROM first_names order by RANDOM() LIMIT 1),
             (SELECT last_name FROM last_names order by RANDOM() LIMIT 1),
             (SELECT name FROM groups order by RANDOM() LIMIT 1)
);

INSERT INTO students (first_name, last_name, group_i)
    values ( (SELECT first_name FROM first_names order by RANDOM() LIMIT 1),
             (SELECT last_name FROM last_names order by RANDOM() LIMIT 1),
             (SELECT name FROM groups order by RANDOM() LIMIT 1)
);

INSERT INTO students (first_name, last_name, group_i)
    values ( (SELECT first_name FROM first_names order by RANDOM() LIMIT 1),
             (SELECT last_name FROM last_names order by RANDOM() LIMIT 1),
             (SELECT name FROM groups order by RANDOM() LIMIT 1)
);

INSERT INTO students (first_name, last_name, group_i)
    values ( (SELECT first_name FROM first_names order by RANDOM() LIMIT 1),
             (SELECT last_name FROM last_names order by RANDOM() LIMIT 1),
             (SELECT name FROM groups order by RANDOM() LIMIT 1)
);

