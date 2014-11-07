# == Class uchiwa::config
#
# This class is called from uchiwa
#
class uchiwa::config {

  datacat_fragment { 'uchiwa_config':
    target  => '/etc/sensu/uchiwa.json',
    data    => {
      host    => $uchiwa::host,
      port    => $uchiwa::port,
      user    => $uchiwa::user,
      pass    => $uchiwa::pass,
      stats   => $uchiwa::stats,
      refresh => $uchiwa::refresh
    }
  }

  datacat { '/etc/sensu/uchiwa.json':
    template => 'uchiwa/etc/sensu/uchiwa.json.erb',
  }
}
