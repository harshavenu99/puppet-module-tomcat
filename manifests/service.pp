class tomcat::service inherits tomcat {
    service { $::tomcat::service_name:
        ensure => $::tomcat::service_status,
        enable => true,
        require => Package['tomcat'],
    }
}