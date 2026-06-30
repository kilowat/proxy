### Xray VLESS-REALITY Docker

Быстрое развертывание прокси-сервера VLESS REALITY с помощью Docker Compose.

### Быстрый старт 🚀

### 1\. Генерация ключей

Выполни команды в терминале для создания необходимых параметров:

bash

    # UUID для пользователя
    cat /proc/sys/kernel/random/uuid
    
    # Short ID (8 байт)
    openssl rand -hex 8
    
    # Пара ключей REALITY
    docker run --rm teddysun/xray xray x25519
    

Use code with caution.

### 2\. Настройка окружения

Создай файл `.env` в корне проекта и заполните его полученными данными:

ini

    XRAY_UUID=ваш_uuid
    XRAY_PRIVATE_KEY=ваш_private_key
    XRAY_SHORT_ID=ваш_short_id
    XRAY_SERVER_NAME=://cloudflare.com
    PROXY_NAME=MyVlessProxy
    

Use code with caution.

### 3\. Запуск и получение ссылки

Подними контейнер и сгенерируй ссылку для импорта в клиент (Hiddify, Nekobox и др.):

bash

    # Запуск сервера
    docker compose up -d
    
    # Создание ссылки подключения
    chmod +x xray-link.sh && ./xray-link.sh
    

Use code with caution.

### Управление 🛠️

*   **Логи сервера:** `docker compose logs xray`
*   **Перезапуск:** `docker compose restart xray`
*   **Остановка:** `docker compose down`