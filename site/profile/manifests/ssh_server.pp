class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_quthorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQClgjD6/nRtQ3EcmkgeK9ecJBtrScUk3f9UbCPdXOkeU0M8eW1ndZnm1uE6zD2ADAUXZ5nDF/RyKq1T3xb83YGcR6F7xs7cpBCDZB100As2UGZHKOU4BoE1mxIsHOe2P6qsC9k9DyzrVDup9xcaPg4D9mo9gVJkagrfJjoSNxZaqHWTvN9cpUmcYX/FCUm3bm1PyVoAy5vJpfK+TrjzZJ7PRa9/YcOPnyeGrPMQoAFj0L4gfuu/rirBr737lSIETH+OkEa/7Bk4f8i/1L5t87SQSUuBRoqha7B9bukpPggtILRG13LyUyZ2ubGDWLmjHIlDn/oThGH2XRdfAx+fqXc1',
  }
}
