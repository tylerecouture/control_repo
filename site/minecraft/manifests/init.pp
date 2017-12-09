class minecraft {
  file {'/opt/minecraft';
    ensure => directory,
  }
  file {'/opt/minecraft/minecraft_server.jar';
    ensure => file
    src    => 'https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar',
  }
  package {'java':
    ensure => present,
  }
  file {'/opt/minecraft/eula.txt':
    ensure  => file,
    content => 'eual=true',
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    src    => ''puppet:///modules/minecraft/minecraft.service',
  }
  service {'minecraft':
   ensure => running,
   enable => true,
  }
}
