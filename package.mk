DEPS:=rabbitmq-erlang-client rabbitmq-management-agent

define construct_app_commands
    cp -r $(PACKAGE_DIR)/priv $(APP_DIR)
endef
