#!/usr/bin/env raku
use v6.d;

use LLM::Functions;
use LLM::Prompts;

# The OpenAI's model gpt-4-1106-preview produces the most faithful looking results,
# but it can take up to 90 seconds per generation.
# The other models 3-10 times faster.

# When using gpt-4 or gpt-4-1106-preview we might get the Raku code placed within Markdown code delimiters.
# Also, most of the time the comments are in the original example file are skipped.

my $dirName = $*CWD;

my $exampleFile = slurp($dirName ~ '/lib/Date/Names/en.rakumod');

my $conf = llm-configuration('ChatGPT', model => 'gpt-4-1106-preview', max-tokens => 4096, temperature => 0.2);

# Using gpt-3.5-turbo-16k on these generations is:
#       o ≈ 10 times faster than using gpt-4-1106-preview
#       o ≈ 3 times faster than using gpt-4
#my $conf = llm-configuration('ChatGPT', model => 'gpt-3.5-turbo-16k', max-tokens => 4096, temperature => 0.2);

my &fgen = llm-function(
        { "Generate the Raku module code for the language $^a that corresponds to the following module code for English:\n\n $^b"
                ~ "\n\nKeep the code comments.\n" ~ llm-prompt('NothingElse')('Raku code') },
        e => $conf);

my @langs = <Bulgarian Portuguese Russian Serbian Turkish>;

for @langs -> $lang {
        my $langCode = llm-synthesize(['Give the ISO 639-2 alpha 2 language code for:', $lang, llm-prompt('NothingElse')('text ansswer')]);

        say "Language $lang with ISO 639-2 alpha 2 language code: ⎡$langCode⎦.";

        my $stime = now;
        my $res = &fgen($lang, $exampleFile);
        my $etime = now;

        say "Generation time { $etime - $stime }.";

        spurt($dirName ~ "/lib/Date/Names/$langCode.rakumod", $res);
}
