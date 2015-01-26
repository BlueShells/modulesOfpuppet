define vsftpd::test ($name3=$title,$content3){
   file {'abc':
      path 	=> "/tmp/${name3}_text.txt",
      content	=> "this is a test ${content3}"

   }  

}

