-- name: CreateProject :one
INSERT INTO projects (
  id,
  entity_id,
  title,
  description,
  amount,
  amount_raised
) VALUES (
    $1, $2, $3, $4, $5, $6
) RETURNING *;

-- name: GetProject :one
SELECT * FROM projects
WHERE id = $1 LIMIT $1;