start: .copy-env
	@docker compose up -d

stop:
	@docker compose down

.copy-env:
ifeq (,$(wildcard ./.env))
	$(shell cp ./.env.example ./.env)
endif
