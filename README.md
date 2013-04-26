 Installation


 Development

Clone rabbitmq-public-umbrella tree.
  > make co

Link the plugin to the dev rabbitmq-server version

 > cd rabbitmq-server/plugins
 > ln -s path_to_snmp_rabbit

Enable plugin for rabbitmq

 > rabbitmq-server/scripts/rabbitmq-plugins enable snmp_rabbit
 or edit the /etc/rabbitmq/enabled_plugins

Add the snmpa agent congiguration to the /etc/rabbitmq/rabbitmq.config

Run the dev server

 > rabbitmq-server make run