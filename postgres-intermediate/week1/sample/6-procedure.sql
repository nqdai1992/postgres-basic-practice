CREATE OR REPLACE FUNCTION trigger_set_timestamp ()
RETURNS TRIGGER AS
$$
BEGIN
    NEW.updated_at = NOW ();
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER set_timestamp
BEFORE UPDATE ON fav
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();