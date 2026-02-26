DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = '_supabase') THEN
    EXECUTE format('CREATE DATABASE %I WITH OWNER %I', '_supabase', current_user);
  END IF;
END
$$;
