create table if not exists public.leads (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  email text not null,
  whatsapp text not null,
  created_at timestamp with time zone default now()
);

alter table public.leads enable row level security;

create policy "allow public insert"
on public.leads
for insert
to anon
with check (true);
