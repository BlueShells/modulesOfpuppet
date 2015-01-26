class vsftpd::file{
  file{'test':
      ensure 	=> 'directory',
      path 	=> '/tmp/test/',
      source 	=> "puppet://puppet.jaymz.com/modules/vsftpd/test/",
      recurse 	=> true
  
  }



}
