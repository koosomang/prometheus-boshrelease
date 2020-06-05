#!/bin/bash

bosh -d prometheus deploy manifests/prometheus.yml \
	-o manifests/operators/monitor-bosh.yml \
        -o manifests/operators/monitor-cf.yml \
	-v network=service-net \
	-v vm_type=small \
	-v az2=az2 \
        -v nginx_ip_address=172.16.25.148 \
	-v firehose_ip_address=172.16.25.149 \
	-v prometheus2_ip_address=172.16.25.145 \
	-v bosh_url=172.16.25.61 \
	-v bosh_username=admin \
	-v bosh_password=bqUPFUTthFG4ck2rY_Ve9WYvoJfr6PVa\
	-v metrics_environment=172.16.25.145:9193/metrics \
	--var-file bosh_ca_cert=/root/opsmgr/prometheus-boshrelease/root_ca_cert \
        -v system_domain=sys.data.kr \
        -v traffic_controller_external_port=443 \
        -v skip_ssl_verify="true" \
	-v metron_deployment_name="cf-74978c84245cd3043b85"
