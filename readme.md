
# Example of running teloxide (Telegram bot) on fly.io

## Using this framework

- [teloxide/teloxide: 🤖 An elegant Telegram bots framework for Rust](https://github.com/teloxide/teloxide)


## Setup

- Setup fly.io account
- Setup flyctl (fly.io cli)
  - [Install flyctl · Fly Docs](https://fly.io/docs/hands-on/install-flyctl/)
- Cli sign-in
  - [Sign up and sign in to Fly.io · Fly Docs](https://fly.io/docs/getting-started/log-in-to-fly/)
- Create bot on Telegram
  - Get bot Token (API key) from @BotFather
  - put bot Token on `.env`. see `.env_sample`
- Create fly.io app project.
  - write app project ID on `fly.toml`. see `fly.toml.sample`
    - [Deploy via Dockerfile · Fly Docs](https://fly.io/docs/languages-and-frameworks/dockerfile/)
  - put your bot Token on Fly.io App's Secrets.
    - It works as env vars.
- [bash completion of makefile target - Stack Overflow](https://stackoverflow.com/a/54094920/6265422)
  - I'm using Makefile. Installing `bash-completion` is good.


## Dev & deploy step by step.

### local dev

`$ make 1-cargo-run`

### build & run to make sure Docker container works

`$ make 2-build-image`

`$ make 3-run-dev`

If anything gone wrong, make sure with
`$ sudo docker run -it teloxide-on-fly-io bash`

### deploy on fly.io

`$ make 4-deploy`



