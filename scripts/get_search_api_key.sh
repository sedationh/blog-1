#!/bin/sh

curl \
	-X GET 'https://meilisearch.k3s.owenyoung.com/keys' \
	-H "Authorization: Bearer $TEMP_MEILISEARCH_API_KEY" |
	json_pp
