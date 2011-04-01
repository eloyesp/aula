# TODO move preconfig to somewhere else?
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
#require /lib/*.rb
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each do |file|
  require File.basename(file, File.extname(file))
end
# load /tasks/*.rake
Dir['tasks/**/*.rake'].each { |t| load t }

# directorios
excludes = "/home/eloyesp/comandos/excludes"
cache_dir = "/var/cache/yum" #/i386/14
repo_dir = "/repo"
server_repo_dir = "/mnt/imagenes/repo"

# direcciones
downloader_x86_64 = "root@192.168.1.16"
downloader_i386 = "root@192.168.1.13"
server = "root@192.168.1.4"
logfile = "log/mirror.log"

