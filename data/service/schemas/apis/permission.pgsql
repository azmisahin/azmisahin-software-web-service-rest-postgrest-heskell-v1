-- schemas permission
-- grant usage permission

-- {   "role": "authenticator" }
\ir permission.authenticator.pgsql

-- {   "role": "customer" }
\ir permission.user.pgsql

-- { "role" : "anonymous" }
\ir permission.anonymous.pgsql