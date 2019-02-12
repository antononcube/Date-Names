unit module Date::Names::ru;

# note all possible hashes and keys exist but they may have missing values
constant $mon = %(
    # Russian
    1, 'январь',    2, 'февраль',  3, 'март',    4, 'апрель',
    5, 'май',       6, 'июнь',     7, 'июль',    8, 'август',
    9, 'сентябрь', 10, 'октябрь', 11, 'ноябрь', 12, 'декабрь'
);

constant $dow = %(
    # Russian
    1, 'понедельник', 2, 'вторник', 3, 'среда',      4, 'четверг',
    5, 'пятница',     6, 'суббота', 7, 'воскресенье'
);

# three-letter abbreviations
constant $mon3 = %(
    # Russian
    1, 'янв', 2, 'фев', 3, 'мар',  4, 'апр',  5, 'май',  6, 'июн',
    7, 'июл', 8, 'авг', 9, 'сен', 10, 'окт', 11, 'ноя', 12, 'дек'
);

# two-letter abbreviations
constant $dow2 = %(
    # Russian
    1, 'Пн', 2, 'Вт', 3, 'Ср', 4, 'Чт',
    5, 'Пт', 6, 'Сб', 7, 'Вс'
);

constant $dow3 = %(
    # Russian
    1, '', 2, '', 3, '', 4, '',
    5, '', 6, '', 7, ''
);
