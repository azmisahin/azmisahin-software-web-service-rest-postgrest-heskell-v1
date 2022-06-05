-- PostgREST allows us to specify a stored procedure to run during attempted authentication.
-- The function can do whatever it likes, including raising an exception to terminate the request.

CREATE OR REPLACE FUNCTION "check"() RETURNS void
  language plpgsql
  as $$
BEGIN
  if current_setting('request.jwt.claims', true)::json->>'iss' =
     'client' then
    raise insufficient_privilege
      using hint = 'claims.iss';
  end if;
END
$$; 