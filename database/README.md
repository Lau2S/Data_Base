## Database Component

### Run a single database

Create sql files

- 'schema.sql': Contains the SQL statements for create tables [using DDL]
- 'data.sql' : Contains the SQL statements for insert initial data [using DML]

### 2. Create 'Dockerfile'

set postgres imagen base
- FROM postgres:14

Add lines for copy files into container:
- COPY ./db/schema.sql /docker-entrypoint-initdb.d/00-schema.sql
- COPY ./db/data.sql /docker-entrypoint-initdb.d/01-data.sql

### 3. Build database image

inside databae folder:

```
docker build -t laustefania/facturion .

```

### 4. Build database image

```
docker run --name facturion -p 5432:5432 -e POSTGRES_PASSWORD=aP4sw0rd laustefania/facturion

``` 

### Run integrate with dockercompose

Under development 



