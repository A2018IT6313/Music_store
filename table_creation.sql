CREATE TABLE album (
    album_id   INTEGER PRIMARY KEY,
    title      TEXT NOT NULL,
    artist_id  INTEGER NOT NULL
);
select * from album;

CREATE TABLE album2 (
    album_id   INTEGER PRIMARY KEY,
    title      TEXT NOT NULL,
    artist_id  INTEGER NOT NULL
);

CREATE TABLE artist (
    artist_id   INTEGER PRIMARY KEY,
    name      TEXT NOT NULL
);

CREATE TABLE customer (
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    company VARCHAR,
    address VARCHAR,
    city VARCHAR,
    state VARCHAR,
    country VARCHAR NOT NULL,
    postal_code VARCHAR,
    phone VARCHAR,
    fax VARCHAR,
    email VARCHAR,
    support_rep_id INTEGER
);

CREATE TABLE employee (
    employee_id INTEGER PRIMARY KEY,
    last_name TEXT NOT NULL,
    first_name TEXT NOT NULL,
    title TEXT,
    reports_to INTEGER,
    levels TEXT ,
    birthdate TIMESTAMP,
    hire_date TIMESTAMP ,
    address TEXT,
    city TEXT ,
    state TEXT,
    country TEXT ,
    postal_code TEXT ,
    phone TEXT ,
    fax TEXT,
    email TEXT
);

CREATE TABLE genre (
    genre_id   INTEGER PRIMARY KEY,
    name     TEXT NOT NULL
);

-- Drop the existing table if it exists
DROP TABLE IF EXISTS invoice;

-- Create the table with proper data types
CREATE TABLE invoice (
    invoice_id INTEGER PRIMARY KEY,
    customer_id INTEGER ,
    invoice_date TIMESTAMP ,
    billing_address TEXT,
    billing_city TEXT ,
    billing_state TEXT,
    billing_country TEXT ,
    billing_postal_code TEXT,
    total NUMERIC(10,2)
);

-- Create indexes for better performance
CREATE INDEX idx_invoice_customer ON public.invoice(customer_id);
CREATE INDEX idx_invoice_date ON public.invoice(invoice_date);


-- Drop if exists
DROP TABLE IF EXISTS invoice_line;

-- Create with proper types
CREATE TABLE invoice_line (
    invoice_line_id INTEGER,
    invoice_id INTEGER,
    track_id INTEGER,
    unit_price NUMERIC(10,2),
    quantity NUMERIC(10,2), 
    PRIMARY KEY (invoice_line_id)
);


CREATE TABLE media_type (
    media_type_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE playlist(
    playlist_id INTEGER PRIMARY KEY,
    name TEXT
);


CREATE TABLE playlist_track (
    playlist_id INTEGER,
    track_id INTEGER,
	PRIMARY KEY (playlist_id, track_id)
);

DROP TABLE IF EXISTS track;

CREATE TABLE track (
    track_id INTEGER PRIMARY KEY,
    name TEXT,
    album_id INTEGER,
    media_type_id INTEGER,
    genre_id INTEGER,
    composer TEXT,
    milliseconds INTEGER,
    bytes INTEGER,
    unit_price NUMERIC(10,2)
);

select * from album;
select * from album2;
select * from artist;
select * from customer;
select * from employee;
select * from genre;
select * from invoice;
select * from invoice_line;
select * from media_type;
select * from playlist;
select * from playlist_track;
select * from track;




