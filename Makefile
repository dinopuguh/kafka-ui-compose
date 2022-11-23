up: .copy-env
	@docker compose up -d

down:
	@docker compose down

.copy-env:
ifeq (,$(wildcard ./.env))
	$(shell cp ./.env.example ./.env)
endif
