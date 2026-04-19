# MTProto + Xray (VLESS REALITY) — Quick Start

## Генерация ключей 🔐

### MTProto secret

```bash
openssl rand -hex 16
```

добавь префикс:

```
XXXXXXXXXXXX
```

пример:

```
ee3f9c1e2ab45c67890abcd1234567890
```

---

### UUID

```bash
cat /proc/sys/kernel/random/uuid
```

используется в `.env` как:

```
XRAY_UUID=...
```

---

### REALITY keys

```bash
docker run --rm teddysun/xray xray x25519
```

результат:

```
Private key:
Public key:
```

используй:

* Private key → в `.env`
* Public key → в клиенте

---

### shortId

```bash
openssl rand -hex 8
```

используется в `.env`:

```
XRAY_SHORT_ID=...
```

---

## Запуск 🚀

```bash
docker compose up -d
```

---

## Логи MTProto

```bash
docker compose logs mtproto
```

или сразу получить ссылку подключения:

```bash
docker compose logs mtproto | grep -i proxy
```

---

## Логи Xray

```bash
docker compose logs xray
```

---

## Ссылка подключения Telegram 📱

После запуска MTProto контейнер сам выводит invite-ссылку вида:

```
tg://proxy?server=SERVER_IP&port=443&secret=SECRET
```

или web-вариант:

```
https://t.me/proxy?server=SERVER_IP&port=443&secret=SECRET
```

Если нужно сформировать вручную:

```bash
echo "https://t.me/proxy?server=$(curl -s ifconfig.me)&port=443&secret=$SECRET"
```

(SECRET берётся из `.env`)

---

Готово ✅
