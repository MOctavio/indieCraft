this.remoteRequest = (url,data) ->
  $.ajax
    type: 'patch'
    url: url
    data: data
    processData: false
    contentType: false
  return
