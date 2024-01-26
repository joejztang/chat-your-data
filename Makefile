SHELL:=/bin/bash

build:
	docker compose build chat-your-data

test:
	docker compose up --build test -d

local:
	docker compose up --build chat-your-data -d

clean:
	docker compose down --remove-orphans