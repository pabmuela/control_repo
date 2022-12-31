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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCi4UybcsRwlzFXvE4aJlFo8B/O5mDMO9GJCNW2FGYXNgb5RdM76wDDq/H/yYHuJYHq2IJOR1tlENwbY4SCxf4DatbqDYvPOSCXqv5Ne+YFLmz4ZGGJnfaXxCJ2gnsQ5EUJTUDAp5vlCud/gZkD+AuYum40ZHjZV3jrpeMdy7jDy78h2qCtdKnriupz9gcMRViom0xAr6II5eWGblMgW3DmSwNHnoid/t+9A4+rh+x8vMywiDsrZTkgJEjr/SgHDGk+2qhIpRRgRwakgILAt8NqtR9bKOradNOoV/HsPozeBhdqBtcrwpJAf0pSfGZ0fcoAgswRqucd2d433T9VW9SB',
	}  
}
