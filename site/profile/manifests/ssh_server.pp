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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDOzoLfQvBVqg2gOrTrfuOJ2VKyOCrQIRkBBd9kzt5/qIr1KwFYyBCF5e0saKK3ukcJszzCIsCaLgbQU5w+zfAfsa59hZgIWUKV7yu0QAb+i4NvaUYDIAul0Uwsm9Ce66cTo8yelM/Zl7GigNSg6WvgvOtT2xC0UF19Js2RDg6ffODgJRl9MlfmwgRc3zgdzrSqSU2WTaTBWrCKVvpmTQJFT86zeVAEJCUE+jYV27emCC5NtpXZCM9Wa2APXFT3HM9PN+CnGTxiHNBbgoyaKR3jGXPERd8/OEAtMO5WIccr4qD0mMzzjJX4FkuVoyhsjgUHFEajEWKlguEc5/a5gw15',
	}  
}
