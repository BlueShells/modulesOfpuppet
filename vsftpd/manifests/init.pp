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
      source 	=> "puppet://broker.example.com/modules/vsftpd/vsftpd.conf"
   }
   include ::vsftpd::user
   include ::vsftpd::file
}
