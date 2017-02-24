Playbook fix_resolvconf.yml
==========================

Description:
-----------

Fix resolv.conf file, based in copy a file.

Usage:
------

Edit files/resolv.conf.lab

Playbook setup_bind_ubuntu.yml
==============================


Description:
-----------

Install and configure bind on ubuntu.

Variables:
----------

* `bind_forward`:
   - Description: Add your real DNS server to forward requests.
   - Format: 192.168.20.1


Playbook setup_easy_rsa_repo.yml
================================


Description:
------------

Clone a easy-rsa repo. Configure a script to manage OpenVPN certificates.

Variables:
----------

* `ca_key_path`:
   - Description: Add where you will clone repo.
   - Format: /opt/CA

* `git_repo_url`:
   - Description: Add git URI
   - Format: git@git.server.com:master/ca.git

* `git_repo_version`:
   - Description: Repo version.
   - Format: HEAD | v1.0.1

* `openvpn_user`:
   - Description: User configured to run openvpn service, in case you clone ca_repo at openvpn server.
     Note: You only need your server private and public key, your ca.crt in your openvpn server.
   - Format: openvpn | root

License
-------

BSD

Author Information
------------------
William Henrique Siqueira Marques
