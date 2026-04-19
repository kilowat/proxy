# MTProto — Quick Start

## Генерация ключей 🔐

### MTProto secret

```bash
openssl rand -hex 16
```

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
