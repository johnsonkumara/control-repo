hiera_include('classes')
node 'node1'{
#      include base
#      class {'::tomcat':
#         xms           => '60m',
#         xmx           => '120m',
#         user          => 'root',
#         group         => 'root',
#         service_state => 'running'
#      }
       include tomcat
      tomcat::deploy {"sysfoo":
      deploy_url  => 'puppet:///modules/tomcat/sysfoo.war',

      }
     # include tomcat
     # include prefs
      notify {"***NODE1 Definition****":}
}

node 'node2'{
       include tomcat
#     class { '::tomcat':
#         xms           => "70m",
#         xmx           => "130m",
#         user          => 'tomcat',
#         group         => 'tomcat',
#         service_state => 'running'
#      }
     # include tomcat
     # include prefs
      notify {"***NODE2 Definition****":}
}

node default {
 notify { 'checkpoint_1':
  message => "

  ****** Default node block*****
  there is no definition decleared for this node
  "
 }
}
