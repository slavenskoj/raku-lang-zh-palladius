#!/usr/bin/env raku

use Test;
use lib 'lib';
use Lang::ZH::Palladius;

plan 27;

# Test basic conformance to the comparison table

# Multi-syllable tests
is to-palladius('beijing', :from<pinyin>), 'бэйцзин', 'Pinyin: beijing → бэйцзин';
is to-palladius('pei-ching', :from<wade-giles>), 'бэйцзин', 'Wade-Giles: pei-ching → бэйцзин';
is to-palladius('ㄅㄟˇㄐㄧㄥ', :from<bopomofo>), 'бэйцзин', 'Bopomofo: ㄅㄟˇㄐㄧㄥ → бэйцзин';

# B group tests
is to-palladius('ba', :from<pinyin>), 'ба', 'Pinyin: ba → ба';
is to-palladius('pa', :from<wade-giles>), 'ба', 'Wade-Giles: pa → ба';
is to-palladius('ㄅㄚ', :from<bopomofo>), 'ба', 'Bopomofo: ㄅㄚ → ба';

# P group tests (with apostrophe distinction)
is to-palladius('pa', :from<pinyin>), 'па', 'Pinyin: pa → па';
is to-palladius("p'a", :from<wade-giles>), 'па', 'Wade-Giles: p\'a → па';
is to-palladius('ㄆㄚ', :from<bopomofo>), 'па', 'Bopomofo: ㄆㄚ → па';

# Special case: luo/lo mapping
is to-palladius('luo', :from<pinyin>), 'ло', 'Pinyin: luo → ло';
is to-palladius('lo', :from<pinyin>), 'ло', 'Pinyin: lo → ло (rare syllable)';

# Special finals
is to-palladius('hm', :from<pinyin>), 'хм', 'Pinyin: hm → хм';
is to-palladius('hng', :from<pinyin>), 'хнг', 'Pinyin: hng → хнг';
is to-palladius('ㄏㆬ', :from<bopomofo>), 'хм', 'Bopomofo: ㄏㆬ → хм';

# Retroflex sounds
is to-palladius('zhi', :from<pinyin>), 'чжи', 'Pinyin: zhi → чжи';
is to-palladius('chi', :from<pinyin>), 'чи', 'Pinyin: chi → чи';
is to-palladius('shi', :from<pinyin>), 'ши', 'Pinyin: shi → ши';
is to-palladius('ri', :from<pinyin>), 'жи', 'Pinyin: ri → жи';

# Palatalized sounds
is to-palladius('ji', :from<pinyin>), 'цзи', 'Pinyin: ji → цзи';
is to-palladius('qi', :from<pinyin>), 'ци', 'Pinyin: qi → ци';
is to-palladius('xi', :from<pinyin>), 'си', 'Pinyin: xi → си';

# Special characters
is to-palladius('nü', :from<pinyin>), 'нюй', 'Pinyin: nü → нюй';
is to-palladius('lü', :from<pinyin>), 'люй', 'Pinyin: lü → люй';

# Finals
is to-palladius('a', :from<pinyin>), 'а', 'Pinyin: a → а';
is to-palladius('er', :from<pinyin>), 'эр', 'Pinyin: er → эр';
is to-palladius('ㄝ', :from<bopomofo>), 'э̂', 'Bopomofo: ㄝ → э̂';

# Test with tones (should be removed)
is to-palladius('mā', :from<pinyin>), 'ма', 'Pinyin with tone: mā → ма';

done-testing;