puts "🌱 Generating development environment seeds."

# TODO: Teams setup

# 1. Create a user.
# 2. Create a team.
# 3. Add the user to the team via the membership model.
# 4. Add admin role to the membership.


# web              | Started POST "/users" for ::1 at 2024-09-21 13:30:02 +0200
# web              | Processing by RegistrationsController#create as TURBO_STREAM
# web              |   Parameters: {"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"daham@medow.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}
# web              |   TRANSACTION (0.7ms)  BEGIN
# web              |   ↳ bullet_train (1.7.22) app/controllers/concerns/registrations/controller_base.rb:24:in `create'
# web              |   User Exists? (17.2ms)  SELECT 1 AS one FROM "users" WHERE "users"."email" = $1 LIMIT $2  [["email", "daham@medow.com"], ["LIMIT", 1]]
# web              |   ↳ bullet_train (1.7.22) app/controllers/concerns/registrations/controller_base.rb:24:in `create'
# web              |   User Create (1.0ms)  INSERT INTO "users" ("email", "encrypted_password", "reset_password_token", "reset_password_sent_at", "remember_created_at", "sign_in_count", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "created_at", "updated_at", "current_team_id", "first_name", "last_name", "time_zone", "last_seen_at", "profile_photo_id", "ability_cache", "last_notification_email_sent_at", "former_user", "encrypted_otp_secret", "encrypted_otp_secret_iv", "encrypted_otp_secret_salt", "consumed_timestep", "otp_required_for_login", "otp_backup_codes", "locale", "platform_agent_of_id", "otp_secret", "failed_attempts", "unlock_token", "locked_at") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $30, $31, $32, $33) RETURNING "id"  [["email", "daham@medow.com"], ["encrypted_password", "$2a$11$YvC7gPO2QC8U9T.qvv6dmeugGlp4JK1RuRPiXHuNbG4nlRZtrV4PK"], ["reset_password_token", nil], ["reset_password_sent_at", nil], ["remember_created_at", nil], ["sign_in_count", 0], ["current_sign_in_at", nil], ["last_sign_in_at", nil], ["current_sign_in_ip", nil], ["last_sign_in_ip", nil], ["created_at", "2024-09-21 11:30:02.830953"], ["updated_at", "2024-09-21 11:30:02.830953"], ["current_team_id", nil], ["first_name", nil], ["last_name", nil], ["time_zone", nil], ["last_seen_at", nil], ["profile_photo_id", nil], ["ability_cache", nil], ["last_notification_email_sent_at", nil], ["former_user", false], ["encrypted_otp_secret", nil], ["encrypted_otp_secret_iv", nil], ["encrypted_otp_secret_salt", nil], ["consumed_timestep", nil], ["otp_required_for_login", nil], ["otp_backup_codes", nil], ["locale", nil], ["platform_agent_of_id", nil], ["otp_secret", nil], ["failed_attempts", 0], ["unlock_token", nil], ["locked_at", nil]]
# web              |   ↳ bullet_train (1.7.22) app/controllers/concerns/registrations/controller_base.rb:24:in `create'
# web              |   TRANSACTION (1.0ms)  COMMIT
# web              |   ↳ bullet_train (1.7.22) app/controllers/concerns/registrations/controller_base.rb:24:in `create'
# web              | [ActionCable] Broadcasting to User: {}
# web              |   TRANSACTION (0.8ms)  BEGIN
# web              |   ↳ bullet_train (1.7.22) app/controllers/concerns/registrations/controller_base.rb:24:in `create'
# web              |   User Update (2.4ms)  UPDATE "users" SET "sign_in_count" = $1, "current_sign_in_at" = $2, "last_sign_in_at" = $3, "current_sign_in_ip" = $4, "last_sign_in_ip" = $5, "updated_at" = $6 WHERE "users"."id" = $7  [["sign_in_count", 1], ["current_sign_in_at", "2024-09-21 11:30:02.836419"], ["last_sign_in_at", "2024-09-21 11:30:02.836419"], ["current_sign_in_ip", "::1/128"], ["last_sign_in_ip", "::1/128"], ["updated_at", "2024-09-21 11:30:02.836583"], ["id", 2]]
# web              |   ↳ bullet_train (1.7.22) app/controllers/concerns/registrations/controller_base.rb:24:in `create'
# web              |   Team Load (1.4ms)  SELECT "teams".* FROM "teams" INNER JOIN "memberships" ON "teams"."id" = "memberships"."team_id" WHERE "memberships"."user_id" = $1 AND "teams"."time_zone" IS NULL  [["user_id", 2]]
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:156:in `set_teams_time_zone'
# web              |   TRANSACTION (0.7ms)  COMMIT
# web              |   ↳ bullet_train (1.7.22) app/controllers/concerns/registrations/controller_base.rb:24:in `create'
# web              | [ActionCable] Broadcasting to User: {:changed=>["sign_in_count", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "updated_at"]}
# web              | [ActionCable] Broadcasting to gid://balagame/User/2: {:changed=>["sign_in_count", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "updated_at"]}
# web              | Redirected to http://localhost:3000/account
# web              |   Team Exists? (0.8ms)  SELECT 1 AS one FROM "teams" INNER JOIN "memberships" ON "teams"."id" = "memberships"."team_id" WHERE "memberships"."user_id" = $1 LIMIT $2  [["user_id", 2], ["LIMIT", 1]]
# web              |   ↳ bullet_train (1.7.22) app/controllers/concerns/registrations/controller_base.rb:30:in `create'
# web              |   TRANSACTION (17.5ms)  BEGIN
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:74:in `create_default_team'
# web              |   Team Create (19.5ms)  INSERT INTO "teams" ("name", "slug", "created_at", "updated_at", "being_destroyed", "time_zone", "locale") VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING "id"  [["name", "Your Team"], ["slug", nil], ["created_at", "2024-09-21 11:30:02.853846"], ["updated_at", "2024-09-21 11:30:02.853846"], ["being_destroyed", nil], ["time_zone", nil], ["locale", nil]]
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:74:in `create_default_team'
# web              |   Membership Exists? (1.1ms)  SELECT 1 AS one FROM "memberships" WHERE "memberships"."user_email" IS NULL AND "memberships"."team_id" = $1 LIMIT $2  [["team_id", 2], ["LIMIT", 1]]
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:74:in `create_default_team'
# web              |   Membership Create (1.6ms)  INSERT INTO "memberships" ("user_id", "team_id", "created_at", "updated_at", "invitation_id", "user_first_name", "user_last_name", "user_profile_photo_id", "user_email", "added_by_id", "platform_agent_of_id", "role_ids", "platform_agent") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13) RETURNING "id"  [["user_id", 2], ["team_id", 2], ["created_at", "2024-09-21 11:30:02.879172"], ["updated_at", "2024-09-21 11:30:02.879172"], ["invitation_id", nil], ["user_first_name", nil], ["user_last_name", nil], ["user_profile_photo_id", nil], ["user_email", nil], ["added_by_id", nil], ["platform_agent_of_id", nil], ["role_ids", "[]"], ["platform_agent", false]]
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:74:in `create_default_team'
# web              |   User Update (0.9ms)  UPDATE "users" SET "ability_cache" = $1 WHERE "users"."id" = $2  [["ability_cache", "{}"], ["id", 2]]
# web              |   ↳ bullet_train-roles (1.7.22) lib/roles/user.rb:29:in `invalidate_ability_cache'
# web              |   TRANSACTION (0.8ms)  COMMIT
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:74:in `create_default_team'
# web              | [ActionCable] Broadcasting to Team: {}
# web              | [ActionCable] Broadcasting to Membership: {}
# web              |   Webhooks::Outgoing::Endpoint Pluck (1.7ms)  SELECT "webhooks_outgoing_endpoints"."api_version" FROM "webhooks_outgoing_endpoints" WHERE "webhooks_outgoing_endpoints"."team_id" = $1 AND (event_type_ids @> '"membership.created"' OR event_type_ids = '[]'::jsonb)  [["team_id", 2]]
# web              |   ↳ bullet_train-outgoing_webhooks (1.7.22) app/models/concerns/webhooks/outgoing/team_support.rb:16:in `endpoint_api_versions_for_event_type'
# web              |   Membership Load (0.8ms)  SELECT "memberships".* FROM "memberships" WHERE "memberships"."user_id" = $1 AND "memberships"."team_id" = $2 LIMIT $3  [["user_id", 2], ["team_id", 2], ["LIMIT", 1]]
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:75:in `create_default_team'
# web              |   TRANSACTION (0.8ms)  BEGIN
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:75:in `create_default_team'
# web              |   Team Load (0.8ms)  SELECT "teams".* FROM "teams" WHERE "teams"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:75:in `create_default_team'
# web              |   Membership Exists? (1.0ms)  SELECT 1 AS one FROM "memberships" WHERE "memberships"."user_email" = $1 AND "memberships"."id" != $2 AND "memberships"."team_id" = $3 LIMIT $4  [["user_email", "daham@medow.com"], ["id", 2], ["team_id", 2], ["LIMIT", 1]]
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:75:in `create_default_team'
# web              |   Membership Update (0.9ms)  UPDATE "memberships" SET "updated_at" = $1, "user_email" = $2, "role_ids" = $3 WHERE "memberships"."id" = $4  [["updated_at", "2024-09-21 11:30:02.901409"], ["user_email", "daham@medow.com"], ["role_ids", "[\"admin\"]"], ["id", 2]]
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:75:in `create_default_team'
# web              |   User Update (17.3ms)  UPDATE "users" SET "ability_cache" = $1 WHERE "users"."id" = $2  [["ability_cache", "{}"], ["id", 2]]
# web              |   ↳ bullet_train-roles (1.7.22) lib/roles/user.rb:29:in `invalidate_ability_cache'
# web              |   TRANSACTION (0.8ms)  COMMIT
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:75:in `create_default_team'
# web              | [ActionCable] Broadcasting to Membership: {:changed=>["updated_at", "user_email", "role_ids"]}
# web              | [ActionCable] Broadcasting to gid://balagame/Membership/2: {:changed=>["updated_at", "user_email", "role_ids"]}
# web              |   Webhooks::Outgoing::Endpoint Pluck (0.8ms)  SELECT "webhooks_outgoing_endpoints"."api_version" FROM "webhooks_outgoing_endpoints" WHERE "webhooks_outgoing_endpoints"."team_id" = $1 AND (event_type_ids @> '"membership.updated"' OR event_type_ids = '[]'::jsonb)  [["team_id", 2]]
# web              |   ↳ bullet_train-outgoing_webhooks (1.7.22) app/models/concerns/webhooks/outgoing/team_support.rb:16:in `endpoint_api_versions_for_event_type'
# web              |   TRANSACTION (0.8ms)  BEGIN
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:76:in `create_default_team'
# web              |   User Update (2.3ms)  UPDATE "users" SET "updated_at" = $1, "current_team_id" = $2 WHERE "users"."id" = $3  [["updated_at", "2024-09-21 11:30:02.927296"], ["current_team_id", 2], ["id", 2]]
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:76:in `create_default_team'
# web              |   Team Load (0.9ms)  SELECT "teams".* FROM "teams" INNER JOIN "memberships" ON "teams"."id" = "memberships"."team_id" WHERE "memberships"."user_id" = $1 AND "teams"."time_zone" IS NULL  [["user_id", 2]]
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:156:in `set_teams_time_zone'
# web              |   User Count (1.1ms)  SELECT COUNT(*) FROM "users" INNER JOIN "memberships" ON "users"."id" = "memberships"."user_id" WHERE "memberships"."team_id" = $1  [["team_id", 2]]
# web              |   ↳ bullet_train (1.7.22) app/models/concerns/users/base.rb:157:in `block in set_teams_time_zone'
# web              |   TRANSACTION (0.9ms)  COMMIT
