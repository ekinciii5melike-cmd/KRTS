# KRTS

## Geliştirme konteyneri (VS Code Dev Container)

Bu proje için bir VS Code devcontainer yapılandırması eklendi. Her geliştiricinin aynı ortamı kullanması için `.devcontainer` dizininde Dockerfile ve yapılandırma bulunur.

Hızlı kullanım:

- VS Code'ta `Command Palette` > `Dev Containers: Reopen in Container` seçeneğini kullanın.
- Alternatif olarak `Remote - Containers` eklentisini yükleyin ve repoyu yeniden açın.

Manuel komutlar (yerel değil, VS Code üzerinden önerilir):

```bash
# VS Code içinde: Command Palette -> Dev Containers: Reopen in Container
```

Container oluşturulduktan sonra `postCreateCommand` şu adımları yapar:
- `.venv` oluşturur (varsa atlar)
- `package.json` varsa `npm install` çalıştırır

Eğer isterseniz, devcontainer içinde ek uzantılar veya ek paketler ekleyebilirim.
