### RabbitMQ rabbitmqadmin utility Docker image

The CLI utility `rabbitmqadmin` allows to manage a RabbitMQ
server, with the management plugin enabled.

See [RabbitMQ CLI management section](https://www.rabbitmq.com/management-cli.html).

#### How to use it the container at system level?

You can create a `/usr/local/bin/rabbitmqadmin` launcher:

```
#!/bin/sh

docker run -it --rm nasqueron/rabbitmqadmin $*
```

#### How to use it the container at user level?

```
alias rabbitmqadmin=docker run -it --rm nasqueron/rabbitmqadmin
```
