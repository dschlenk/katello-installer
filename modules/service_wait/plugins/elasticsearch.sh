confine [ $SERVICE = 'elasticsearch' ]

ELASTICSEARCH_PORT=${ELASTICSEARCH_PORT:-9200}
ELASTICSEARCH_TEST_URL=${ELASTICSEARCH_TEST_URL:-http://localhost:$ELASTICSEARCH_PORT}

service-wait () {
    wait-for-url $ELASTICSEARCH_TEST_URL
}