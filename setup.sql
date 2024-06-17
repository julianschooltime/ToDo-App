CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  completed BOOLEAN NOT NULL DEFAULT false
);

INSERT INTO todos (title) VALUES ('First task');
INSERT INTO todos (title) VALUES ('Second task');
