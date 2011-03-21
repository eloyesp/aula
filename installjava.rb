#!/bin/env ruby
version = "jre1.6.0_24"
install_path = "/opt/#{version}"

# faltan: java_vm, jcontrol y ControlPanel

resultados = `alternatives  --install /usr/bin/java java #{install_path}/bin/java 100 \\
--slave /usr/bin/javaws javaws #{install_path}/javaws \\
--slave /usr/bin/keytool keytool #{install_path}/bin/keytool \\
--slave /usr/bin/orbd orbd #{install_path}/bin/orbd \\
--slave /usr/bin/pack200 pack200 #{install_path}/bin/pack200 \\
--slave /usr/bin/policytool policytool #{install_path}/bin/policytool \\
--slave /usr/bin/rmid rmid #{install_path}/bin/rmid \\
--slave /usr/bin/rmiregistry rmiregistry #{install_path}/bin/rmiregistry \\
--slave /usr/bin/servertool servertool #{install_path}/bin/servertool \\
--slave /usr/bin/tnameserv tnameserv #{install_path}/bin/tnameserv \\
--slave /usr/bin/unpack200 unpack200 #{install_path}/bin/unpack200 \\
--slave /usr/bin/java_vm java_vm #{install_path}/bin/java_vm`

puts resultados

# en este punto no estoy seguro
# --slave /usr/lib/mozilla/plugins/libjavaplugin.so libjavaplugin.so #{install_path}/lib/i386/libnpjp2.so
# /usr/lib/jvm/jre jre
# /usr/lib/jvm/jre-gcj jre_gcj
# /usr/lib/jvm/java-1.6.0 java_sdk_1.6.0
# /usr/lib/jvm/jre-1.6.0 jre_1.6.
# --slave /usr/lib/jvm/java java_sdk #{install_path} \
# --slave /usr/lib/jvm/java-1.6.0 java_sdk_1.6.0 #{install_path} \
# --slave /usr/lib/jvm-exports/java java_sdk_exports #{install_path} \
# --slave /usr/lib/jvm-exports/java-openjdk java_sdk_openjdk_exports #{install_path} \
# --slave /usr/lib/jvm-exports/java-1.6.0 java_sdk_1.6.0_exports #{install_path} \
# --slave /usr/lib64/mozilla/plugins/libjavaplugin.so libjavaplugin.so.x86_64 #{install_path} \
# --slave /usr/bin/javah javah #{install_path} \
# --slave /usr/bin/javap javap #{install_path} \
# --slave /usr/bin/javac javac #{install_path} \
# --slave /usr/bin/javadoc javadoc #{install_path} \
# --slave /usr/share/man/man1/javadoc.1.gz javadoc.1.gz #{install_path} \
# --slave /usr/share/man/man1/javac.1.gz javac.1.gz #{install_path} \
# --slave /usr/share/man/man1/javap.1.gz javap.1.gz #{install_path} \
# --slave /usr/share/man/man1/javah.1.gz javah.1.gz #{install_path}`

