```raku
unit module Date::Names::tr;

#********
# Turkish
#********

# IMPORTANT:
#
# All valid month and weekday name and abbreviation arrays must have
# either twelve (12) or seven (7) elements, respectively.  Arrays
# without month or day values MUST be completely empty as are the ones
# shown below.
#
# Note the standard eight arrays should exist in the file (see Table 2
# in the README for the correct names). They may be empty, but there
# should be eight (8) total arrays.
#
# To be an acceptable language for Date::Names, there must be defined completely
# at least one of the standard abbreviation sets for both months and weekdays
# in order to provide a default abbreviation set for the user in the
# event another abbreviation set is desired but not available.

#=== FULL NAMES ======================================================
# 1
our $mon = <
     Ocak       Şubat      Mart       Nisan
     Mayıs      Haziran    Temmuz     Ağustos
     Eylül      Ekim       Kasım      Aralık
>;

# 2
our $dow = <
     Pazartesi  Salı       Çarşamba   Perşembe
     Cuma       Cumartesi  Pazar
>;

#=== THREE-LETTER ABBREVIATIONS ======================================
# 3
our $mon3 = <
     Oca  Şub  Mar  Nis  May  Haz
     Tem  Ağu  Eyl  Eki  Kas  Ara
>;

# 4
our $dow3 = <
     Pzt  Sal  Çar  Per
     Cum  Cmt  Paz
>;

#=== TWO-LETTER ABBREVIATIONS ========================================
# 5
our $mon2 = <
>;

# 6
our $dow2 = <
>;

#=== MIXED-LENGTH ABBREVIATIONS ======================================
# 7
our $mona = <
>;

# 8
our $dowa  = <
>;
```