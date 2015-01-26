define vsftpd::test ($name=$title,$content){
   file {'abc':
      path 	=> "/tmp/${name}_text.txt",
      content	=> "this is a test ${content}"

   }  

}

