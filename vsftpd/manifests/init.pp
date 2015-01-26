class vsftpd {
   package {'vsftpd':
     ensure	=> installed,
   }

   service {'vsftpd':
     ensure	=>running,
     subscribe  =>File["vsftpd.conf"],
   }

   file {'vsftpd.conf':
      path 	=> '/etc/vsftpd/vsftpd.conf',
      require	=> Package["vsftpd"],
      source 	=> "puppet://puppet.jaymz.com/modules/vsftpd/vsftpd.conf"
   }
   include ::vsftpd::user
   include ::vsftpd::file
   
   define vsftpd::createfile($name1=$title,$content1){
      file{"/tmp/$name1.txt":
          ensure => file,
          content => $content1,
          mode    => 0644,

      }


   }
   vsftpd::createfile{'nick':
           content1     => "hi nick",
   }

   vsftpd::createfile{'jaymz':
           content1     => "hi jaymz",
   }

  # include ::vsftpd::test
  # ::vsftd::test{'jaymz_test':
  #	   content	=>"hi jaymz_test",
  # }
  #include vsftpd::vhost
  vsftpd::vhost{'abc':
	port	=> "100",

  }

}
