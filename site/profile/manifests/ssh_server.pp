class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDbXWmMKXRy/s2FvhpxDbPypdI0CNkMbcPpmKLN8DTDkbI/1Kcn0Sa+815eIbwaC9IWvQxOWGi8nxgTlEzj11HGuLCb0ss/aUFAn+pwqhyXsFEsNitOZiB90rq2ENuYxw2NbvvS4/aHGwVLc+Ky31CrbjbxoYbUbUBJTPp0hLhxjowuWaDj8kqfPN49kUlSfRj8+IYChlOFdHYPDz+Onay2U+ghNJnCVrES27/kuo7gkoFtE1vQwmPU85ieWJUCKcDsvmoYE9NBJMxCc0hDGsHS8wQxR5mWGVmm/cE9JUM+hqwOXbUkOQXIq3ETmUL/K4LmuViSkXMMTK+9tR9P5wJb',
  } 
}
