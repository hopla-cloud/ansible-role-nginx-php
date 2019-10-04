Role Name
=========

Hopla.cloud role for ansible to Nginx, PHP-FPM, Memcached, ProFTPd, Composer, and vhost_deploy script.

Requirements
------------

None.

Role Variables
--------------

System variables
user_name: "user"
user_email: "user@example.com"

Php variables
- php_version: "7.3"
(Possible : 5.6 7.0 7.1 7.2 7.3)
- post_max_size: "64M"
- upload_max_filesize: "64M"
- short_open_tag: "On"

Memcached variables
- session_save_handler: "files"
- session_save_path: "/var/lib/php/sessions"

Dependencies
------------

- hoplacloud.linux_update
- hoplacloud.linux_motd
- hoplacloud.fail2ban
- hoplacloud.proftpd
- hoplacloud.postfix
- hoplacloud.git
- hoplacloud.letsencrypt
- hoplacloud.vhostdeploy_nginx

Example Playbook
----------------

    - hosts: localhost
      remote_user: root
      roles:
         - hoplacloud.nginx_php

License
-------

GPLv3

Author Information
------------------

This role was created in 2019 by [hopla.cloud](https://hopla.cloud)
