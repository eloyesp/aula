# README

# Organización del aula de informática

## Server

El aula de informática (ai-bhm.unl.edu.ar) tiene un server en el cual corren los
siguientes servicios:

- dhcpd: (DHCP) le indica a las pcs cual es la ip que les corresponde según
  su MAC (dirección única dada por su placa de red) e indica cual es
  el archivo que se debe cargar para el PXE (booteo por red)
- tftpd: ftp para el booteo local, la configuración está en el
  directorio `/tftp`
- httpd: (apache web server) sirve para servir los repositorios
  locales.
- named: (bind DNS server) relaciona internamente los nombres de las
  pcs con las ips, de forma que escribir pc10 signifique lo mismo que
  192.168.1.10 así como pc4 = server = puppet = 192.168.1.4
- puppetmasterd: servidor de configuraciones. Permite centralizar la
  configuración de las distintas pcs. La configuración se organiza en
  manifiestos los cuales se encuentran en `/etc/puppet`

## Nombres

- nombre de dominio: toda el aula se encuentra en el dominio
  (inventado) `ai-bhm.unl.edu.ar`
- Las pcs de usuario se llaman `pc##` dónde `##` es un número entre 10 y
  39 dependiendo del lugar en la sala. Como alias pueden tener `al##`.
- La pc del profesor es `pc40` o (como alias) `profesor`.
- El servidor se llama `servidor` y como alias `s4`, `puppet` y `server`.
- Estos nombres serán accesibles desde el DNS en el servidor, los
  mirror (slave) en `pc10` y `pc19`.
- Estos estaran copiados en los archivos `hosts` en `/etc/` cuyo modelo
  esta en el directorio `resources/hosts` y es accesible desde la red en
  `http://servidor/mirror/resources/files/hosts`

## Repos

Se mantienen copias locales de los repositorios de fedora 14 (tanto de
i386 como de x86_64).

Solo se clona el repositorio `/releases/14/Fedora/i386/os` que se
sincroniza con el repositorio de fedora mediante el script en
`lib/mirror_sync.rb` mediante rsync. Se utilizan *excludes* en el archivo
`resources/excludes`

Por otro lado se crea un mirror local con paquetes específicos en:
`/releases/14/Local/i386/os` el cual se construye mediante el script
`lib/local_repo.rb` que toma los rpm descargados por las pcs `pc10` y
`pc15` de 32 y 64 bits respectivamente (en estas y solo en estas
computadoras están habilitados los mirrors remotos).

Los repositorios locales se encuentran configurados en el directorio
`/etc/yum.repos/local.repo` que esta configurado mediante puppet.

