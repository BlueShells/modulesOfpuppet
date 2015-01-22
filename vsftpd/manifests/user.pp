#password = 123456
#use openssl passwd -1 to generate


class vsftpd::user{
  user{'ftp_test':
     ensure	=> present,
     uid 	=> '504',
     home	=> '/home/ftp_test',
     shell 	=> '/sbin/nologin',
     password	=> '$1$5I6CVGmw$gLVd4eUeq03/KqPCqJHUK0',
     gid	=> 'ftp',



  }




}
