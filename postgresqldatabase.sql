CREATE TABLE todos (
	id SERIAL PRIMARY KEY, 
	title VARCHAR(255) NOT NULL, 
	details TEXT, 
	priority INTEGER NOT NULL DEFAULT 1, 
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, 
	completed_at timestamp DEFAULT CURRENT_TIMESTAMP);

INSERT INTO todos( title, details, priority) VALUES ('Dog', 'Take the dog to the groomers', 1);

SELECT * FROM todos;

INSERT INTO todos( title, details, priority) VALUES ('Car to Mechanic', 'Take the car to the mechanic', 2, '2017-06-27 15:41:50');
INSERT INTO todos( title, priority) VALUES ('Kids to Daycare', 3);
INSERT INTO todos( title, details, priority) VALUES ('Kids from Daycare', 'Get the kids from the daycare', 4);
INSERT INTO todos( title, details, priority) VALUES ('Kids Homework', 'Kids Homework', 5);


SELECT id FROM todos WHERE * NULL;
SELECT * from todos where priority > 1;

UPDATE todos SET details = 'Take cat to the vet', priority = 3 WHERE todos.id = 7;

DELETE FROM todos WHERE todos.details IS NOT NULL;  
