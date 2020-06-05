bosh -d prometheus deploy manifests/prometheus.yml \
	-o manifests/operators/vm_type.yml \
	-o manifests/operators/static-nginx.yml \
	-o manifests/operators/monitor-bosh.yml \
	-o manifests/operators/monitor-cf.yml \
	-o manifests/operators/enable-grafana-uaa.yml \
	-v metron_deployment_name= \
	-v system_domain= \
	-v uaa_clients_cf_exporter_secret= \
	-v uaa_clients_firehose_exporter_secret= \
	-v traffic_controller_external_port= \
	-v skip_ssl_verify=true