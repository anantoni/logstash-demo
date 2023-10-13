#!/bin/bash
if curl -XPUT "elasticsearch:9200/prevail-logs-001" -H "Content-Type: application/json" -d@first-index-info.json; then
    curl -XPUT "elasticsearch:9200/_index_template/prevail_logs_template" -H "Content-Type: application/json" -d@index-template-info.json
    curl -XPUT "elasticsearch:9200/_ilm/policy/prevail-logs/" -H "Content-Type: application/json" -d@policy.json
fi
# if curl -H "Authorization: Basic ZWxhc3RpYzpwYXNzMTIzNA==" -XPUT "elasticsearch:9200/prevail-logs"; then
#     curl -H "Authorization: Basic ZWxhc3RpYzpwYXNzMTIzNA==" -XPUT "elasticsearch:9200/prevail-logs/_mapping" -H "Content-Type: application/json" -d@schema.json
# fi