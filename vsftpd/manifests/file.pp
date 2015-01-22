class vsftpd::file{
  file{'test':
      ensure 	=> 'directory',
      path 	=> '/tmp/test/',
      source 	=> "puppet://broker.example.com/modules/vsftpd/test/",
      recurse 	=> true
  
  }



}
