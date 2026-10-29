-- Jalankan di Supabase: SQL Editor > New query > Run
create table if not exists public.pelanggan (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.pelanggan enable row level security;

-- hanya pengguna yang sudah login yang boleh baca dan tulis
create policy "login boleh semua" on public.pelanggan
  for all to authenticated using (true) with check (true);

-- aktifkan pembaruan langsung antar perangkat
alter publication supabase_realtime add table public.pelanggan;
