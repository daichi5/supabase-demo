INSERT INTO
    tenants (name)
VALUES
    ('tenant_a');

INSERT INTO
    something (name)
VALUES
    ('a');

INSERT INTO
    users (tenant_id, something_id)
VALUES
    (1, 1);
