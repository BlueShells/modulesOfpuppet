define vsftpd::vhost($port){
  file{'vhost.conf':
	path 	=> '/tmp/vhost.conf',
	ensure 	=> file,
	content	=> template('vsftpd/vhost.conf.erb'),
  }
      notify {"the port is $port":}
}
