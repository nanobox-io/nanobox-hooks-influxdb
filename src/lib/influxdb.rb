module Hooky
  module Influxdb

    CONFIG_DEFAULTS = {
      # global settings
      before_deploy:                 {type: :array, of: :string, default: []},
      after_deploy:                  {type: :array, of: :string, default: []},
      hook_ref:                      {type: :string, default: "stable"},

      reporting_disabled:            {type: :on_off, default: 'false'},
      # meta
      # data
      # coordinator
      # retention
      # shard-protection
      # monitor
      # admin
      admin_enabled:                 {type: :on_off, default: 'false'},
      admin_bind_address:            {type: :string, default: ':8083'},
      admin_https_enabled:           {type: :on_off, default: 'false'},
      admin_https_certificate:       {type: :string, default: '/data/etc/influxdb/influxdb.pem'},

      # http
      http_enabled:                  {type: :on_off, default: 'true'},
      http_bind_address:             {type: :string, default: ':8086'},
      http_auth_enabled:             {type: :on_off, default: 'false'},
      http_log_enabled:              {type: :on_off, default: 'true'},
      http_write_tracing:            {type: :on_off, default: 'false'},
      http_pprof_enabled:            {type: :on_off, default: 'false'},
      http_https_enabled:            {type: :on_off, default: 'false'},
      http_https_certificate:        {type: :string, default: '/data/etc/influxdb/influxdb.pem'},
      http_max_row_limit:            {type: :integer, default: 10000},
      http_realm:                    {type: :string, default: 'InfluxDB'}

      # subscriber

      # graphite
      # collectd
      # opentsdb
      # udp

      # continuous_queries
    }

  end
end
