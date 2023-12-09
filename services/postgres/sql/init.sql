CREATE USER app_user WITH PASSWORD 'password';

CREATE TABLE president (
    id serial primary key,
    display_name character varying(255)
);

INSERT INTO president(display_name) VALUES('George Washington');
INSERT INTO president(display_name) VALUES('John Adams');
INSERT INTO president(display_name) VALUES('Thomas Jeffersion');
INSERT INTO president(display_name) VALUES('James Madison');
INSERT INTO president(display_name) VALUES('James Monroe');
INSERT INTO president(display_name) VALUES('John Quincy Adams');
INSERT INTO president(display_name) VALUES('Andrew Jackson');
INSERT INTO president(display_name) VALUES('Martin Van Buren');
INSERT INTO president(display_name) VALUES('William Henry Harrison');
INSERT INTO president(display_name) VALUES('John Tyler');
INSERT INTO president(display_name) VALUES('James K. Polk');
INSERT INTO president(display_name) VALUES('Zachary Taylor');
INSERT INTO president(display_name) VALUES('Millard Fillmore');
INSERT INTO president(display_name) VALUES('Franklin Pierce');
INSERT INTO president(display_name) VALUES('James Buchanan');
INSERT INTO president(display_name) VALUES('Abraham Lincoln');
INSERT INTO president(display_name) VALUES('Andrew Johnson');
INSERT INTO president(display_name) VALUES('Ulysses S. Grant');
INSERT INTO president(display_name) VALUES('Rutherford B. Hayes');
INSERT INTO president(display_name) VALUES('James Garfield');
INSERT INTO president(display_name) VALUES('Chester A. Arthur');
INSERT INTO president(display_name) VALUES('Grover Cleveland');
INSERT INTO president(display_name) VALUES('Benjamin Harrison');
INSERT INTO president(display_name) VALUES('William McKinley');
INSERT INTO president(display_name) VALUES('Theodore Roosevelt');
INSERT INTO president(display_name) VALUES('William Howard Taft');
INSERT INTO president(display_name) VALUES('Woodrow Wilson');
INSERT INTO president(display_name) VALUES('Warren G. Harding');
INSERT INTO president(display_name) VALUES('Calvin Coolidge');
INSERT INTO president(display_name) VALUES('Herbert Hoover');
INSERT INTO president(display_name) VALUES('Franklin D. Roosevelt');
INSERT INTO president(display_name) VALUES('Harry S. Truman');
INSERT INTO president(display_name) VALUES('Dwight D. Eisenhower');
INSERT INTO president(display_name) VALUES('John F. Kennedy');
INSERT INTO president(display_name) VALUES('Lyndon B. Johnson');
INSERT INTO president(display_name) VALUES('Richard M. Nixon');
INSERT INTO president(display_name) VALUES('Gerald R. Ford');
INSERT INTO president(display_name) VALUES('James Carter');
INSERT INTO president(display_name) VALUES('Ronald Reagan');
INSERT INTO president(display_name) VALUES('George H. W. Bush');
INSERT INTO president(display_name) VALUES('William J. Clinton');
INSERT INTO president(display_name) VALUES('George W. Bush');
INSERT INTO president(display_name) VALUES('Barack Obama');
INSERT INTO president(display_name) VALUES('Donald Trump');
INSERT INTO president(display_name) VALUES('Joseph R. Biden Jr.');

GRANT ALL ON president TO app_user;