namespace :repo do

  task :actualizar_copia_local do
    puts "actualizando copia local"
    `rsync -aHvv --exclude-from=$excludes --numeric-ids \
     #{downloader_x86_64}:#{cache_dir}/x86_64/14/       \
     #{repo_dir}/releases/14/Local/x86_64 >> #{logfile}`
    `rsync -aHvv --exclude-from=$excludes --numeric-ids \
     #{downloader_i386}:#{cache_dir}/i386/14/           \
     #{repo_dir}/releases/14/Local/i386 >> #{logfile}`
  end

  task :ejecutar_create_repo do
    puts "ejecutando createrepo"
    `createrepo --profile --update -d #{repo_dir}/releases/14/Local/x86_64 \
     &>> #{logfile}`
    `createrepo --profile --update -d #{repo_dir}/releases/14/Local/i386   \
     &>> #{logfile}`
  end

  desc "limpia los repositorios remotos para liberar espacio"
  task :limpiar_copia_remota => [:actualizar_copia_local] do
  end

  desc "Elimina paquetes obsoletos"
  task :limpieza_local do
  end

  task :clonar_en_el_servidor => [:ejecutar_create_repo] do
    puts "clonando en el servidor"
    `rsync -aHvv --numeric-ids  #{repo_dir}/ #{server}:#{server_repo_dir} \
     &>> #{logfile}`
  end

  desc 'Actualiza los repositorios locales'
  task :sync => [:actualizar_copia_local, :ejecutar_create_repo,
                 :clonar_en_el_servidor] do
    puts 'finish'
  end
end

