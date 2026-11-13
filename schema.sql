CREATE TABLE IF NOT EXISTS repairs (
    ticket_id   TEXT PRIMARY KEY,
    customer    TEXT NOT NULL,
    bike        TEXT NOT NULL,
    status      TEXT NOT NULL,
    pickup_date TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS parts (
    name   TEXT PRIMARY KEY,
    price  REAL NOT NULL,
    stock  INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS change_requests (
    number    INTEGER PRIMARY KEY AUTOINCREMENT,
    ticket_id TEXT NOT NULL,
    new_value TEXT NOT NULL,
    status    TEXT NOT NULL DEFAULT 'waiting'
);

INSERT OR IGNORE INTO repairs (ticket_id, customer, bike, status, pickup_date) VALUES
('R202', 'Daniel Ripstein', 'cruiser', 'waiting for parts', '2026-11-25'),
('R203', 'Kamila Hixon', 'electric bike', 'in repair', '2026-11-26'),
('R200', 'Bond Voros', 'road bike', 'in repair', '2026-11-20'),
('R201', 'Lilly Hixon', 'kids bike', 'ready', '2026-11-18'),
('R204', 'Indy Emmrich', 'mountain bike', 'ready', '2026-11-21');

INSERT OR IGNORE INTO parts (name, price, stock) VALUES
 ('inner tube',   8.00, 25),
 ('brake pads',   15.00, 0),
 ('chain',   12.50, 10),
 ('helmet', 10.00, 15),
 ('pedals',  6.50, 20);