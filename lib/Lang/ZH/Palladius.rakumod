unit module Lang::ZH::Palladius;

# Conversion mappings from Wade-Giles to Palladius
our %wade-giles-to-palladius = (
    # B group
    'pa' => 'ба', 'pai' => 'бай', 'pang' => 'бан', 'pan' => 'бань',
    'pao' => 'бао', 'pieh' => 'бе', 'pi' => 'би', 'ping' => 'бин',
    'pin' => 'бинь', 'po' => 'бо', 'pu' => 'бу', 'pei' => 'бэй',
    'pêng' => 'бэн', 'pên' => 'бэнь', 'pien' => 'бянь', 'piao' => 'бяо',
    
    # P group (with apostrophe)
    "p'a" => 'па', "p'ai" => 'пай', "p'ang" => 'пан', "p'an" => 'пань',
    "p'ao" => 'пао', "p'ieh" => 'пе', "p'i" => 'пи', "p'ing" => 'пин',
    "p'in" => 'пинь', "p'o" => 'по', "p'ou" => 'поу', "p'u" => 'пу',
    "p'ei" => 'пэй', "p'êng" => 'пэн', "p'eng" => 'пэн', "p'ên" => 'пэнь', "p'ien" => 'пянь',
    "p'iao" => 'пяо',
    
    # M group
    'ma' => 'ма', 'mai' => 'май', 'mang' => 'ман', 'man' => 'мань',
    'mao' => 'мао', 'mieh' => 'ме', 'mi' => 'ми', 'ming' => 'мин',
    'min' => 'минь', 'mo' => 'мо', 'mou' => 'моу', 'mu' => 'му',
    'mê' => 'мэ', 'mei' => 'мэй', 'mêng' => 'мэн', 'mên' => 'мэнь',
    'miu' => 'мю', 'mien' => 'мянь', 'miao' => 'мяо',
    
    # F group
    'fa' => 'фа', 'fang' => 'фан', 'fan' => 'фань', 'fo' => 'фо',
    'fou' => 'фоу', 'fu' => 'фу', 'fei' => 'фэй', 'fêng' => 'фэн',
    'fên' => 'фэнь', 'fiao' => 'фяо',
    
    # D group (T without apostrophe)
    'ta' => 'да', 'tai' => 'дай', 'tang' => 'дан', 'tan' => 'дань',
    'tao' => 'дао', 'tieh' => 'де', 'ti' => 'ди', 'ting' => 'дин',
    'to' => 'до', 'tou' => 'доу', 'tu' => 'ду', 'tuan' => 'дуань',
    'tui' => 'дуй', 'tung' => 'дун', 'tun' => 'дунь', 'tê' => 'дэ',
    'tei' => 'дэй', 'têng' => 'дэн', 'tên' => 'дэнь', 'tiu' => 'дю',
    'tia' => 'дя', 'tiang' => 'дян', 'tien' => 'дянь', 'tiao' => 'дяо',
    
    # T group (with apostrophe)
    "t'a" => 'та', "t'ai" => 'тай', "t'ang" => 'тан', "t'an" => 'тань',
    "t'ao" => 'тао', "t'ieh" => 'те', "t'i" => 'ти', "t'ing" => 'тин',
    "t'o" => 'то', "t'ou" => 'тоу', "t'u" => 'ту', "t'uan" => 'туань',
    "t'ui" => 'туй', "t'ung" => 'тун', "t'un" => 'тунь', "t'ê" => 'тэ',
    "t'êng" => 'тэн', "t'ien" => 'тянь', "t'iao" => 'тяо',
    
    # N group
    'na' => 'на', 'nai' => 'най', 'nang' => 'нан', 'nan' => 'нань',
    'nao' => 'нао', 'nieh' => 'не', 'ni' => 'ни', 'ning' => 'нин',
    'nin' => 'нинь', 'no' => 'но', 'nou' => 'ноу', 'nu' => 'ну',
    'nuan' => 'нуань', 'nung' => 'нун', 'nê' => 'нэ', 'nei' => 'нэй',
    'nêng' => 'нэн', 'nên' => 'нэнь', 'niu' => 'ню', 'nü' => 'нюй',
    'nüeh' => 'нюэ', 'nia' => 'ня', 'niang' => 'нян', 'nien' => 'нянь',
    'niao' => 'няо',
    
    # L group
    'la' => 'ла', 'lai' => 'лай', 'lang' => 'лан', 'lan' => 'лань',
    'lao' => 'лао', 'lieh' => 'ле', 'li' => 'ли', 'ling' => 'лин',
    'lin' => 'линь', 'lo' => 'ло', 'lou' => 'лоу', 'lu' => 'лу',
    'luan' => 'луань', 'lung' => 'лун', 'lun' => 'лунь', 'lê' => 'лэ',
    'lei' => 'лэй', 'lêng' => 'лэн', 'liu' => 'лю', 'lü' => 'люй',
    'lüeh' => 'люэ', 'lia' => 'ля', 'liang' => 'лян', 'lien' => 'лянь',
    'liao' => 'ляо',
    
    # G group (K without apostrophe)
    'ka' => 'га', 'kai' => 'гай', 'kang' => 'ган', 'kan' => 'гань',
    'kao' => 'гао', 'kuo' => 'го', 'kou' => 'гоу', 'ku' => 'гу',
    'kua' => 'гуа', 'kuai' => 'гуай', 'kuang' => 'гуан', 'kuan' => 'гуань',
    'kuei' => 'гуй', 'kung' => 'гун', 'kun' => 'гунь', 'ko' => 'гэ',
    'kei' => 'гэй', 'kêng' => 'гэн', 'kên' => 'гэнь',
    
    # K group (with apostrophe)
    "k'a" => 'ка', "k'ai" => 'кай', "k'ang" => 'кан', "k'an" => 'кань',
    "k'ao" => 'као', "k'uo" => 'ко', "k'ou" => 'коу', "k'u" => 'ку',
    "k'ua" => 'куа', "k'uai" => 'куай', "k'uang" => 'куан', "k'uan" => 'куань',
    "k'uei" => 'куй', "k'ung" => 'кун', "k'un" => 'кунь', "k'o" => 'кэ',
    "k'ei" => 'кэй', "k'êng" => 'кэн', "k'ên" => 'кэнь',
    
    # H group
    'ha' => 'ха', 'hai' => 'хай', 'hang' => 'хан', 'han' => 'хань',
    'hao' => 'хао', 'hm' => 'хм', 'hng' => 'хнг', 'huo' => 'хо',
    'hou' => 'хоу', 'hu' => 'ху', 'hua' => 'хуа', 'huai' => 'хуай',
    'huang' => 'хуан', 'huan' => 'хуань', 'hung' => 'хун', 'hun' => 'хунь',
    'hui' => 'хуэй', 'ho' => 'хэ', 'hei' => 'хэй', 'hêng' => 'хэн',
    'hên' => 'хэнь',
    
    # J group (CH without apostrophe)
    'chieh' => 'цзе', 'chi' => 'цзи', 'ching' => 'цзин', 'chin' => 'цзинь',
    'chiu' => 'цзю', 'chüan' => 'цзюань', 'chü' => 'цзюй', 'chiung' => 'цзюн',
    'chün' => 'цзюнь', 'chüeh' => 'цзюэ', 'chia' => 'цзя', 'chiang' => 'цзян',
    'chien' => 'цзянь', 'chiao' => 'цзяо',
    
    # Q group (CH with apostrophe)
    "ch'ieh" => 'це', "ch'i" => 'ци', "ch'ing" => 'цин', "ch'in" => 'цинь',
    "ch'iu" => 'цю', "ch'üan" => 'цюань', "ch'ü" => 'цюй', "ch'iung" => 'цюн',
    "ch'ün" => 'цюнь', "ch'üeh" => 'цюэ', "ch'ia" => 'ця', "ch'iang" => 'цян',
    "ch'ien" => 'цянь', "ch'iao" => 'цяо',
    
    # X group (HS)
    'hsieh' => 'се', 'hsi' => 'си', 'hsing' => 'син', 'hsin' => 'синь',
    'hsiu' => 'сю', 'hsüan' => 'сюань', 'hsü' => 'сюй', 'hsiung' => 'сюн',
    'hsün' => 'сюнь', 'hsüeh' => 'сюэ', 'hsia' => 'ся', 'hsiang' => 'сян',
    'hsien' => 'сянь', 'hsiao' => 'сяо',
    
    # ZH group (CH without apostrophe, different context)
    'cha' => 'чжа', 'chai' => 'чжай', 'chang' => 'чжан', 'chan' => 'чжань',
    'chao' => 'чжао', 'chih' => 'чжи', 'cho' => 'чжо', 'chou' => 'чжоу',
    'chu' => 'чжу', 'chua' => 'чжуа', 'chuai' => 'чжуай', 'chuang' => 'чжуан',
    'chuan' => 'чжуань', 'chui' => 'чжуй', 'chung' => 'чжун', 'chun' => 'чжунь',
    'chê' => 'чжэ', 'chei' => 'чжэй', 'chêng' => 'чжэн', 'chên' => 'чжэнь',
    
    # CH group (with apostrophe, different context)
    "ch'a" => 'ча', "ch'ai" => 'чай', "ch'ang" => 'чан', "ch'an" => 'чань',
    "ch'ao" => 'чао', "ch'ih" => 'чи', "ch'o" => 'чо', "ch'ou" => 'чоу',
    "ch'u" => 'чу', "ch'ua" => 'чуа', "ch'uai" => 'чуай', "ch'uang" => 'чуан',
    "ch'uan" => 'чуань', "ch'ui" => 'чуй', "ch'ung" => 'чун', "ch'un" => 'чунь',
    "ch'ê" => 'чэ', "ch'êng" => 'чэн', "ch'ên" => 'чэнь',
    
    # SH group
    'sha' => 'ша', 'shai' => 'шай', 'shang' => 'шан', 'shan' => 'шань',
    'shao' => 'шао', 'shih' => 'ши', 'shuo' => 'шо', 'shou' => 'шоу',
    'shu' => 'шу', 'shua' => 'шуа', 'shuai' => 'шуай', 'shuang' => 'шуан',
    'shuan' => 'шуань', 'shui' => 'шуй', 'shun' => 'шунь', 'shê' => 'шэ',
    'shei' => 'шэй', 'shêng' => 'шэн', 'shên' => 'шэнь',
    
    # R group (J in Wade-Giles)
    'jang' => 'жан', 'jan' => 'жань', 'jao' => 'жао', 'jih' => 'жи',
    'jo' => 'жо', 'jou' => 'жоу', 'ju' => 'жу', 'jua' => 'жуа',
    'juan' => 'жуань', 'jui' => 'жуй', 'jung' => 'жун', 'jun' => 'жунь',
    'jê' => 'жэ', 'jêng' => 'жэн', 'jên' => 'жэнь',
    
    # Z group (TS without apostrophe)
    'tsa' => 'цза', 'tsai' => 'цзай', 'tsang' => 'цзан', 'tsan' => 'цзань',
    'tsao' => 'цзао', 'tso' => 'цзо', 'tsou' => 'цзоу', 'tsu' => 'цзу',
    'tsuan' => 'цзуань', 'tsui' => 'цзуй', 'tsung' => 'цзун', 'tsun' => 'цзунь',
    'tzŭ' => 'цзы', 'tsê' => 'цзэ', 'tsei' => 'цзэй', 'tsêng' => 'цзэн',
    'tsên' => 'цзэнь',
    
    # C group (TS with apostrophe)
    "ts'a" => 'ца', "ts'ai" => 'цай', "ts'ang" => 'цан', "ts'an" => 'цань',
    "ts'ao" => 'цао', "ts'o" => 'цо', "ts'ou" => 'цоу', "ts'u" => 'цу',
    "ts'uan" => 'цуань', "ts'ui" => 'цуй', "ts'ung" => 'цун', "ts'un" => 'цунь',
    "tz'ŭ" => 'цы', "ts'ê" => 'цэ', "ts'êng" => 'цэн', "ts'ên" => 'цэнь',
    
    # S group (S)
    'sa' => 'са', 'sai' => 'сай', 'sang' => 'сан', 'san' => 'сань',
    'sao' => 'сао', 'so' => 'со', 'sou' => 'соу', 'su' => 'су',
    'suan' => 'суань', 'sui' => 'суй', 'sung' => 'сун', 'sun' => 'сунь',
    'ssu' => 'сы', 'ssŭ' => 'сы', 'sê' => 'сэ', 'sêng' => 'сэн', 'sên' => 'сэнь',
    
    # Others
    'a' => 'а', 'ai' => 'ай', 'ang' => 'ан', 'an' => 'ань', 'ao' => 'ао',
    'wa' => 'ва', 'wai' => 'вай', 'wang' => 'ван', 'wan' => 'вань',
    'wo' => 'во', 'wei' => 'вэй', 'wêng' => 'вэн', 'wên' => 'вэнь',
    'yeh' => 'е', 'yo' => 'ё', 'i' => 'и', 'yi' => 'и', 'ying' => 'ин', 
    'yin' => 'инь', 'm' => 'м', 'n' => 'н', 'ng' => 'нг', 'o' => 'о', 
    'ê' => 'э', 'ou' => 'оу', 'wu' => 'у', 'eh' => 'э̂', 'ei' => 'эй', 
    'êng' => 'эн', 'ên' => 'энь', 'êrh' => 'эр', 'yu' => 'ю', 'yüan' => 'юань',
    'yü' => 'юй', 'yung' => 'юн', 'yün' => 'юнь', 'yüeh' => 'юэ',
    'ya' => 'я', 'yai' => 'яй', 'yang' => 'ян', 'yen' => 'янь', 'yao' => 'яо',
);

# Conversion mappings from Pinyin to Palladius
our %pinyin-to-palladius = (
    # B group
    'ba' => 'ба', 'bai' => 'бай', 'bang' => 'бан', 'ban' => 'бань',
    'bao' => 'бао', 'bie' => 'бе', 'bi' => 'би', 'bing' => 'бин',
    'bin' => 'бинь', 'bo' => 'бо', 'bu' => 'бу', 'bei' => 'бэй',
    'beng' => 'бэн', 'ben' => 'бэнь', 'bian' => 'бянь', 'biao' => 'бяо',
    
    # P group
    'pa' => 'па', 'pai' => 'пай', 'pang' => 'пан', 'pan' => 'пань',
    'pao' => 'пао', 'pie' => 'пе', 'pi' => 'пи', 'ping' => 'пин',
    'pin' => 'пинь', 'po' => 'по', 'pou' => 'поу', 'pu' => 'пу',
    'pei' => 'пэй', 'peng' => 'пэн', 'pen' => 'пэнь', 'pian' => 'пянь',
    'piao' => 'пяо',
    
    # M group
    'ma' => 'ма', 'mai' => 'май', 'mang' => 'ман', 'man' => 'мань',
    'mao' => 'мао', 'mie' => 'ме', 'mi' => 'ми', 'ming' => 'мин',
    'min' => 'минь', 'mo' => 'мо', 'mou' => 'моу', 'mu' => 'му',
    'me' => 'мэ', 'mei' => 'мэй', 'meng' => 'мэн', 'men' => 'мэнь',
    'miu' => 'мю', 'mian' => 'мянь', 'miao' => 'мяо',
    
    # F group
    'fa' => 'фа', 'fang' => 'фан', 'fan' => 'фань', 'fo' => 'фо',
    'fou' => 'фоу', 'fu' => 'фу', 'fei' => 'фэй', 'feng' => 'фэн',
    'fen' => 'фэнь', 'fiao' => 'фяо',
    
    # D group
    'da' => 'да', 'dai' => 'дай', 'dang' => 'дан', 'dan' => 'дань',
    'dao' => 'дао', 'die' => 'де', 'di' => 'ди', 'ding' => 'дин',
    'duo' => 'до', 'dou' => 'доу', 'du' => 'ду', 'duan' => 'дуань',
    'dui' => 'дуй', 'dong' => 'дун', 'dun' => 'дунь', 'de' => 'дэ',
    'dei' => 'дэй', 'deng' => 'дэн', 'den' => 'дэнь', 'diu' => 'дю',
    'dia' => 'дя', 'diang' => 'дян', 'dian' => 'дянь', 'diao' => 'дяо',
    
    # T group
    'ta' => 'та', 'tai' => 'тай', 'tang' => 'тан', 'tan' => 'тань',
    'tao' => 'тао', 'tie' => 'те', 'ti' => 'ти', 'ting' => 'тин',
    'tuo' => 'то', 'tou' => 'тоу', 'tu' => 'ту', 'tuan' => 'туань',
    'tui' => 'туй', 'tong' => 'тун', 'tun' => 'тунь', 'te' => 'тэ',
    'teng' => 'тэн', 'tian' => 'тянь', 'tiao' => 'тяо',
    
    # N group
    'na' => 'на', 'nai' => 'най', 'nang' => 'нан', 'nan' => 'нань',
    'nao' => 'нао', 'nie' => 'не', 'ni' => 'ни', 'ning' => 'нин',
    'nin' => 'нинь', 'nuo' => 'но', 'nou' => 'ноу', 'nu' => 'ну',
    'nuan' => 'нуань', 'nong' => 'нун', 'ne' => 'нэ', 'nei' => 'нэй',
    'neng' => 'нэн', 'nen' => 'нэнь', 'niu' => 'ню', 'nü' => 'нюй',
    'nüe' => 'нюэ', 'nia' => 'ня', 'niang' => 'нян', 'nian' => 'нянь',
    'niao' => 'няо',
    
    # L group
    'la' => 'ла', 'lai' => 'лай', 'lang' => 'лан', 'lan' => 'лань',
    'lao' => 'лао', 'lie' => 'ле', 'li' => 'ли', 'ling' => 'лин',
    'lin' => 'линь', 'luo' => 'ло', 'lo' => 'ло', 'lou' => 'лоу',
    'lu' => 'лу', 'luan' => 'луань', 'long' => 'лун', 'lun' => 'лунь',
    'le' => 'лэ', 'lei' => 'лэй', 'leng' => 'лэн', 'liu' => 'лю',
    'lü' => 'люй', 'lüe' => 'люэ', 'lia' => 'ля', 'liang' => 'лян',
    'lian' => 'лянь', 'liao' => 'ляо',
    
    # G group
    'ga' => 'га', 'gai' => 'гай', 'gang' => 'ган', 'gan' => 'гань',
    'gao' => 'гао', 'guo' => 'го', 'gou' => 'гоу', 'gu' => 'гу',
    'gua' => 'гуа', 'guai' => 'гуай', 'guang' => 'гуан', 'guan' => 'гуань',
    'gui' => 'гуй', 'gong' => 'гун', 'gun' => 'гунь', 'ge' => 'гэ',
    'gei' => 'гэй', 'geng' => 'гэн', 'gen' => 'гэнь',
    
    # K group
    'ka' => 'ка', 'kai' => 'кай', 'kang' => 'кан', 'kan' => 'кань',
    'kao' => 'као', 'kuo' => 'ко', 'kou' => 'коу', 'ku' => 'ку',
    'kua' => 'куа', 'kuai' => 'куай', 'kuang' => 'куан', 'kuan' => 'куань',
    'kui' => 'куй', 'kong' => 'кун', 'kun' => 'кунь', 'ke' => 'кэ',
    'kei' => 'кэй', 'keng' => 'кэн', 'ken' => 'кэнь',
    
    # H group
    'ha' => 'ха', 'hai' => 'хай', 'hang' => 'хан', 'han' => 'хань',
    'hao' => 'хао', 'hm' => 'хм', 'hng' => 'хнг', 'huo' => 'хо',
    'hou' => 'хоу', 'hu' => 'ху', 'hua' => 'хуа', 'huai' => 'хуай',
    'huang' => 'хуан', 'huan' => 'хуань', 'hong' => 'хун', 'hun' => 'хунь',
    'hui' => 'хуэй', 'he' => 'хэ', 'hei' => 'хэй', 'heng' => 'хэн',
    'hen' => 'хэнь',
    
    # J group
    'jie' => 'цзе', 'ji' => 'цзи', 'jing' => 'цзин', 'jin' => 'цзинь',
    'jiu' => 'цзю', 'juan' => 'цзюань', 'ju' => 'цзюй', 'jiong' => 'цзюн',
    'jun' => 'цзюнь', 'jue' => 'цзюэ', 'jia' => 'цзя', 'jiang' => 'цзян',
    'jian' => 'цзянь', 'jiao' => 'цзяо',
    
    # Q group
    'qie' => 'це', 'qi' => 'ци', 'qing' => 'цин', 'qin' => 'цинь',
    'qiu' => 'цю', 'quan' => 'цюань', 'qu' => 'цюй', 'qiong' => 'цюн',
    'qun' => 'цюнь', 'que' => 'цюэ', 'qia' => 'ця', 'qiang' => 'цян',
    'qian' => 'цянь', 'qiao' => 'цяо',
    
    # X group
    'xie' => 'се', 'xi' => 'си', 'xing' => 'син', 'xin' => 'синь',
    'xiu' => 'сю', 'xuan' => 'сюань', 'xu' => 'сюй', 'xiong' => 'сюн',
    'xun' => 'сюнь', 'xue' => 'сюэ', 'xia' => 'ся', 'xiang' => 'сян',
    'xian' => 'сянь', 'xiao' => 'сяо',
    
    # ZH group
    'zha' => 'чжа', 'zhai' => 'чжай', 'zhang' => 'чжан', 'zhan' => 'чжань',
    'zhao' => 'чжао', 'zhi' => 'чжи', 'zhuo' => 'чжо', 'zhou' => 'чжоу',
    'zhu' => 'чжу', 'zhua' => 'чжуа', 'zhuai' => 'чжуай', 'zhuang' => 'чжуан',
    'zhuan' => 'чжуань', 'zhui' => 'чжуй', 'zhong' => 'чжун', 'zhun' => 'чжунь',
    'zhe' => 'чжэ', 'zhei' => 'чжэй', 'zheng' => 'чжэн', 'zhen' => 'чжэнь',
    
    # CH group
    'cha' => 'ча', 'chai' => 'чай', 'chang' => 'чан', 'chan' => 'чань',
    'chao' => 'чао', 'chi' => 'чи', 'chuo' => 'чо', 'chou' => 'чоу',
    'chu' => 'чу', 'chua' => 'чуа', 'chuai' => 'чуай', 'chuang' => 'чуан',
    'chuan' => 'чуань', 'chui' => 'чуй', 'chong' => 'чун', 'chun' => 'чунь',
    'che' => 'чэ', 'cheng' => 'чэн', 'chen' => 'чэнь',
    
    # SH group
    'sha' => 'ша', 'shai' => 'шай', 'shang' => 'шан', 'shan' => 'шань',
    'shao' => 'шао', 'shi' => 'ши', 'shuo' => 'шо', 'shou' => 'шоу',
    'shu' => 'шу', 'shua' => 'шуа', 'shuai' => 'шуай', 'shuang' => 'шуан',
    'shuan' => 'шуань', 'shui' => 'шуй', 'shun' => 'шунь', 'she' => 'шэ',
    'shei' => 'шэй', 'sheng' => 'шэн', 'shen' => 'шэнь',
    
    # R group
    'rang' => 'жан', 'ran' => 'жань', 'rao' => 'жао', 'ri' => 'жи',
    'ruo' => 'жо', 'rou' => 'жоу', 'ru' => 'жу', 'rua' => 'жуа',
    'ruan' => 'жуань', 'rui' => 'жуй', 'rong' => 'жун', 'run' => 'жунь',
    're' => 'жэ', 'reng' => 'жэн', 'ren' => 'жэнь',
    
    # Z group
    'za' => 'цза', 'zai' => 'цзай', 'zang' => 'цзан', 'zan' => 'цзань',
    'zao' => 'цзао', 'zuo' => 'цзо', 'zou' => 'цзоу', 'zu' => 'цзу',
    'zuan' => 'цзуань', 'zui' => 'цзуй', 'zong' => 'цзун', 'zun' => 'цзунь',
    'zi' => 'цзы', 'ze' => 'цзэ', 'zei' => 'цзэй', 'zeng' => 'цзэн',
    'zen' => 'цзэнь',
    
    # C group
    'ca' => 'ца', 'cai' => 'цай', 'cang' => 'цан', 'can' => 'цань',
    'cao' => 'цао', 'cuo' => 'цо', 'cou' => 'цоу', 'cu' => 'цу',
    'cuan' => 'цуань', 'cui' => 'цуй', 'cong' => 'цун', 'cun' => 'цунь',
    'ci' => 'цы', 'ce' => 'цэ', 'ceng' => 'цэн', 'cen' => 'цэнь',
    
    # S group
    'sa' => 'са', 'sai' => 'сай', 'sang' => 'сан', 'san' => 'сань',
    'sao' => 'сао', 'suo' => 'со', 'sou' => 'соу', 'su' => 'су',
    'suan' => 'суань', 'sui' => 'суй', 'song' => 'сун', 'sun' => 'сунь',
    'si' => 'сы', 'se' => 'сэ', 'seng' => 'сэн', 'sen' => 'сэнь',
    
    # Others
    'a' => 'а', 'ai' => 'ай', 'ang' => 'ан', 'an' => 'ань', 'ao' => 'ао',
    'wa' => 'ва', 'wai' => 'вай', 'wang' => 'ван', 'wan' => 'вань',
    'wo' => 'во', 'wei' => 'вэй', 'weng' => 'вэн', 'wen' => 'вэнь',
    'ye' => 'е', 'yo' => 'ё', 'yi' => 'и', 'ying' => 'ин', 'yin' => 'инь',
    'm' => 'м', 'n' => 'н', 'ng' => 'нг', 'o' => 'о', 'ou' => 'оу',
    'wu' => 'у', 'e' => 'э', 'ê' => 'э̂', 'ei' => 'эй', 'eng' => 'эн',
    'en' => 'энь', 'er' => 'эр', 'you' => 'ю', 'yuan' => 'юань',
    'yu' => 'юй', 'yong' => 'юн', 'yun' => 'юнь', 'yue' => 'юэ',
    'ya' => 'я', 'yai' => 'яй', 'yang' => 'ян', 'yan' => 'янь', 'yao' => 'яо',
);

# Bopomofo to Palladius mapping
our %bopomofo-to-palladius = (
    # B group
    'ㄅㄚ' => 'ба', 'ㄅㄞ' => 'бай', 'ㄅㄤ' => 'бан', 'ㄅㄢ' => 'бань',
    'ㄅㄠ' => 'бао', 'ㄅㄧㄝ' => 'бе', 'ㄅㄧ' => 'би', 'ㄅㄧㄥ' => 'бин',
    'ㄅㄧㄣ' => 'бинь', 'ㄅㄛ' => 'бо', 'ㄅㄨ' => 'бу', 'ㄅㄟ' => 'бэй',
    'ㄅㄥ' => 'бэн', 'ㄅㄣ' => 'бэнь', 'ㄅㄧㄢ' => 'бянь', 'ㄅㄧㄠ' => 'бяо',
    
    # P group
    'ㄆㄚ' => 'па', 'ㄆㄞ' => 'пай', 'ㄆㄤ' => 'пан', 'ㄆㄢ' => 'пань',
    'ㄆㄠ' => 'пао', 'ㄆㄧㄝ' => 'пе', 'ㄆㄧ' => 'пи', 'ㄆㄧㄥ' => 'пин',
    'ㄆㄧㄣ' => 'пинь', 'ㄆㄛ' => 'по', 'ㄆㄡ' => 'поу', 'ㄆㄨ' => 'пу',
    'ㄆㄟ' => 'пэй', 'ㄆㄥ' => 'пэн', 'ㄆㄣ' => 'пэнь', 'ㄆㄧㄢ' => 'пянь',
    'ㄆㄧㄠ' => 'пяо',
    
    # M group
    'ㄇㄚ' => 'ма', 'ㄇㄞ' => 'май', 'ㄇㄤ' => 'ман', 'ㄇㄢ' => 'мань',
    'ㄇㄠ' => 'мао', 'ㄇㄧㄝ' => 'ме', 'ㄇㄧ' => 'ми', 'ㄇㄧㄥ' => 'мин',
    'ㄇㄧㄣ' => 'минь', 'ㄇㄛ' => 'мо', 'ㄇㄡ' => 'моу', 'ㄇㄨ' => 'му',
    'ㄇㄜ' => 'мэ', 'ㄇㄟ' => 'мэй', 'ㄇㄥ' => 'мэн', 'ㄇㄣ' => 'мэнь',
    'ㄇㄧㄡ' => 'мю', 'ㄇㄧㄢ' => 'мянь', 'ㄇㄧㄠ' => 'мяо',
    
    # F group
    'ㄈㄚ' => 'фа', 'ㄈㄤ' => 'фан', 'ㄈㄢ' => 'фань', 'ㄈㄛ' => 'фо',
    'ㄈㄡ' => 'фоу', 'ㄈㄨ' => 'фу', 'ㄈㄟ' => 'фэй', 'ㄈㄥ' => 'фэн',
    'ㄈㄣ' => 'фэнь', 'ㄈㄧㄠ' => 'фяо',
    
    # D group
    'ㄉㄚ' => 'да', 'ㄉㄞ' => 'дай', 'ㄉㄤ' => 'дан', 'ㄉㄢ' => 'дань',
    'ㄉㄠ' => 'дао', 'ㄉㄧㄝ' => 'де', 'ㄉㄧ' => 'ди', 'ㄉㄧㄥ' => 'дин',
    'ㄉㄨㄛ' => 'до', 'ㄉㄡ' => 'доу', 'ㄉㄨ' => 'ду', 'ㄉㄨㄢ' => 'дуань',
    'ㄉㄨㄟ' => 'дуй', 'ㄉㄨㄥ' => 'дун', 'ㄉㄨㄣ' => 'дунь', 'ㄉㄜ' => 'дэ',
    'ㄉㄟ' => 'дэй', 'ㄉㄥ' => 'дэн', 'ㄉㄣ' => 'дэнь', 'ㄉㄧㄡ' => 'дю',
    'ㄉㄧㄚ' => 'дя', 'ㄉㄧㄤ' => 'дян', 'ㄉㄧㄢ' => 'дянь', 'ㄉㄧㄠ' => 'дяо',
    
    # T group
    'ㄊㄚ' => 'та', 'ㄊㄞ' => 'тай', 'ㄊㄤ' => 'тан', 'ㄊㄢ' => 'тань',
    'ㄊㄠ' => 'тао', 'ㄊㄧㄝ' => 'те', 'ㄊㄧ' => 'ти', 'ㄊㄧㄥ' => 'тин',
    'ㄊㄨㄛ' => 'то', 'ㄊㄡ' => 'тоу', 'ㄊㄨ' => 'ту', 'ㄊㄨㄢ' => 'туань',
    'ㄊㄨㄟ' => 'туй', 'ㄊㄨㄥ' => 'тун', 'ㄊㄨㄣ' => 'тунь', 'ㄊㄜ' => 'тэ',
    'ㄊㄥ' => 'тэн', 'ㄊㄧㄢ' => 'тянь', 'ㄊㄧㄠ' => 'тяо',
    
    # N group
    'ㄋㄚ' => 'на', 'ㄋㄞ' => 'най', 'ㄋㄤ' => 'нан', 'ㄋㄢ' => 'нань',
    'ㄋㄠ' => 'нао', 'ㄋㄧㄝ' => 'не', 'ㄋㄧ' => 'ни', 'ㄋㄧㄥ' => 'нин',
    'ㄋㄧㄣ' => 'нинь', 'ㄋㄨㄛ' => 'но', 'ㄋㄡ' => 'ноу', 'ㄋㄨ' => 'ну',
    'ㄋㄨㄢ' => 'нуань', 'ㄋㄨㄥ' => 'нун', 'ㄋㄜ' => 'нэ', 'ㄋㄟ' => 'нэй',
    'ㄋㄥ' => 'нэн', 'ㄋㄣ' => 'нэнь', 'ㄋㄧㄡ' => 'ню', 'ㄋㄩ' => 'нюй',
    'ㄋㄩㄝ' => 'нюэ', 'ㄋㄧㄚ' => 'ня', 'ㄋㄧㄤ' => 'нян', 'ㄋㄧㄢ' => 'нянь',
    'ㄋㄧㄠ' => 'няо',
    
    # L group
    'ㄌㄚ' => 'ла', 'ㄌㄞ' => 'лай', 'ㄌㄤ' => 'лан', 'ㄌㄢ' => 'лань',
    'ㄌㄠ' => 'лао', 'ㄌㄧㄝ' => 'ле', 'ㄌㄧ' => 'ли', 'ㄌㄧㄥ' => 'лин',
    'ㄌㄧㄣ' => 'линь', 'ㄌㄨㄛ' => 'ло', 'ㄌㄛ' => 'ло', 'ㄌㄡ' => 'лоу',
    'ㄌㄨ' => 'лу', 'ㄌㄨㄢ' => 'луань', 'ㄌㄨㄥ' => 'лун', 'ㄌㄨㄣ' => 'лунь',
    'ㄌㄜ' => 'лэ', 'ㄌㄟ' => 'лэй', 'ㄌㄥ' => 'лэн', 'ㄌㄧㄡ' => 'лю',
    'ㄌㄩ' => 'люй', 'ㄌㄩㄝ' => 'люэ', 'ㄌㄧㄚ' => 'ля', 'ㄌㄧㄤ' => 'лян',
    'ㄌㄧㄢ' => 'лянь', 'ㄌㄧㄠ' => 'ляо',
    
    # G group
    'ㄍㄚ' => 'га', 'ㄍㄞ' => 'гай', 'ㄍㄤ' => 'ган', 'ㄍㄢ' => 'гань',
    'ㄍㄠ' => 'гао', 'ㄍㄨㄛ' => 'го', 'ㄍㄡ' => 'гоу', 'ㄍㄨ' => 'гу',
    'ㄍㄨㄚ' => 'гуа', 'ㄍㄨㄞ' => 'гуай', 'ㄍㄨㄤ' => 'гуан', 'ㄍㄨㄢ' => 'гуань',
    'ㄍㄨㄟ' => 'гуй', 'ㄍㄨㄥ' => 'гун', 'ㄍㄨㄣ' => 'гунь', 'ㄍㄜ' => 'гэ',
    'ㄍㄟ' => 'гэй', 'ㄍㄥ' => 'гэн', 'ㄍㄣ' => 'гэнь',
    
    # K group
    'ㄎㄚ' => 'ка', 'ㄎㄞ' => 'кай', 'ㄎㄤ' => 'кан', 'ㄎㄢ' => 'кань',
    'ㄎㄠ' => 'као', 'ㄎㄨㄛ' => 'ко', 'ㄎㄡ' => 'коу', 'ㄎㄨ' => 'ку',
    'ㄎㄨㄚ' => 'куа', 'ㄎㄨㄞ' => 'куай', 'ㄎㄨㄤ' => 'куан', 'ㄎㄨㄢ' => 'куань',
    'ㄎㄨㄟ' => 'куй', 'ㄎㄨㄥ' => 'кун', 'ㄎㄨㄣ' => 'кунь', 'ㄎㄜ' => 'кэ',
    'ㄎㄟ' => 'кэй', 'ㄎㄥ' => 'кэн', 'ㄎㄣ' => 'кэнь',
    
    # H group
    'ㄏㄚ' => 'ха', 'ㄏㄞ' => 'хай', 'ㄏㄤ' => 'хан', 'ㄏㄢ' => 'хань',
    'ㄏㄠ' => 'хао', 'ㄏㆬ' => 'хм', 'ㄏㄯ' => 'хнг', 'ㄏㄨㄛ' => 'хо',
    'ㄏㄡ' => 'хоу', 'ㄏㄨ' => 'ху', 'ㄏㄨㄚ' => 'хуа', 'ㄏㄨㄞ' => 'хуай',
    'ㄏㄨㄤ' => 'хуан', 'ㄏㄨㄢ' => 'хуань', 'ㄏㄨㄥ' => 'хун', 'ㄏㄨㄣ' => 'хунь',
    'ㄏㄨㄟ' => 'хуэй', 'ㄏㄜ' => 'хэ', 'ㄏㄟ' => 'хэй', 'ㄏㄥ' => 'хэн',
    'ㄏㄣ' => 'хэнь',
    
    # J group
    'ㄐㄧㄝ' => 'цзе', 'ㄐㄧ' => 'цзи', 'ㄐㄧㄥ' => 'цзин', 'ㄐㄧㄣ' => 'цзинь',
    'ㄐㄧㄡ' => 'цзю', 'ㄐㄩㄢ' => 'цзюань', 'ㄐㄩ' => 'цзюй', 'ㄐㄩㄥ' => 'цзюн',
    'ㄐㄩㄣ' => 'цзюнь', 'ㄐㄩㄝ' => 'цзюэ', 'ㄐㄧㄚ' => 'цзя', 'ㄐㄧㄤ' => 'цзян',
    'ㄐㄧㄢ' => 'цзянь', 'ㄐㄧㄠ' => 'цзяо',
    
    # Q group
    'ㄑㄧㄝ' => 'це', 'ㄑㄧ' => 'ци', 'ㄑㄧㄥ' => 'цин', 'ㄑㄧㄣ' => 'цинь',
    'ㄑㄧㄡ' => 'цю', 'ㄑㄩㄢ' => 'цюань', 'ㄑㄩ' => 'цюй', 'ㄑㄩㄥ' => 'цюн',
    'ㄑㄩㄣ' => 'цюнь', 'ㄑㄩㄝ' => 'цюэ', 'ㄑㄧㄚ' => 'ця', 'ㄑㄧㄤ' => 'цян',
    'ㄑㄧㄢ' => 'цянь', 'ㄑㄧㄠ' => 'цяо',
    
    # X group
    'ㄒㄧㄝ' => 'се', 'ㄒㄧ' => 'си', 'ㄒㄧㄥ' => 'син', 'ㄒㄧㄣ' => 'синь',
    'ㄒㄧㄡ' => 'сю', 'ㄒㄩㄢ' => 'сюань', 'ㄒㄩ' => 'сюй', 'ㄒㄩㄥ' => 'сюн',
    'ㄒㄩㄣ' => 'сюнь', 'ㄒㄩㄝ' => 'сюэ', 'ㄒㄧㄚ' => 'ся', 'ㄒㄧㄤ' => 'сян',
    'ㄒㄧㄢ' => 'сянь', 'ㄒㄧㄠ' => 'сяо',
    
    # ZH group
    'ㄓㄚ' => 'чжа', 'ㄓㄞ' => 'чжай', 'ㄓㄤ' => 'чжан', 'ㄓㄢ' => 'чжань',
    'ㄓㄠ' => 'чжао', 'ㄓ' => 'чжи', 'ㄓㄨㄛ' => 'чжо', 'ㄓㄡ' => 'чжоу',
    'ㄓㄨ' => 'чжу', 'ㄓㄨㄚ' => 'чжуа', 'ㄓㄨㄞ' => 'чжуай', 'ㄓㄨㄤ' => 'чжуан',
    'ㄓㄨㄢ' => 'чжуань', 'ㄓㄨㄟ' => 'чжуй', 'ㄓㄨㄥ' => 'чжун', 'ㄓㄨㄣ' => 'чжунь',
    'ㄓㄜ' => 'чжэ', 'ㄓㄟ' => 'чжэй', 'ㄓㄥ' => 'чжэн', 'ㄓㄣ' => 'чжэнь',
    
    # CH group
    'ㄔㄚ' => 'ча', 'ㄔㄞ' => 'чай', 'ㄔㄤ' => 'чан', 'ㄔㄢ' => 'чань',
    'ㄔㄠ' => 'чао', 'ㄔ' => 'чи', 'ㄔㄨㄛ' => 'чо', 'ㄔㄡ' => 'чоу',
    'ㄔㄨ' => 'чу', 'ㄔㄨㄚ' => 'чуа', 'ㄔㄨㄞ' => 'чуай', 'ㄔㄨㄤ' => 'чуан',
    'ㄔㄨㄢ' => 'чуань', 'ㄔㄨㄟ' => 'чуй', 'ㄔㄨㄥ' => 'чун', 'ㄔㄨㄣ' => 'чунь',
    'ㄔㄜ' => 'чэ', 'ㄔㄥ' => 'чэн', 'ㄔㄣ' => 'чэнь',
    
    # SH group
    'ㄕㄚ' => 'ша', 'ㄕㄞ' => 'шай', 'ㄕㄤ' => 'шан', 'ㄕㄢ' => 'шань',
    'ㄕㄠ' => 'шао', 'ㄕ' => 'ши', 'ㄕㄨㄛ' => 'шо', 'ㄕㄡ' => 'шоу',
    'ㄕㄨ' => 'шу', 'ㄕㄨㄚ' => 'шуа', 'ㄕㄨㄞ' => 'шуай', 'ㄕㄨㄤ' => 'шуан',
    'ㄕㄨㄢ' => 'шуань', 'ㄕㄨㄟ' => 'шуй', 'ㄕㄨㄣ' => 'шунь', 'ㄕㄜ' => 'шэ',
    'ㄕㄟ' => 'шэй', 'ㄕㄥ' => 'шэн', 'ㄕㄣ' => 'шэнь',
    
    # R group
    'ㄖㄚ' => 'жа', 'ㄖㄤ' => 'жан', 'ㄖㄢ' => 'жань', 'ㄖㄠ' => 'жао', 'ㄖ' => 'жи',
    'ㄖㄨㄛ' => 'жо', 'ㄖㄡ' => 'жоу', 'ㄖㄨ' => 'жу', 'ㄖㄨㄚ' => 'жуа',
    'ㄖㄨㄢ' => 'жуань', 'ㄖㄨㄟ' => 'жуй', 'ㄖㄨㄥ' => 'жун', 'ㄖㄨㄣ' => 'жунь',
    'ㄖㄜ' => 'жэ', 'ㄖㄥ' => 'жэн', 'ㄖㄣ' => 'жэнь',
    
    # Z group
    'ㄗㄚ' => 'цза', 'ㄗㄞ' => 'цзай', 'ㄗㄤ' => 'цзан', 'ㄗㄢ' => 'цзань',
    'ㄗㄠ' => 'цзао', 'ㄗㄨㄛ' => 'цзо', 'ㄗㄡ' => 'цзоу', 'ㄗㄨ' => 'цзу',
    'ㄗㄨㄢ' => 'цзуань', 'ㄗㄨㄟ' => 'цзуй', 'ㄗㄨㄥ' => 'цзун', 'ㄗㄨㄣ' => 'цзунь',
    'ㄗ' => 'цзы', 'ㄗㄜ' => 'цзэ', 'ㄗㄟ' => 'цзэй', 'ㄗㄥ' => 'цзэн',
    'ㄗㄣ' => 'цзэнь',
    
    # C group
    'ㄘㄚ' => 'ца', 'ㄘㄞ' => 'цай', 'ㄘㄤ' => 'цан', 'ㄘㄢ' => 'цань',
    'ㄘㄠ' => 'цао', 'ㄘㄨㄛ' => 'цо', 'ㄘㄡ' => 'цоу', 'ㄘㄨ' => 'цу',
    'ㄘㄨㄢ' => 'цуань', 'ㄘㄨㄟ' => 'цуй', 'ㄘㄨㄥ' => 'цун', 'ㄘㄨㄣ' => 'цунь',
    'ㄘ' => 'цы', 'ㄘㄜ' => 'цэ', 'ㄘㄥ' => 'цэн', 'ㄘㄣ' => 'цэнь',
    
    # S group
    'ㄙㄚ' => 'са', 'ㄙㄞ' => 'сай', 'ㄙㄤ' => 'сан', 'ㄙㄢ' => 'сань',
    'ㄙㄠ' => 'сао', 'ㄙㄨㄛ' => 'со', 'ㄙㄡ' => 'соу', 'ㄙㄨ' => 'су',
    'ㄙㄨㄢ' => 'суань', 'ㄙㄨㄟ' => 'суй', 'ㄙㄨㄥ' => 'сун', 'ㄙㄨㄣ' => 'сунь',
    'ㄙ' => 'сы', 'ㄙㄜ' => 'сэ', 'ㄙㄥ' => 'сэн', 'ㄙㄣ' => 'сэнь',
    
    # Others
    'ㄚ' => 'а', 'ㄞ' => 'ай', 'ㄤ' => 'ан', 'ㄢ' => 'ань', 'ㄠ' => 'ао',
    'ㄨㄚ' => 'ва', 'ㄨㄞ' => 'вай', 'ㄨㄤ' => 'ван', 'ㄨㄢ' => 'вань',
    'ㄨㄛ' => 'во', 'ㄨㄟ' => 'вэй', 'ㄨㄥ' => 'вэн', 'ㄨㄣ' => 'вэнь',
    'ㄧㄝ' => 'е', 'ㄧㄛ' => 'ё', 'ㄧ' => 'и', 'ㄧㄥ' => 'ин', 'ㄧㄣ' => 'инь',
    'ㆬ' => 'м', 'ㄯ' => 'н', 'ㆭ' => 'нг', 'ㄛ' => 'о', 'ㄡ' => 'оу',
    'ㄨ' => 'у', 'ㄜ' => 'э', 'ㄝ' => 'э̂', 'ㄟ' => 'эй', 'ㄥ' => 'эн',
    'ㄣ' => 'энь', 'ㄦ' => 'эр', 'ㄧㄡ' => 'ю', 'ㄩㄢ' => 'юань',
    'ㄩ' => 'юй', 'ㄩㄥ' => 'юн', 'ㄩㄣ' => 'юнь', 'ㄩㄝ' => 'юэ',
    'ㄧㄚ' => 'я', 'ㄧㄞ' => 'яй', 'ㄧㄤ' => 'ян', 'ㄧㄢ' => 'янь', 'ㄧㄠ' => 'яо',
);

# Helper function to remove tone marks from Pinyin
sub remove-tones(Str $pinyin --> Str) {
    # Use Unicode normalization to decompose characters, then strip non-ASCII
    # NFD will decompose accented characters into base + combining marks
    my @decomposed = $pinyin.NFD.list;
    my @result;
    
    # Process each codepoint
    my $i = 0;
    while $i < @decomposed.elems {
        my $codepoint = @decomposed[$i];
        
        if $codepoint < 128 {
            # ASCII character - keep it
            @result.push: $codepoint;
        }
        elsif $codepoint == 0x0308 {
            # Combining diaeresis - check if previous char is 'u' or 'U'
            if @result && @result[*-1] == 0x0075 {  # 'u'
                # Replace 'u' with 'ü'
                @result[*-1] = 0x00FC;  # 'ü'
            }
            elsif @result && @result[*-1] == 0x0055 {  # 'U'
                # Replace 'U' with 'Ü'
                @result[*-1] = 0x00DC;  # 'Ü'
            }
        }
        elsif $codepoint == 0x00FC || $codepoint == 0x00DC {
            # ü or Ü - keep it
            @result.push: $codepoint;
        }
        # Skip all other combining marks and non-ASCII
        
        $i++;
    }
    
    return @result.map(*.chr).join;
}

# Convert a single Pinyin syllable to Palladius
sub pinyin-to-palladius(Str $pinyin --> Str) {
    my $clean = remove-tones($pinyin.lc);
    return %pinyin-to-palladius{$clean} // $pinyin;
}

# Convert a single Bopomofo syllable to Palladius
sub bopomofo-to-palladius(Str $bopomofo --> Str) {
    # Remove tone marks (ˊ ˇ ˋ ˙)
    my $clean = $bopomofo.subst(/<[ˊˇˋ˙]>/, '', :g);
    return %bopomofo-to-palladius{$clean} // $bopomofo;
}

# Convert a single Wade-Giles syllable to Palladius
sub wade-giles-to-palladius(Str $wade-giles --> Str) {
    # Wade-Giles often uses tone numbers at the end, remove them
    my $clean = $wade-giles.subst(/\d+$/, '');
    # Try exact match first
    return %wade-giles-to-palladius{$clean} // 
           %wade-giles-to-palladius{$clean.lc} // 
           $wade-giles;
}

# Convert a string containing Pinyin to Palladius
sub convert-pinyin(Str $text --> Str) {
    # More efficient approach: process each word separately
    my @words = $text.split(/\s+/, :v);
    
    my @result;
    for @words -> $word {
        if $word ~~ /^\s+$/ {
            @result.push: $word;
            next;
        }
        
        # Process each alphabetic word
        if $word ~~ /<[a..zA..ZāáǎàēéěèīíǐìōóǒòūúǔùǖǘǚǜüÜ]>+/ {
            my $converted = '';
            my $remaining = $word.Str;
            
            while $remaining && $remaining ~~ /<[a..zA..ZāáǎàēéěèīíǐìōóǒòūúǔùǖǘǚǜüÜ]>/ {
                my $found = False;
                
                # Try all possible lengths, but validate the remaining part
                my @candidates;
                
                for (1..min(6, $remaining.chars)) -> $len {
                    my $candidate = $remaining.substr(0, $len);
                    my $clean = remove-tones($candidate.lc);
                    
                    if %pinyin-to-palladius{$clean}:exists {
                        my $rest = $remaining.substr($len);
                        @candidates.push: {
                            syllable => $clean,
                            translation => %pinyin-to-palladius{$clean},
                            rest => $rest,
                            len => $len
                        };
                    }
                }
                
                # Choose the best candidate
                # Prefer candidates where the rest can also be fully converted
                my $best;
                for @candidates -> $cand {
                    # If nothing remains, this is good
                    if !$cand<rest> || $cand<rest> !~~ /<[a..zA..ZāáǎàēéěèīíǐìōóǒòūúǔùǖǘǚǜüÜ]>/ {
                        $best = $cand;
                        last;
                    }
                    # Otherwise, check if the rest can form valid syllables
                    # For now, prefer longer matches when ambiguous
                    if !$best || $cand<len> > $best<len> {
                        # Quick check: does the rest start with a valid consonant or vowel?
                        my $rest-start = $cand<rest>.substr(0, 1).lc;
                        if $rest-start ~~ /<[aeiouübpmfdtnlgkhjqxzcsryw]>/ {
                            $best = $cand;
                        }
                    }
                }
                
                if $best {
                    $converted ~= $best<translation>;
                    $remaining = $best<rest>;
                    $found = True;
                }
                
                unless $found {
                    # No valid syllable found, take one character
                    $converted ~= $remaining.substr(0, 1);
                    $remaining = $remaining.substr(1);
                }
            }
            
            # Handle any remaining non-alphabetic characters
            $converted ~= $remaining if $remaining;
            @result.push: $converted;
        }
        else {
            @result.push: $word;
        }
    }
    
    return @result.join('');
}

# Convert a string containing Bopomofo to Palladius
sub convert-bopomofo(Str $text --> Str) {
    # Remove tone marks first
    my $clean-text = $text.subst(/<[ˊˇˋ˙]>/, '', :g);
    
    # Split by characters that are not Bopomofo
    my @parts = $clean-text.split(/<-[ㄅ..ㄩㄚ..ㄦㆬㆭ]>+/, :v);
    
    my $result = '';
    for @parts -> $part {
        if $part ~~ /<[ㄅ..ㄩㄚ..ㄦㆬㆭ]>+/ {
            # Try to match syllables
            my $remaining = $part.Str;
            my $converted = '';
            
            while $remaining {
                my $found = False;
                # Try up to 3 characters for a syllable
                for (3, 2, 1) -> $len {
                    if $remaining.chars >= $len {
                        my $candidate = $remaining.substr(0, $len);
                        if %bopomofo-to-palladius{$candidate}:exists {
                            $converted ~= %bopomofo-to-palladius{$candidate};
                            $remaining = $remaining.substr($len);
                            $found = True;
                            last;
                        }
                    }
                }
                unless $found {
                    # If no match found, take the first character as-is
                    $converted ~= $remaining.substr(0, 1);
                    $remaining = $remaining.substr(1);
                }
            }
            $result ~= $converted;
        } else {
            $result ~= $part;
        }
    }
    
    return $result;
}

# Convert a string containing Wade-Giles to Palladius
sub convert-wade-giles(Str $text --> Str) {
    # Wade-Giles uses hyphens to separate syllables
    # First split by spaces to get words
    my @words = $text.split(/\s+/);
    
    my @result;
    for @words -> $word {
        # If word contains hyphens, split and convert each syllable
        if $word ~~ /'-'/ {
            my @syllables = $word.split('-');
            my @converted;
            for @syllables -> $syllable {
                @converted.push(wade-giles-to-palladius($syllable));
            }
            @result.push(@converted.join(''));
        }
        # Single syllable
        elsif $word ~~ /^ <[a..zA..Zêüʻ']>+ \d* $/ {
            @result.push(wade-giles-to-palladius($word));
        }
        # Non-Wade-Giles content
        else {
            @result.push($word);
        }
    }
    
    return @result.join(' ');
}

# Main conversion function - the only exported function
sub to-palladius(Str $text, :$from! --> Str) is export {
    given $from {
        when 'pinyin' { return convert-pinyin($text) }
        when 'bopomofo' { return convert-bopomofo($text) }
        when 'wade-giles' { return convert-wade-giles($text) }
        default { die "Unknown input format: $from. Use 'pinyin', 'bopomofo', or 'wade-giles'" }
    }
}

