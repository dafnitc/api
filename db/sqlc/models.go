// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.23.0

package db

import (
	"github.com/jackc/pgx/v5/pgtype"
)

type Project struct {
	ID           string           `json:"id"`
	EntityID     pgtype.Text      `json:"entity_id"`
	Title        pgtype.Text      `json:"title"`
	Description  pgtype.Text      `json:"description"`
	Amount       pgtype.Int8      `json:"amount"`
	AmountRaised pgtype.Int8      `json:"amount_raised"`
	CreatedAt    interface{}      `json:"created_at"`
	UpdatedAt    pgtype.Timestamp `json:"updated_at"`
}

type ProjectSocial struct {
	ID        string           `json:"id"`
	ProjectID pgtype.Text      `json:"project_id"`
	SocialID  pgtype.Text      `json:"social_id"`
	CreatedAt interface{}      `json:"created_at"`
	UpdatedAt pgtype.Timestamp `json:"updated_at"`
}

type Social struct {
	ID      string      `json:"id"`
	Name    pgtype.Text `json:"name"`
	LogoUrl pgtype.Text `json:"logo_url"`
}