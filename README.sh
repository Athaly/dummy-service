# Dummy Systemd Service

Este proyecto es parte de un ejercicio de DevOps para aprender a crear y gestionar servicios con systemd.

## ¿Qué hace?

Crea un script que corre en segundo plano y escribe un mensaje cada 10 segundos en `/var/log/dummy-service.log`.

## Archivos

- `dummy.sh`: Script que simula una app en segundo plano.
- `dummy.service`: Unidad de systemd para ejecutar el script.

## Instrucciones

```bash
# Copiar y dar permisos al script
sudo cp dummy.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/dummy.sh

# Copiar el archivo de servicio
sudo cp dummy.service /etc/systemd/system/

# Recargar systemd
sudo systemctl daemon-reexec
sudo systemctl daemon-reload

# Iniciar y habilitar el servicio
sudo systemctl start dummy
sudo systemctl enable dummy

# Comandos útiles
sudo systemctl status dummy
sudo journalctl -u dummy -f
sudo systemctl stop dummy
sudo systemctl disable dummy
```
