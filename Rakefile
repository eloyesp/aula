# -*- coding: utf-8 -*-
#require /lib

# directorios
excludes = "/home/eloyesp/comandos/excludes"
cache_dir = "/var/cache/yum" #/i386/14
repo_dir = "/repo"
server_repo_dir = "/mnt/imagenes/repo"

# direcciones
downloader_x86_64 = "root@ai-bhm16"
server = "root@192.168.1.4"
logfile = "log/mirror.log"

namespace :repo do

  desc "actualizar_copia_local"
  task :actualizar_copia_local do
    puts "actualizando copia local"
    `rsync -aHvv --exclude-from=$excludes --numeric-ids \
     #{downloader_x86_64}:#{cache_dir}/x86_64/14/       \
     #{repo_dir}/releases/14/Local/x86_64 >> #{logfile}`
  end

  task :ejecutar_create_repo do
    puts "ejecutando createrepo"
    `createrepo --profile --update -d #{repo_dir}/releases/14/Local/x86_64 \
     &>> #{logfile}`
    `createrepo --profile --update -d #{repo_dir}/releases/14/Local/i386   \
     &>> #{logfile}`
  end
  task :limpiar_copia_remota => [:actualizar_copia_local] do
  end
  task :limpieza_local do
  end
  task :clonar_en_el_servidor => [:ejecutar_create_repo] do
    puts "clonando en el servidor"
    `rsync -aHvv --numeric-ids  #{repo_dir}/ #{server}:#{server_repo_dir} \
     &>> #{logfile}`
  end
  task :sync => [:actualizar_copia_local, :ejecutar_create_repo,
                 :clonar_en_el_servidor] do
    puts "terminó"
  end
end
