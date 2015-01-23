class vsftpd::user{
  user{'ftp_jaymz':
     ensure	=> present,
     uid 	=> '504',
     home	=> '/home/ftp_jaymz',
     shell 	=> '/sbin/nologin',
     password	=> '$1$svfAKdBu$c8MnfTtA.NnyVb/jhPTR3/',
     gid	=> 'ftp',



  }




}
