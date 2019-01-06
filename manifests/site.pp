node default {
    file {'/root/README':
      ensure  => file,
      content => 'this is read me' ,
      owner   => 'root',
     }
}
node 'master.puppet.vm' {
    include role::master_server
}
