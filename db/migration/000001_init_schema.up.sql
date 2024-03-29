Table socials {
  id varchar [pk]
  name varchar
  logo_url varchar
}

Table projects as P {
  id varchar [pk]
  entityId varchar
  title varchar
  description varchar
  amount bigint
  amount_raised bigint
  created_at timestampz [default: `now()`]
  updated_at timestamp
}

Table project_socials {
  id varchar [pk]
  project_id varchar [ref: > P.id]
  social_id varchar [ref: > socials.id]
  created_at timestampz [default: `now()`]
  updated_at timestamp
}