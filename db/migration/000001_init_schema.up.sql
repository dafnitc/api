CREATE TABLE IF NOT EXISTS "socials" (
  "id" text PRIMARY KEY,
  "name" text,
  "logo_url" text
);

CREATE TABLE IF NOT EXISTS "projects" (
  "id" text PRIMARY KEY,
  "entity_id" text,
  "title" text,
  "description" text,
  "amount" bigint,
  "amount_raised" bigint,
  "created_at" timestamptz DEFAULT (now()),
  "updated_at" timestamptz
);

CREATE TABLE IF NOT EXISTS "project_socials" (
  "id" text PRIMARY KEY,
  "project_id" text,
  "social_id" text,
  "created_at" timestamptz DEFAULT (now()),
  "updated_at" timestamptz
);

ALTER TABLE "project_socials" ADD FOREIGN KEY ("project_id") REFERENCES "projects" ("id");

ALTER TABLE "project_socials" ADD FOREIGN KEY ("social_id") REFERENCES "socials" ("id");
