node 'node3'{
      class {'::tomcat':
         xms           => '25m',
         xmx           => '80m',
         user          => 'root',
         group         => 'root',
         service_state => 'running'
      }
      tomcat::deploy {"sysfoo":
      deploy_url  => 'puppet:///modules/tomcat/sysfoo.war',

      }
     # include tomcat
     # include prefs
      notify {"***NODE3 Definition - DEV****":}
}
