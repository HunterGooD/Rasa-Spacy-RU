# Rasa-Spacy-RU

Для проверки взаимодействия Rasa Open Source со Spacy-RU.

## Установка

Создать виртуальное окружение с версией **python3.6+**.

```bash
$ python3 -m venv env
$ source env/bin/activate
```

### Для установки в ручную (Рекомендуется)

Далее следует установить сам фреймворк Rasa open source. Для этого нужно ввести следующие команды:

```bash
$ pip install rasa
$ pip install rasa[spacy]
```

После чего необходимо скачать [spacy-ru](https://github.com/buriy/spacy-ru) и установить по инструкции. То есть скопировать файл ru2 из папки репозитория в корень этого репозитория.

### Для установки автоматически (могут быть серьезные ошибки!!)

Для начала ознакомьтесь с справкой `Makefile`. Введя следующею команду. 

```bash
$ make help
```

Чтобы установить.

```bash
$ make install
```

После чего дождитесь окончания установки.

## Использование

Для начала нужно обучить модель вводим команду 

```bash
$ rasa train
```

После завершения можно использовать все доступные команды `rasa`.
Для их просмотра достаточно запустить команду `rasa` без аргументов.
