SELECT format('CREATE DATABASE %I WITH OWNER %I', '_supabase', current_user)
WHERE NOT EXISTS (
  SELECT 1 FROM pg_database WHERE datname = '_supabase'
)\gexec
