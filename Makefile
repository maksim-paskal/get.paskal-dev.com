deploy:
	docker run -it -v `pwd`:/app --env-file .env --entrypoint /app/import.sh --rm minio/mc