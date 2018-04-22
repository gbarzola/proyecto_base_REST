json.extract! producto, :id, :id_producto, :descripcion_producto, :precio_producto, :stockCrear, :created_at, :updated_at
json.url producto_url(producto, format: :json)
