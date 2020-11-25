external_url 'GENERATED_EXTERNAL_URL'
nginx['ssl_certificate'] = "/etc/gitlab/ssl/PLACE_FOR_HOST.crt"
nginx['ssl_certificate_key'] = "/etc/gitlab/ssl/PLACE_FOR_HOST.key"
grafana['enable'] = false
letsencrypt['enable'] = false
