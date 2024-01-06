
# Example of running teloxide (Telegram bot) on fly.io

- [teloxide/teloxide: 🤖 An elegant Telegram bots framework for Rust](https://github.com/teloxide/teloxide)
- [Deploy via Dockerfile · Fly Docs](https://fly.io/docs/languages-and-frameworks/dockerfile/)
- [bash completion of makefile target - Stack Overflow](https://stackoverflow.com/a/54094920/6265422)
  - use `bash-completion`

## Setup

- Setup fly.io account
- Setup flyctl (fly.io cli)
  - [Install flyctl · Fly Docs](https://fly.io/docs/hands-on/install-flyctl/)
- Cli sign-in
  - [Sign up and sign in to Fly.io · Fly Docs](https://fly.io/docs/getting-started/log-in-to-fly/)
- Create fly.io app project.
  - write app project ID on fly.toml
- Create bot on Telegram
  - Get bot API key from @BotFather
  - put bot API key on .env
- install mold

## Dev & deploy step by step.

### local dev

`$ make 1-cargo-run`

### build & run to make sure Docker container works

`$ make 2-build-image`

`$ make 3-run-dev`

### deploy on fly.io

`$ make 4-deploy`



