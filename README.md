# Lang::ZH::Palladius

A Raku module for converting Chinese romanization systems (Pinyin, Wade-Giles, Bopomofo) to the Russian Palladius system.

### English Overview

The Palladius system is a method for transcribing Chinese into Russian Cyrillic script, developed by Russian sinologist Pyotr Ivanovich Kafarov (Палладий). This system has been the standard for Russian sinology since the 19th century and is still widely used in Russian academic works on China.

This module provides conversion from three major Chinese romanization systems:
- **Pinyin** (汉语拼音) - officially the **Chinese Phonetic Alphabet**, is the most common [romanization](https://en.wikipedia.org/wiki/Romanization) system for [Standard Chinese](https://en.wikipedia.org/wiki/Standard_Chinese)
- **Wade-Giles** - A romanization system previously used in English-speaking countries
- **Bopomofo** (注音符号) - The phonetic system using created by [Zhang Binglin](https://en.wikipedia.org/wiki/Zhang_Binglin), taken mainly from "[regularized](https://en.wikipedia.org/wiki/Regular_script)" forms of ancient Chinese characters

### Обзор

Система Палладия — это метод транскрипции китайского языка на русскую кириллицу, разработанный русским синологом Петром Ивановичем Кафаровым (Палладием). Эта система является стандартом в русской синологии с XIX века и до сих пор широко используется в российских академических работах о Китае.

Данный модуль обеспечивает преобразование из трёх основных систем романизации китайского языка:
- **Пиньинь** (汉语拼音) — официальная система романизации КНР
- **Уэйд-Джайлз** — система романизации, ранее использовавшаяся в англоязычных странах
- **Чжуинь** (注音符号) — Фонетическая система, созданная Чжан Бинлинем (章炳麟), которая берёт за основу главным образом стандартизированные формы древних китайских иероглифов.

### Установка

```bash
zef install Lang::ZH::Palladius
```

### Использование

```raku
use Lang::ZH::Palladius;

# Из пиньинь
say to-palladius('beijing', :from<pinyin>);           # бэйцзин
say to-palladius('shanghai', :from<pinyin>);          # шанхай

# Из системы Уэйда-Джайлза
say to-palladius('pei-ching', :from<wade-giles>);     # бэйцзин
say to-palladius('shang-hai', :from<wade-giles>);     # шанхай

# Из чжуинь (бопомофо)
say to-palladius('ㄅㄟˇ ㄐㄧㄥ', :from<bopomofo>);      # бэйцзин
```

### Возможности

- Полное соответствие всех китайских слогов согласно Большому китайско-русскому словарю Ошанина
- Автоматическое удаление тоновых знаков из пиньинь
- Правильная обработка различий придыхательных/непридыхательных согласных
- Поддержка редких слогов и особых финалей (m, n, ng, er)
- Обработка как слога 'luo', так и редкого 'lo' с отображением в 'ло'

### Технические подробности

Модуль реализует полную таблицу транскрипции Палладия, сохраняя следующие ключевые различия:
- Придыхательные и непридыхательные согласные (п/б, т/д, к/г и т.д.)
- Ретрофлексные звуки (чж/ч/ш/ж)
- Палатализованные звуки (цз/ц/с)
- Свистящие звуки (цз/ц/с)

## Примеры

### Распространённые китайские имена

```raku
# Historical figures / Исторические личности
say to-palladius('kongzi', :from<pinyin>);      # кунцзы (Конфуций)
say to-palladius('laozi', :from<pinyin>);       # лаоцзы (Лао-цзы)
say to-palladius('sunzi', :from<pinyin>);       # суньцзы (Сунь-цзы)
```

### Особые случаи

```raku
# Rare syllables / Редкие слоги
say to-palladius('lo', :from<pinyin>);          # ло
say to-palladius('hm', :from<pinyin>);          # хм
say to-palladius('hng', :from<pinyin>);         # хнг

# With ü / С умлаутом
say to-palladius('lü', :from<pinyin>);          # люй
say to-palladius('nüe', :from<pinyin>);         # нюэ
```

## Contributing

https://github.com/slavenskoj/raku-lang-zh-palladius

## License

This module is licensed under the Artistic License 2.0.

## Author

Danslav Slavenskoj

## See Also

- [Palladius system on Wikipedia](https://en.wikipedia.org/wiki/Cyrillization_of_Chinese)
- [Система Палладия в Википедии](https://ru.wikipedia.org/wiki/Палладия_система)