help:
	@echo "Существующие команды"
	@echo "-------------------------------------------------------------"
	@echo "install       : Установка rasa и rasa[spacy] Так же spacy-ru"
	@echo "train         : Тренировка модели"
	@echo "shell         : Запуск консоли для проверки"
	@echo "clean         : Очистить проект"
	@echo "intr          : Аналогично команде rasa interactive"
	@echo "-------------------------------------------------------------"

install:
	pip3 install rasa
	pip3 install rasa[spacy]
	git clone -b v2.1 https://github.com/buriy/spacy-ru.git && cp -r ./spacy-ru/ru2/. ./ru2
	rm -rf ./spacy-ru

train:
	rasa train

shell: train
	rasa shell

clean:
	rm -rf results/**/*.*
	rm -rf models/**/*.*
	rm -rf __pycache__

intr:
	rasa interactive