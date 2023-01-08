# FLSun Speeder Pad root password reset

As you know FLSun do not provide the default password for the Speeder Pad.  \
It make sense because as an IoT device, it's dangerous to let the default password.  \
They release a complete image to let your "reset" the password.

As I've no SDCard for this, and I prefer only changing the default password and not reinstalling all.

There's two way of using this github repo :

## You only want to get your password set to `flsun`

- With your Speeder Pad off.
- Download the `update.bin` file.
- Put it at the root of the USB key.
- Plug back the USB key.
- Start your Speeder Pad.

Your Speeder Pad will tell you it make an update and reboot.
After the reboot the user `pi` password will be `flsun`

Afterwards it's better to change the password, to another one more challenging.

## If your want to create an update with another password

You must have docker and run thoses commands replacing `YOUR_PASSWORD` with your password of choice :

```
docker-compose build tools
docker-compose run -e SPEEDER_PAD_PWD=YOUR_PASSWORD tools create-update
```

It will generate a new `update.bin` with your password.  \
And follow the same steps.
