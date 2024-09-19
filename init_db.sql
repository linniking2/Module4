

CREATE TABLE client(
  id IDENTITY PRIMARY KEY,
  name VARCHAR NOT NULL,

  CHECK(LENGTH(name) BETWEEN 2 AND 1000)
);

CREATE TABLE project(
  id IDENTITY PRIMARY KEY,
  client_id INT NOT NULL,
  start_date DATE NOT NULL,
  finish_date DATE NOT NULL

  FOREIGN KEY(client_id) REFERENCES client(id)
);

CREATE TABLE project_worker(
project_id INT,
worker_id INT,

PRIMARY KEY(project_id, worker_id),
FOREIGN KEY(project_id) REFERENCES project(id),
FOREIGN KEY(worker_id) REFERENCES worker(id)
);



