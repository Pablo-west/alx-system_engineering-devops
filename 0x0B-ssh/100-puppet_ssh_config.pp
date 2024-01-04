#!/usr/bin/env bash
# sets up a client SSH configuration file so that we can connect to a server without using a password

file { 'ect/ssh/ssh_config':
	ensure => present,

content => "
	# SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
