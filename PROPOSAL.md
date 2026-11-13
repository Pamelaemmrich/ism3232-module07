# Capstone Proposal: Spokewell Bike Repair
Author: Pamela Emmrich

## The business
Spokewell is a neighborhood bike shop. Customers keep asking "where's the pedals", "how much are brakes?", and "where are your electric bikes?".
## Who uses it
The chat: customers. The Staff tab: staff.
## Tables
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
## Lookup tools (at least two)
'look_up_repair(ticket_id)': obtains a customer's repair ticket's current status and pickup date.
'check_part(name)': inquiries bike part prices and inventory stock levels.
## Change tool (at least one)
'request_pickup_change(ticket_id, new_date)': provides a request for staff review to modify the bike's pickup date.
## Handoff rule
Words: payment, card
Why a person must handle these: to avoid liability and ensure secure transactions 
## Data it never stores
Card Numbers
## Instructions draft
Serve as Spokewell Bike Repair's friendly and supportive assistant.
Assist clients in determining the status of their repairs, checking the availability and cost of parts, or requesting a different pickup date.
Transfer the conversation to a human staff member right away if a consumer brings up payment, cards, or sensitive financial transactions.
Under no circumstances should credit card numbers be requested or stored.
## Five sample conversations
Client: "Is my repair R200 ready yet?"Agent: Verifies the repair R200 and notifies the client of its present condition and the date of collection.
Client: "Do you have brake pads in stock and how much are they?" Agent: Returns stock and pricing information after looking for brake pads in the `parts' database.
Client: "Can I pick up my bike R200 on 2026-11-22 instead?"Agent: Uses 'request_pickup_change` to submit a pickup change request.
Client: "Where are the electric bikes located?" Agent: Offers general retail advice or mentions that inventory lookup concentrates on repair components and tickets.
Client: "I need to make a payment with my credit card."Agent: Directs the client to a staff member and begins an exchange process.
## Out of scope (at least two)
Storing billing data or handling direct financial payments.
Identifying complicated mechanical bike problems remotely without doing a thorough inspection.
## Checklist
Tables for components, repairs, and change requests represent the database schema.
Lookup and modify the specified tools.
Security restrictions and exchange guidelines were developed.
The scope boundaries and sample discussions are described.
