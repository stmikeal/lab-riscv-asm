# Лабораторная работа 1

## Цель 
Получить общее представление о системе команд RISC-V путём решения несложной прикладной задачи.

## Задание
1. Создать аккаунт на github (если еще нет) и создать репозиторий с именем lab-riscv-asm.
2. Разработать алгоритм решения вашего варианта задачи.
3. Реализовать алгоритм на языке ассемблера RISCV ISA. Исходный код программы
сохранить в репозитории.
4. Реализовать алгоритм на языке Си. Исходный код программы сохранить в репозитории.
5. Скомпилировать Си-код используя riscv-компилятор. Получить дамп-файл из
скомпилированного исполняемого файла вашей программы. Сохранить дамп-файл в
репозитории.
6. Оформить отчет о проделанной работе и результатах в виде README.md файла вашего
репозитоия.
7. Продемонстрировать результаты работы в симуляторе Venus https://www.kvakil.me/venus/

## Вариант задания (3)
Найти значение минимального элемента массива. (N = 5, M = 4)

## Артефакты

+ main.S - программа на RISCV ASM
+ main.c - программа на Cb
+ main.dump - дамп-файл программы на Си

## Сборка

Сборка примера на Си в полностью настроенном окружении выполняется с использованием GNU Make. Для этого, находясь в каталоге с `Makefile` необходимо выполнить команду:
```
make
```

## Результаты

Была разработана программа на языке программирования C, на основе которой был написан код на языке ассемблера. Код был проверен в симуляторе Venus. После компиляции кода на языке C был получен файл ELF, из которого с помощью дизассемблирования был сгенерирован файл дампа.