class tomcat(
    $user               = $tomcat::params::user,
    $group              = $tomcat::params::group,
    $config_path        = $tomcat::params::config_path,
    $packages           = $tomcat::params::packages,
    $service_name       = $tomcat::params::service_name,
    $service_status     = $tomcat::params::service_status,
    $catalina_pid       = $tomcat::params::catalina_pid,
    $shutdown_verbose   = $tomcat::params::shutdown_verbose,
    $shutdown_wait      = $tomcat::params::shutdown_wait,
    $security_manager   = $tomcat::params::security_manger,
    $tomcat_user        = $tomcat::params::tomcat_user,
    $catalina_tmpdir    = $tomcat::params::catalina_tmpdir,
    $jasper_home        = $tomcat::params::jasper_home,
    $catalina_home      = $tomcat::params::catalina_home,
    $catalina_base      = $tomcat::params::catalina_base,
    $xms                = $tomcat::params::xms,
    $xmx                = $tomcat::params::xmx,
    $maxpermsize        = $tomcat::params::maxpermsize,
    $java_home          = $tomcat::params::java_home,
    $tomcat_cfg_loaded  = $tomcat::params::tomcat_cfg_loaded,
    $java_opts          = $tomcat::params::java_opts,
)inherits tomcat::params {

    include java::install
    include tomcat::install
    include tomcat::config
    include tomcat::service
    
}
