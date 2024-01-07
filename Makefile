
1-cargo-run:
	set -a && source ./.env && set +a && echo $${TELOXIDE_TOKEN}
	cargo run

2-build-image:
	sudo docker build -f Dockerfile -t teloxide-on-fly-io .

3-run-dev:
	sudo docker run --env-file=./.env teloxide-on-fly-io

4-deploy:
	flyctl deploy
