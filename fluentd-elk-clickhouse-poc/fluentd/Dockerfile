FROM fluent/fluentd:v1.16-debian-1

USER root

# Clean install: remove all Faraday versions to avoid conflicts
RUN gem uninstall faraday --all --executables || true

# Install compatible Faraday v1.x first
RUN gem install faraday -v "~>1.10"

# Install ClickHouse plugin (will use Faraday 1.x)
RUN gem install fluent-plugin-clickhouse

# Make sure log directory exists
RUN mkdir -p /fluentd/log/nginx

USER fluent

