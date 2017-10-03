def error(message)
  say message
  logger.error message
  kafo.class.exit 101
end

certs_tar = param('foreman_proxy_certs', 'certs_tar') ||
  param('foreman_proxy_content', 'certs_tar')
  
if certs_tar.value
  certs_tar.value = File.expand_path(certs_tar.value)
  if param('certs', 'deploy').value && !File.file?(certs_tar.value)
    error "The certs tar file generated by the server is not present at #{certs_tar.value}, exiting."
  end
end
