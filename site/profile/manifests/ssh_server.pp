class profile::ssh_server {
  package { 'openssh-server':
      ensure => present ,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
ssh_authorized_key { 'root@master.puppet.vm' :
    ensure => present ,
    user => 'root' ,
    type => 'ssh-rsa' ,
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCu/X+vJ9SBch0LOThqPt1DveznIT1sDWkruY7vKWT1zLv3EYG19cHw+vWeu8kcrQf6oBmHIJ1C9sY40WCKdOazSyvgG1wxs1Z8JBvKjhc5iIkBs7zcPUpgYCWIOzyvK78bN7oqrsAsGkh+wU9KKrIQMXCYYAqBeadSHiCDoaDfQMBg1gelw1waar4wBh7KrrFNZrTvrkEh4Mv+q7w+IZ9WA+9JPVkIWloBq8pz1ZJtOfTs5SWHGg2B9OGGCCMSdMTLy2kLS3MH1krfpwe/EGg1qxhaBS42ZEQ3Q3YP+7C5wP3LN1vvia3H6SiqyXMTPMw59MBnw4BKyhVtYEi6c7XN' ,
  }  
}
