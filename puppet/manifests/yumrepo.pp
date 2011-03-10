# class repos ( $repo = ["nada"] ) {
# Todabía no se puede porque tengo puppet 25
class repos {

    yumrepo { 'local':
        enabled => '1',
        proxy => '_none_',
        failovermethod => 'priority',
        gpgcheck => '0',
        descr => 'local $releasever - $basearch',
        baseurl => 'http://192.168.1.4/mirror/local/14/'
    }

    yumrepo { 'updates':
        enabled => $remotes,
        failovermethod => 'priority',
        gpgcheck => '1',
        gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch',
        descr => 'Fedora $releasever - $basearch - Updates',
        mirrorlist => 'https://mirrors.fedoraproject.org/metalink?repo=updates-released-f$releasever&arch=$basearch'
    }
    yumrepo { 'fedora':
        enabled => $remotes,
        failovermethod => 'priority',
        gpgcheck => '1',
        gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch',
        descr => 'Fedora $releasever - $basearch',
        metadata_expire => '7d',
        mirrorlist => 'https://mirrors.fedoraproject.org/metalink?repo=fedora-$releasever&arch=$basearch'
    }

    yumrepo { 'updates-debuginfo':
        enabled => '0',
        failovermethod => 'priority',
        gpgcheck => '1',
        gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch',
        descr => 'Fedora $releasever - $basearch - Updates - Debug',
        mirrorlist => 'https://mirrors.fedoraproject.org/metalink?repo=updates-released-debug-f$releasever&arch=$basearch'
    }
    yumrepo { 'updates-source':
        enabled => '0',
        failovermethod => 'priority',
        gpgcheck => '1',
        gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch',
        descr => 'Fedora $releasever - Updates Source',
        mirrorlist => 'https://mirrors.fedoraproject.org/metalink?repo=updates-released-source-f$releasever&arch=$basearch'
    }
    yumrepo { 'updates-testing':
        enabled => '0',
        failovermethod => 'priority',
        gpgcheck => '1',
        gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch',
        descr => 'Fedora $releasever - $basearch - Test Updates',
        mirrorlist => 'https://mirrors.fedoraproject.org/metalink?repo=updates-testing-f$releasever&arch=$basearch'
    }
    yumrepo { 'updates-testing-debuginfo':
        enabled => '0',
        failovermethod => 'priority',
        gpgcheck => '1',
        gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch',
        descr => 'Fedora $releasever - $basearch - Test Updates Debug',
        mirrorlist => 'https://mirrors.fedoraproject.org/metalink?repo=updates-testing-debug-f$releasever&arch=$basearch'
    }
    yumrepo { 'updates-testing-source':
        enabled => '0',
        failovermethod => 'priority',
        gpgcheck => '1',
        gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch',
        descr => 'Fedora $releasever - Test Updates Source',
        mirrorlist => 'https://mirrors.fedoraproject.org/metalink?repo=updates-testing-source-f$releasever&arch=$basearch'
    }
    yumrepo { 'fedora-debuginfo':
        enabled => '0',
        failovermethod => 'priority',
        gpgcheck => '1',
        gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch',
        metadata_expire => '7d',
        descr => 'Fedora $releasever - $basearch - Debug',
        mirrorlist => 'https://mirrors.fedoraproject.org/metalink?repo=fedora-debug-$releasever&arch=$basearch'
    }
    yumrepo { 'fedora-source':
        enabled => '0',
        failovermethod => 'priority',
        gpgcheck => '1',
        gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch',
        descr => 'Fedora $releasever - Source',
        metadata_expire => '7d',
        mirrorlist => 'https://mirrors.fedoraproject.org/metalink?repo=fedora-source-$releasever&arch=$basearch'
    }
}

