

# Restablecimiento de la contraseña de root del FLSun Speeder Pad

Como sabes, FLSun no proporciona la contraseña predeterminada para el Speeder Pad.  \
Tiene sentido porque, al ser un dispositivo IoT, es peligroso dejar la contraseña predeterminada.  \
Ellos publican una imagen completa para permitirte "restablecer" la contraseña.

Como no tengo una tarjeta SD para esto, y prefiero solo cambiar la contraseña predeterminada y no reinstalar todo.

Existen dos formas de usar este repositorio de GitHub:

## Si solo quieres que tu contraseña se establezca como `flsun`

- Con tu Speeder Pad apagado.
- Descarga el archivo `update.bin`.
- Colócalo en la raíz de la unidad USB.
- Vuelve a insertar la unidad USB.
- Enciende tu Speeder Pad.

Tu Speeder Pad te indicará que está aplicando una actualización y se reiniciará.
Después del reinicio, la contraseña del usuario `pi` será `flsun`

Posteriormente, es recomendable cambiar la contraseña por una más segura.

## Si deseas crear una actualización con otra contraseña

Debes tener Docker y ejecutar los siguientes comandos, reemplazando `YOUR_PASSWORD` con la contraseña de tu elección:

```
docker-compose build tools
docker-compose run -e SPEEDER_PAD_PWD=YOUR_PASSWORD tools create-update
```

Esto generará un nuevo `update.bin` con tu contraseña.  \
Y sigue los mismos pasos.
