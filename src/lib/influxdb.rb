module Hooky
  module Influxdb

    DEFAULT_USERS = [
      {
        :username => "nanobox",
        :meta => {}
      }
    ]

    USER_META_DEFAULTS = {
    }

    USER_DEFAULTS = {
      username:      {type: :string, default: 'nanobox'},
      meta:          {type: :hash, template: USER_META_DEFAULTS, default: {}}}
    }

    CONFIG_DEFAULTS = {
      # global settings
      before_deploy:                 {type: :array, of: :string, default: []},
      after_deploy:                  {type: :array, of: :string, default: []},
      hook_ref:                      {type: :string, default: "stable"},
      users:                         {type: :array, of: :hash, template: USER_DEFAULTS, default: DEFAULT_USERS},

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
