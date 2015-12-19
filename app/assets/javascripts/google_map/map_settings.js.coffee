LocalSupport.MapSettings = ->
  settings =
    id: "map_canvas"
    zoom: 12
    lat: 45.0535
    lng: 38.9642

  for: (provider) ->
    internal:
      id: settings.id
    provider:
      zoom: settings.zoom
      center: new provider.maps.LatLng(settings.lat, settings.lng)

