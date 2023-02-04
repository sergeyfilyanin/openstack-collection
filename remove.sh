sudo yum -y remove '*el7ost*' 'galera*' 'haproxy*' \
    httpd 'mysql*' 'pacemaker*' xinetd python-jsonpointer \
    qemu-kvm-common-rhev qemu-img-rhev 'rabbit*' \
    'redis*' \
    -- \
    -'*openvswitch*' -python-docker -python-PyMySQL \
    -python-pysocks -python2-asn1crypto -python2-babel \
    -python2-cffi -python2-cryptography -python2-dateutil \
    -python2-idna -python2-ipaddress -python2-jinja2 \
    -python2-jsonpatch -python2-markupsafe -python2-pyOpenSSL \
    -python2-requests -python2-six -python2-urllib3 \
    -python-httplib2 -python-passlib -python2-netaddr -ceph-ansible
