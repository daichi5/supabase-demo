CREATE TABLE
    tenants (
        id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
        name text NOT NULL
    );

CREATE TABLE
    something (
        id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
        name text NOT NULL
    );

CREATE TABLE
    users (
        id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
        tenant_id INTEGER NOT NULL REFERENCES tenants (id),
        something_id INTEGER NOT NULL UNIQUE REFERENCES something (id)
    );
