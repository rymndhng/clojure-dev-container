# Clojure AWS Development Container

> Batteries included container for Clojure, Postgres and AWS development.

This image has the following packaged together:

- curl
- git
- aws-cli
- java8
- leiningen 2.7.1
- postgresql 9.6
- mysql (MariaDB)
- [yopa (Your Own Personal AWS)](https://github.com/unbounce/yopa "Your Own Personal AWS")

To use the container & services locally:

```
make shell
openrc                # starts background servies
curl localhost:47195  # hits yopas
```

# FAQ

## Why not use docker-compose?

Not all environments have docker-compose, so it can be easier to have all you
tools for dev/testing in a single container. This makes the container re-usable
in CI environments (Jenkins, TravisCI, CodeBuild).
