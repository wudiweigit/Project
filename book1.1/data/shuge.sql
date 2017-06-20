SET NAMES UTF8;
DROP DATABASE IF EXISTS shuge;
CREATE DATABASE shuge CHARSET=UTF8;
USE shuge;

/**主体内容标题表**/
CREATE TABLE sg_title(
    did            INT PRIMARY KEY AUTO_INCREMENT,
    img            VARCHAR(64),
    name           VARCHAR(64),
    name_sm        VARCHAR(64),
    detail         VARCHAR(1200),
    content_1      VARCHAR(2048),
    content_2      VARCHAR(2048),
    content_3      VARCHAR(2048),
    content_4      VARCHAR(2048)
);
INSERT INTO sg_title VALUES
(
    NULL,
    'yuanmingyuan40-700x400.jpg',
    '圆明园四十景图咏',
    '圆明园四十景目录',
    '《圆明园四十景图咏》是根据乾隆皇帝的旨意，于乾隆九年（1744）由宫廷画师唐岱等绘制而成的40幅分景图。各幅分别附有工部尚书汪由敦所书乾隆《四十景对题诗》，字体一律为大臣奏章所用的宫廷馆阁体。此本为1860年，英法联军火烧圆明园掠走，现藏于法国国家图书馆。',
    '正大光明、勤政亲贤、九洲清晏、镂月开云、天然图画、碧桐书院、慈云普护、上下天光、杏花春馆、坦坦荡荡、茹古涵今、长春仙馆、万方安和、武陵春色、山高水长、月地云居、鸿慈永祜、汇芳书院、日天琳宇、澹泊宁静、映水兰香、水木明瑟、濂溪乐处、多稼如云、鱼跃鸢飞、北远山村、西峰秀色、四宜书屋、方壶胜境、澡身浴德、平湖秋月、蓬岛瑶台、接秀山房、别有洞天、夹镜鸣琴、涵虚朗鉴、廓然大公、坐石临流、曲院风荷、洞天深处。',
    '唐岱 (1673-1752后)〔清〕字毓东，号静岩，又号知生、爱庐、默庄，满洲正蓝旗人。承祖爵，任骁骑参领，官内务府总管，以画祗候内廷。山水画初从焦秉贞学，后与王敬铭、张宗苍同为王原祁弟子，名动京师。康熙帝甚赏其画，常召作画，赐称“画状元”。',
    '汪由敦（1692年—1758年），初名汪良金，字师苕，号谨堂，又号松泉居士。安徽休宁人。生于清康熙三十一年，卒于乾隆二十三年，年六十七岁。雍正二年（1724年）进士，改庶吉士。乾隆间，累官至吏部尚书。老诚敏慎，在职勤劳。金川用兵，廷谕皆出其手。卒，加赠太子太师，谥文端。由敦学问渊深，文辞雅正，兼工书法。著有《松泉集》。',
    '圆明园坐落在北京西北郊，与颐和园相邻，由圆明园、长春园和万春园组成，也叫圆明三园。 圆明园是清代著名的皇家园林之一，面积五千二百余亩，一百五十余景。建筑面积达16万平方米，有“万园之园”之称。清朝皇室每到盛夏时节会来这里理政，故圆明园也称“夏宫”。'
),
(
    NULL,
    'ju-zhen-hua-pu9-731x400.jpg',
    '聚珍画谱',
    '',
    '此本《聚珍画谱》共分上中下册，日本著名历史画家狩野探幽摹绘，狩野应信编辑而成。其内有彩色木版图108幅，绘画内容有花鸟、植物、佛像、人物、山水等。此本为明治27年（1894）刊本。',
    '狩野探幽（1602～1674，Kanō Tan’yū）京都人，原名守信，狩野永德之孙，孝信长子，狩野派代表画家。其十余岁往江户，不久即成为幕府画师。作为狩野派画家，其吸收汉画（中国风格的绘画）技法，拓展画风，顺应当时武家社会的审美趣好，为狩野派其后三百年的繁荣打下基础，人称狩野派中兴之主。代表作品有画于名古屋城、二条城、大德寺等处的壁画以及《东照大权现缘起》（绘卷）。于1638（宽永15）年出家。',
    '',
    '',
    ''
),
(
      NULL,
      '18luohan.jpg',
      '菩提叶画十八罗汉图',
      '',
      '此套以菩提叶为素材媒介创作的画册《菩提叶画十八罗汉图》，是将菩提叶特殊处理后，再平铺在蓝色底纸上作画，多彩的画面和谐地与树叶的肌理自然美融为一体。此套含十八帧，约绘制于17到18世纪西藏地区，现藏于美国大都会艺术博物馆。',
      '十八罗汉（或称十八阿罗汉、十八尊者）是释迦牟尼佛的得道弟子。原为十六罗汉，但中国民间增加了两位罗汉，成为十八罗汉。首十六罗汉的名字早有佛经所载，但最后两位罗汉仍存不同说法。十八罗汉之说盛行于中国汉地。',
      '“菩提”一词是梵文Bodhi的音译，意思是觉悟、智慧，用以指人忽如睡醒，豁然开悟，突入彻悟途径，顿悟真理，达到超凡脱俗的境界等。',
      '',
      ''
),
(
    NULL,
    'costume-of-china6-731x400.jpg',
    '中国服饰',
    '',
    '这是1800年伦敦出版George Henry Mason 编著的《The costume of China / 中国服饰》有60幅非常精美的彩色插图。插图采用了西式透视、明暗、投影等技法，写实特征浓厚，又融入中国的白描手法，自有一种独特的东方趣味。描绘的主题是清代中国社会各种行业人物以和他们的服装及妆饰。',
    '本书全名：The costume of China: Illustrated by sixty engravings: with explanations in English and French.',
    '广州版：该书最早在中国广州成书，时间约为1789年。但正式出版的地点是伦敦，时间则是1800年。广州版的《The costume of China / 中国服饰》目前已从市面绝迹，其最后一次成交记录是在2003年，由伦敦的“艺术基金”（The Art Fund）从不知名的卖家手中购得，出价为17，000英镑，已交由牛津郡的Ashmolean 博物馆收藏。根据“艺术基金”提供的资料，该书分为原稿及成书两部分。原稿含60幅手绘的水彩画及文字说明。据书中说明介绍，该些水彩画全部在中国广州绘制。在成书上，每幅插图都标有“Pu Qua, Canton, Delin”字样。“Pu Qua”即为“蒲呱”，“Canton”是广州，而“Delin”估计是商号，可能是“德龄社”之类的译音。',
    '英国版：直到1800年，Mason的《The costume of China / 中国服饰》才在英国发行首版。该书的首版保留了广州版的全部60幅插图，均为手工上色。每幅画以英、法两种文字解释。文字共有十四页，未标注页码。刻板的工匠注明是Dadley。以后再版时，便删减为四十八幅插图。插图内容上至官员贵妇，下至贩夫走卒，笔触无一不及，生活的覆盖面相当宽广。其绘画风格与《The costume of China / 中国酷刑》一样，采用了西式的透视、明暗、投影等技法，写实特征浓厚，又融入中国的白描手法，自有一种独特的东方趣味。这种风格，一直影响到后世的连环画。由于绘制精美，西方世界对这些插图的兴趣长盛不衰，至今还是招贴画网站的常销货。Mason在序言中称，他收集的画作，原来只作私人收藏，无意公诸于众。藏了十年后，经不住一帮朋友的怂恿，终于还是将其刊印出版。(文字介绍参考：The costume of China)',
    '这本《The costume of China / 中国服饰》和《The Punishments of China / 中国酷刑》（1804年出版，注：本站已经发布此书）都是George Henry Mason关于清代中国风俗国情的著作。另外本站还有一本由William Alexarlder著的同名书籍《The costume of China / 中国服饰》（1805年出版，注：本站已经发布此书）'
),
(
    NULL,
    '11-731x400.jpg',
    '谟区查抄本',
    '',
    '《谟区查抄本》（Boxer Codex）是一份绘制于1590年的插图手稿 ，其中包含了西班牙人最初接触菲律宾群岛、印度、中国时所见的当地居民。除了描述历史典故，该手稿还包含了当地居民和他们独特的服饰彩绘75幅 ，因而是了解早期东南亚风俗历史的重要史料。',
    '手稿的原主人是西班牙人路易斯·马里那斯（Luis Pérez das Mariñas），他的父亲是西班牙在菲律宾地区的总督。这份手稿可能是该总督向西班牙政府汇报所用。',
    '该手稿于1947年被拍卖，由远东研究的教授谟区查（Charles Ralph Boxer）购得，该手稿因而被命名为《谟区查抄本》。手稿现藏美国印第安那大学的Lilly善本图书馆。',
    '东南亚各国很早以来就受中国文化影响。其中的绘画作品图案与《山海经》中记述的插图非常相似，而且使用中国生产的纸张和颜料，也许画家本人也许就是中国人。（文字参考来源：16世纪手稿中的菲律宾群岛）',
    ''
),
(
    NULL,
    'sjmwt.jpg',
    '诗经名物图解',
    '',
    '《诗经名物图解》是日本江户时代的儒学者細井徇/細井東陽撰绘的一套博物学书，其主要内容为《诗经》辅配百余幅精美古画。分为10个画册贴：三册草部，两册木部，两册禽部，一册兽部，一册鳞部，一册虫部。此本大约绘制出版于嘉永元年（1848）。',
    '《诗经》是中国最早的诗歌总集。《诗经》原本叫《诗》，共有诗歌305首，因此又称“诗三百”。从汉朝起儒家将其奉为经典，因此称为《诗经》。汉朝毛亨、毛苌曾注释《诗经》，因此又称《毛诗》。',
    '',
    '',
    ''
),
(
    NULL,
    '500luohanzan.jpg',
    '五百罗汉像赞',
    '',
    '湖南衡阳祝圣寺罗汉堂原有五百罗汉雕像，全部用青石镌刻，嵌在左右墙壁上，是南岳文化宝库中的一颗明珠。可惜在十年动乱中，罗汉大部分被毁，现仅存五百罗汉像拓本。此本为清末拓本。',
    '祝圣寺坐落在南岳镇东街，距南岳庙半里许，是南岳六大佛教丛林之一。1983年被国务院确定为汉族地区佛教全国重点寺院。唐代高僧承远（公元712-802）在这里创建佛教寺院，名弥陀台，他的著名弟子法照（？-777），初居庐山，结西方道场。大历二年（767）慕承远名来南岳，师事承远十二年。大历末年（779）奉诏入长安，入皇宫教宫人五会念佛（五百人为一会），唐代宗奉为国师，传教天下。法照向代宗极力称赞其师承远有异德，代宗南向而礼之，度不可征，乃名其居日“般舟道场”，用尊其位。承远另一著名弟子日晤，十三岁出家，随承远长期侍勤，唐肃宗乾元元年（758），诏天下名山置大德七人，长讲戒律，日晤获选首位。他在南岳登坛传戒37年，每年度僧千人，称盛一时。他在旧址上建一精室命名为“般舟台”，专修念佛三昧，世称“般舟和尚”。唐德宗贞元年间（785-805），诏为“弥陀寺”。从而，由弥陀台、般舟道场到弥陀寺，就成了名登朝廷，声动公卿的天下名寺。祝圣寺主体建筑共有五进，分为天王殿、大雄宝殿、说法堂、方丈室、罗汉堂。',
    '东汉时期，随着佛教的传入,佛教题材的绘画应运而生。至唐永徽四年（654年）玄奘译出《大阿罗汉难提菩多罗所说法住记》后，对罗汉之崇拜逐渐“普及”，开始出现雕塑罗汉像，唐代的王维、五代的贯休、宋代的张玄、清代的姚宋等都曾创作了一些宣扬罗汉的艺术作品，但存世极少。',
    '五百罗汉的事迹，诸经说法不一，大致可分为佛在世时的五百罗汉与佛灭后的五百罗汉。佛在世时的五百罗汉是指佛所渡化的比丘群（每每有五百之数）。也可说佛在世时，所渡化的最有成就的五百比丘。另一说，佛在世时曾渡化了五百位盲乞人，他们最后也都成就了阿罗汉果。佛灭后的五百罗汉，据《舍利弗问经》，当指弗沙秘多罗王毁灭佛法后，重兴圣教的五百罗汉。另外，在佛教史上流传着四次的结集大事，每次都由大阿罗汉们担当大任，其中第一次为佛灭度迦叶尊者与五百阿罗汉最初结集三藏，第二次是七百罗汉，第三、第四次也都是五百罗汉。现在一般认为，五百罗汉均为释迦牟尼佛的弟子，佛灭后，他们整理了佛的教义，并广为传播，因而取得了小乘教的最高地位——罗汉的称号。五百罗汉创作题材属于多体罗汉创作题材之一，我国关于五百罗汉的故事，早在东汉随着“佛说兴起行经”开始流传，两晋以来，“佛五百弟子自说本起经”、“增一阿含经”等有关经典的相继译出，五百罗汉的事迹随着这些佛教经典而广为流传，但是影响美术创作却相当晚。',
    '中国佛教的五百罗汉，虽名号不同，神态各异，但却有一个共同点：罗汉们被视为力量和吉祥的象征，几乎家喻户晓，有口皆碑。我国的许多寺庙也不惜工本精心塑造五百罗汉像，如北京碧云寺、成都宝光寺、武汉归元寺、苏州西园寺和寒山寺、上海龙华寺、广州华林寺、昆明筇竹寺及重庆吉星寺等。五百罗汉造像形式有泥塑、铜铸、雕刻、绘制、纸褙等。江苏常州天宁寺碑刻是依据宋代杭州净慈寺的五百罗汉塑像绘画摹勒上石刻成的，其像神形兼备、惟妙惟肖、栩栩如生，惜在清咸丰年间毁于兵燹，仅有拓片流传民间。清光绪年间，南岳祝圣寺高僧释心月，据天宁寺传世碑刻拓片摹刻于石，而此碑也于“文革”中毁弃。（文字介绍来源于：线装书局）'
),
(
    NULL,
    'zjpts-434x400.jpg',
    '占景盘图式',
    '',
    '占景盘，在我国原为插花器皿。二千年前漢朝先民們使用圓形的陶盆以象徵廣大的池塘或湖潟，盆內安置陶樹、陶樓、陶鴨，以此手法象徵大地蘊藏無限的生機。',
    '在历史演变中，花器亦随着朝代的不同，而造就了众多的变化。在五代对于花器技术之改良，又有其独特的贡献，就发明「占景盘」《清异录》载，“郭江州有巧思，多创物，见遗占景盘，铜为之，花唇平底，深四寸许，底上出细筒殆数十，每用时，满添清水，择繁花插筒中”。',
    '在日本,则为一种沙盘景物,摆放景石,栽种小型花草,盘盘面覆砂,浇一水后形成自然山水景色。',
    '',
    ''
),
(
    NULL,
    'baihuaniaotu.jpg',
    '百花鸟图',
    '',
    '此图谱大约是康熙时开始编撰，直到雍正时期完成。余曾三作画，张廷玉为每幅做诗。画面工笔精美，诗文小楷非常秀丽。作者余省，字曾三，号鲁亭，江苏常熟人。擅画花鸟虫鱼，尤擅画蝴蝶。师从宫廷画家蒋廷锡，亦供奉内廷，得院体情致，并融入西法，色彩及光暗关系。',
    '',
    '',
    '',
    ''
),
(
    NULL,
    'atlasofchile.jpg',
    '智利自然历史板画',
    '',
    'Claudio Gay于1800年出生在法国南部的普罗旺斯。他在儿童时期就对自然科学着了迷。在青年时期，他在意大利植物学家Juan Bautista Balbis的指导下，去过欧洲很多地方，到访过的地方包括法国阿尔卑斯山、意大利北部、希腊、小亚细亚和多个地中海岛屿。',
    '1828 年，冒险家Pedro Chapuis邀请他到智利教授地理。Gay接受了邀请，到智利生活，从事教学工作并参与科学考察，一直到1842年。他与智利政府签了一份合同，着手一项为期三年半的考察活动，旨在建立一个智利自然资源档案馆。稍后，他同意编写智利政治史。他的作品于1841年成功完稿，他为此而获得荣誉居民资格。回到法国后，Gay于1842年出版了他的《智利自然、政治历史》的第一卷。Gay作品为他赢得了全能科学家和多才艺术家的声誉，他的蚀刻板画中有当地印第安人、风光、名人和未知植物物种的画面。（整理来源于：智利国家图书馆）',
    '',
    '',
    ''
);



/**轮播图片**/
CREATE TABLE sg_carousel(
    c_img  VARCHAR(64),
    c_did   INT
);
INSERT INTO sg_carousel VALUES
('yuanmingyuan40-700x400.jpg',1),
('yuanming-yuan-si-shi-jing001-c.jpg',1),
('yuanming-yuan-si-shi-jing003-c.jpg',1),
('yuanming-yuan-si-shi-jing009-c.jpg',1),
('ju-zhen-hua-pu022-c.jpg',2),
('ju-zhen-hua-pu005-c.jpg',2),
('ju-zhen-hua-pu010-c.jpg',2),
('ju-zhen-hua-pu019-c.jpg',2),
('DP159093-501x400-c.jpg',3),
('DP159094-501x400-c.jpg',3),
('DP159095-499x400-c.jpg',3),
('18luohan.jpg',3),
('the-costume-of-china09-601x400-c.jpg',4),
('the-costume-of-china15-601x400-c.jpg',4),
('the-costume-of-china28-601x400-c.jpg',4),
('the-costume-of-china22-601x400-c.jpg',4),
('boxer-codex19-285x400-c.jpg',5),
('boxer-codex20-285x400-c.jpg',5),
('boxer-codex17-285x400-c.jpg',5),
('boxer-codex18-285x400-c.jpg',5),
('sjmwtj04-600x400-c.jpg',6),
('sjmwtj06-600x400-c.jpg',6),
('sjmwtj13-600x400-c.jpg',6),
('sjmwtj14-600x400-c.jpg',6),
('500luohantuzan09-434x400-c.jpg',7),
('500luohantuzan10-439x400-c.jpg',7),
('500luohantuzan11-441x400-c.jpg',7),
('500luohantuzan17-449x400-c.jpg',7),
('zjpts03-600x400-c.jpg',8),
('zjpts13-600x400-c.jpg',8),
('zjpts14-600x400-c.jpg',8),
('zjpts19-600x400-c.jpg',8),
('baihuaniaotu01-585x400-c.jpg',9),
('baihuaniaotu02-585x400-c.jpg',9),
('baihuaniaotu18-585x400-c.jpg',9),
('baihuaniaotu54-585x400-c.jpg',9),
('AtlasofChile05-508x400-c.jpg',10),
('AtlasofChile09-508x400-c.jpg',10),
('AtlasofChile14-508x400-c.jpg',10),
('AtlasofChile28-508x400-c.jpg',10);




/**总图表**/
CREATE TABLE sg_picture(
    img_lg  VARCHAR(64),
    img_sm  VARCHAR(64),
    p_did   INT
);
INSERT INTO sg_picture VALUES
('yuanming001.jpg','yuanming001sm.jpg',1),
('yuanming003.jpg','yuanming003sm.jpg',1),
('yuanming005.jpg','yuanming005sm.jpg',1),
('yuanming007.jpg','yuanming007sm.jpg',1),
('yuanming009.jpg','yuanming009sm.jpg',1),
('yuanming011.jpg','yuanming011sm.jpg',1),
('yuanming013.jpg','yuanming013sm.jpg',1),
('yuanming028.jpg','yuanming028sm.jpg',1),
('yuanming030.jpg','yuanming030sm.jpg',1),
('yuanming032.jpg','yuanming032sm.jpg',1),
('yuanming034.jpg','yuanming034sm.jpg',1),
('yuanming036.jpg','yuanming036sm.jpg',1),
('yuanming038.jpg','yuanming038sm.jpg',1),
('yuanming040.jpg','yuanming040sm.jpg',1),
('ju-zhen-hua-pu001.jpg','ju-zhen-hua-pu001sm.jpg',2),
('ju-zhen-hua-pu002.jpg','ju-zhen-hua-pu002sm.jpg',2),
('ju-zhen-hua-pu003.jpg','ju-zhen-hua-pu003sm.jpg',2),
('ju-zhen-hua-pu004.jpg','ju-zhen-hua-pu004sm.jpg',2),
('ju-zhen-hua-pu005.jpg','ju-zhen-hua-pu005sm.jpg',2),
('ju-zhen-hua-pu006.jpg','ju-zhen-hua-pu006sm.jpg',2),
('ju-zhen-hua-pu007.jpg','ju-zhen-hua-pu007sm.jpg',2),
('ju-zhen-hua-pu008.jpg','ju-zhen-hua-pu008sm.jpg',2),
('ju-zhen-hua-pu009.jpg','ju-zhen-hua-pu009sm.jpg',2),
('ju-zhen-hua-pu010.jpg','ju-zhen-hua-pu010sm.jpg',2),
('ju-zhen-hua-pu011.jpg','ju-zhen-hua-pu011sm.jpg',2),
('ju-zhen-hua-pu012.jpg','ju-zhen-hua-pu012sm.jpg',2),
('ju-zhen-hua-pu013.jpg','ju-zhen-hua-pu013sm.jpg',2),
('ju-zhen-hua-pu014.jpg','ju-zhen-hua-pu014sm.jpg',2),
('ju-zhen-hua-pu015.jpg','ju-zhen-hua-pu015sm.jpg',2),
('ju-zhen-hua-pu016.jpg','ju-zhen-hua-pu016sm.jpg',2),
('ju-zhen-hua-pu017.jpg','ju-zhen-hua-pu017sm.jpg',2),
('ju-zhen-hua-pu018.jpg','ju-zhen-hua-pu018sm.jpg',2),
('ju-zhen-hua-pu019.jpg','ju-zhen-hua-pu019sm.jpg',2),
('ju-zhen-hua-pu020.jpg','ju-zhen-hua-pu020sm.jpg',2),
('ju-zhen-hua-pu021.jpg','ju-zhen-hua-pu021sm.jpg',2),
('ju-zhen-hua-pu022.jpg','ju-zhen-hua-pu022sm.jpg',2),
('ju-zhen-hua-pu023.jpg','ju-zhen-hua-pu023sm.jpg',2),
('ju-zhen-hua-pu024.jpg','ju-zhen-hua-pu024sm.jpg',2),
('DP159093-501x400.jpg','DP159093-501x400sm.jpg',3),
('DP159094-501x400.jpg','DP159094-501x400sm.jpg',3),
('DP159095-499x400.jpg','DP159095-499x400sm.jpg',3),
('DP159096-501x400.jpg','DP159096-501x400sm.jpg',3),
('DP159091.jpg','DP159091sm.jpg',3),
('DP159092.jpg','DP159092sm.jpg',3),
('DP159097-501x400.jpg','DP159097-501x400sm.jpg',3),
('DP159098-492x400.jpg','DP159098-492x400sm.jpg',3),
('DP159099-492x400.jpg','DP159099-492x400sm.jpg',3),
('DP159100-492x400.jpg','DP159100-492x400sm.jpg',3),
('DP159101-493x400.jpg','DP159101-493x400sm.jpg',3),
('DP159102-496x400.jpg','DP159102-496x400sm.jpg',3),
('DP159103-497x400.jpg','DP159103-497x400sm.jpg',3),
('DP159104-495x400.jpg','DP159104-495x400sm.jpg',3),
('DP159105-495x400.jpg','DP159105-495x400sm.jpg',3),
('DP159106-492x400.jpg','DP159106-492x400sm.jpg',3),
('DP159107-493x400.jpg','DP159107-493x400sm.jpg',3),
('DP159108-495x400.jpg','DP159108-495x400sm.jpg',3),
('the-costume-of-china01-601x400.jpg','the-costume-of-china01-601x400sm.jpg',4),
('the-costume-of-china02-601x400.jpg','the-costume-of-china02-601x400sm.jpg',4),
('the-costume-of-china03-601x400.jpg','the-costume-of-china03-601x400sm.jpg',4),
('the-costume-of-china04-601x400.jpg','the-costume-of-china04-601x400sm.jpg',4),
('the-costume-of-china05-601x400.jpg','the-costume-of-china05-601x400sm.jpg',4),
('the-costume-of-china06-601x400.jpg','the-costume-of-china06-601x400sm.jpg',4),
('the-costume-of-china07-601x400.jpg','the-costume-of-china07-601x400sm.jpg',4),
('the-costume-of-china08-601x400.jpg','the-costume-of-china08-601x400sm.jpg',4),
('the-costume-of-china09-601x400.jpg','the-costume-of-china09-601x400sm.jpg',4),
('the-costume-of-china10-601x400.jpg','the-costume-of-china10-601x400sm.jpg',4),
('the-costume-of-china11-601x400.jpg','the-costume-of-china11-601x400sm.jpg',4),
('the-costume-of-china13-601x400.jpg','the-costume-of-china13-601x400sm.jpg',4),
('the-costume-of-china14-601x400.jpg','the-costume-of-china14-601x400sm.jpg',4),
('the-costume-of-china15-601x400.jpg','the-costume-of-china15-601x400sm.jpg',4),
('the-costume-of-china16-601x400.jpg','the-costume-of-china16-601x400sm.jpg',4),
('the-costume-of-china17-601x400.jpg','the-costume-of-china17-601x400sm.jpg',4),
('the-costume-of-china18-601x400.jpg','the-costume-of-china18-601x400sm.jpg',4),
('the-costume-of-china19-601x400.jpg','the-costume-of-china19-601x400sm.jpg',4),
('the-costume-of-china20-601x400.jpg','the-costume-of-china20-601x400sm.jpg',4),
('the-costume-of-china21-601x400.jpg','the-costume-of-china21-601x400sm.jpg',4),
('the-costume-of-china22-601x400.jpg','the-costume-of-china22-601x400sm.jpg',4),
('the-costume-of-china23-601x400.jpg','the-costume-of-china23-601x400sm.jpg',4),
('the-costume-of-china24-601x400.jpg','the-costume-of-china24-601x400sm.jpg',4),
('the-costume-of-china25-601x400.jpg','the-costume-of-china25-601x400sm.jpg',4),
('the-costume-of-china26-601x400.jpg','the-costume-of-china26-601x400sm.jpg',4),
('the-costume-of-china27-601x400.jpg','the-costume-of-china27-601x400sm.jpg',4),
('the-costume-of-china28-601x400.jpg','the-costume-of-china28-601x400sm.jpg',4),
('the-costume-of-china29-601x400.jpg','the-costume-of-china29-601x400sm.jpg',4),
('the-costume-of-china30-601x400.jpg','the-costume-of-china30-601x400sm.jpg',4),
('boxer-codex01-285x400.jpg','boxer-codex01-285x400sm.jpg',5),
('boxer-codex02-285x400.jpg','boxer-codex02-285x400sm.jpg',5),
('boxer-codex03-285x400.jpg','boxer-codex03-285x400sm.jpg',5),
('boxer-codex04-285x400.jpg','boxer-codex04-285x400sm.jpg',5),
('boxer-codex05-285x400.jpg','boxer-codex05-285x400sm.jpg',5),
('boxer-codex06-285x400.jpg','boxer-codex06-285x400sm.jpg',5),
('boxer-codex07-285x400.jpg','boxer-codex07-285x400sm.jpg',5),
('boxer-codex08-285x400.jpg','boxer-codex08-285x400sm.jpg',5),
('boxer-codex09-285x400.jpg','boxer-codex09-285x400sm.jpg',5),
('boxer-codex10-285x400.jpg','boxer-codex10-285x400sm.jpg',5),
('boxer-codex11-285x400.jpg','boxer-codex11-285x400sm.jpg',5),
('boxer-codex12-285x400.jpg','boxer-codex12-285x400sm.jpg',5),
('boxer-codex13-285x400.jpg','boxer-codex13-285x400sm.jpg',5),
('boxer-codex14-285x400.jpg','boxer-codex14-285x400sm.jpg',5),
('boxer-codex15-285x400.jpg','boxer-codex15-285x400sm.jpg',5),
('boxer-codex16-285x400.jpg','boxer-codex16-285x400sm.jpg',5),
('boxer-codex17-285x400.jpg','boxer-codex17-285x400sm.jpg',5),
('boxer-codex18-285x400.jpg','boxer-codex18-285x400sm.jpg',5),
('boxer-codex19-285x400.jpg','boxer-codex19-285x400sm.jpg',5),
('boxer-codex20-285x400.jpg','boxer-codex20-285x400sm.jpg',5),
('sjmwtj01-600x400.jpg','sjmwtj01-600x400sm.jpg',6),
('sjmwtj02-600x400.jpg','sjmwtj02-600x400sm.jpg',6),
('sjmwtj03-600x400.jpg','sjmwtj03-600x400sm.jpg',6),
('sjmwtj04-600x400.jpg','sjmwtj04-600x400sm.jpg',6),
('sjmwtj05-600x400.jpg','sjmwtj05-600x400sm.jpg',6),
('sjmwtj06-600x400.jpg','sjmwtj06-600x400sm.jpg',6),
('sjmwtj07-600x400.jpg','sjmwtj07-600x400sm.jpg',6),
('sjmwtj08-600x400.jpg','sjmwtj08-600x400sm.jpg',6),
('sjmwtj09-600x400.jpg','sjmwtj09-600x400sm.jpg',6),
('sjmwtj10-600x400.jpg','sjmwtj10-600x400sm.jpg',6),
('sjmwtj11-600x400.jpg','sjmwtj11-600x400sm.jpg',6),
('sjmwtj12-600x400.jpg','sjmwtj12-600x400sm.jpg',6),
('sjmwtj13-600x400.jpg','sjmwtj13-600x400sm.jpg',6),
('sjmwtj14-600x400.jpg','sjmwtj14-600x400sm.jpg',6),
('sjmwtj15-600x400.jpg','sjmwtj15-600x400sm.jpg',6),
('sjmwtj16-600x400.jpg','sjmwtj16-600x400sm.jpg',6),
('sjmwtj17-600x400.jpg','sjmwtj17-600x400sm.jpg',6),
('sjmwtj18-600x400.jpg','sjmwtj18-600x400sm.jpg',6),
('sjmwtj19-600x400.jpg','sjmwtj19-600x400sm.jpg',6),
('sjmwtj20-600x400.jpg','sjmwtj20-600x400sm.jpg',6),
('500luohantuzan01-443x400.jpg','500luohantuzan01-443x400sm.jpg',7),
('500luohantuzan02-440x400.jpg','500luohantuzan02-440x400sm.jpg',7),
('500luohantuzan03-444x400.jpg','500luohantuzan03-444x400sm.jpg',7),
('500luohantuzan04-440x400.jpg','500luohantuzan04-440x400sm.jpg',7),
('500luohantuzan05-440x400.jpg','500luohantuzan05-440x400sm.jpg',7),
('500luohantuzan06-440x400.jpg','500luohantuzan06-440x400sm.jpg',7),
('500luohantuzan07-447x400.jpg','500luohantuzan07-447x400sm.jpg',7),
('500luohantuzan08-440x400.jpg','500luohantuzan08-440x400sm.jpg',7),
('500luohantuzan09-434x400.jpg','500luohantuzan09-434x400sm.jpg',7),
('500luohantuzan10-439x400.jpg','500luohantuzan10-439x400sm.jpg',7),
('500luohantuzan11-441x400.jpg','500luohantuzan11-441x400sm.jpg',7),
('500luohantuzan12-449x400.jpg','500luohantuzan12-449x400sm.jpg',7),
('500luohantuzan13-440x400.jpg','500luohantuzan13-440x400sm.jpg',7),
('500luohantuzan14-447x400.jpg','500luohantuzan14-447x400sm.jpg',7),
('500luohantuzan15-447x400.jpg','500luohantuzan15-447x400sm.jpg',7),
('500luohantuzan16-446x400.jpg','500luohantuzan16-446x400sm.jpg',7),
('500luohantuzan17-449x400.jpg','500luohantuzan17-449x400sm.jpg',7),
('500luohantuzan18-449x400.jpg','500luohantuzan18-449x400sm.jpg',7),
('zjpts01-600x400.jpg','zjpts01-600x400sm.jpg',8),
('zjpts02-600x400.jpg','zjpts02-600x400sm.jpg',8),
('zjpts03-600x400.jpg','zjpts03-600x400sm.jpg',8),
('zjpts04-600x400.jpg','zjpts04-600x400sm.jpg',8),
('zjpts05-600x400.jpg','zjpts05-600x400sm.jpg',8),
('zjpts06-600x400.jpg','zjpts06-600x400sm.jpg',8),
('zjpts07-600x400.jpg','zjpts07-600x400sm.jpg',8),
('zjpts08-600x400.jpg','zjpts08-600x400sm.jpg',8),
('zjpts09-600x400.jpg','zjpts09-600x400sm.jpg',8),
('zjpts10-600x400.jpg','zjpts10-600x400sm.jpg',8),
('zjpts11-600x400.jpg','zjpts11-600x400sm.jpg',8),
('zjpts12-600x400.jpg','zjpts12-600x400sm.jpg',8),
('zjpts13-600x400.jpg','zjpts13-600x400sm.jpg',8),
('zjpts14-600x400.jpg','zjpts14-600x400sm.jpg',8),
('zjpts15-600x400.jpg','zjpts15-600x400sm.jpg',8),
('zjpts16-600x400.jpg','zjpts16-600x400sm.jpg',8),
('zjpts18-600x400.jpg','zjpts18-600x400sm.jpg',8),
('zjpts19-600x400.jpg','zjpts19-600x400sm.jpg',8),
('zjpts20-600x400.jpg','zjpts20-600x400sm.jpg',8),
('zjpts23-600x400.jpg','zjpts23-600x400sm.jpg',8),
('zjpts24-600x400.jpg','zjpts24-600x400sm.jpg',8),
('zjpts27-600x400.jpg','zjpts27-600x400sm.jpg',8),
('zjpts211-600x400.jpg','zjpts211-600x400sm.jpg',8),
('zjpts221-600x400.jpg','zjpts221-600x400sm.jpg',8),
('zjpts251-600x400.jpg','zjpts251-600x400sm.jpg',8),
('zjpts261-600x400.jpg','zjpts261-600x400sm.jpg',8),
('zjpts281-600x400.jpg','zjpts281-600x400sm.jpg',8),
('zjpts291-600x400.jpg','zjpts291-600x400sm.jpg',8),
('zjpts301-600x400.jpg','zjpts301-600x400sm.jpg',8),
('baihuaniaotu01-585x400.jpg','baihuaniaotu01-585x400sm.jpg',9),
('baihuaniaotu02-585x400.jpg','baihuaniaotu02-585x400sm.jpg',9),
('baihuaniaotu03-585x400.jpg','baihuaniaotu03-585x400sm.jpg',9),
('baihuaniaotu04-585x400.jpg','baihuaniaotu04-585x400sm.jpg',9),
('baihuaniaotu05-585x400.jpg','baihuaniaotu05-585x400sm.jpg',9),
('baihuaniaotu06-585x400.jpg','baihuaniaotu06-585x400sm.jpg',9),
('baihuaniaotu07-585x400.jpg','baihuaniaotu07-585x400sm.jpg',9),
('baihuaniaotu08-585x400.jpg','baihuaniaotu08-585x400sm.jpg',9),
('baihuaniaotu09-585x400.jpg','baihuaniaotu09-585x400sm.jpg',9),
('baihuaniaotu10-585x400.jpg','baihuaniaotu10-585x400sm.jpg',9),
('baihuaniaotu11-585x400.jpg','baihuaniaotu11-585x400sm.jpg',9),
('baihuaniaotu12-585x400.jpg','baihuaniaotu12-585x400sm.jpg',9),
('baihuaniaotu13-585x400.jpg','baihuaniaotu13-585x400sm.jpg',9),
('baihuaniaotu14-585x400.jpg','baihuaniaotu14-585x400sm.jpg',9),
('baihuaniaotu15-585x400.jpg','baihuaniaotu15-585x400sm.jpg',9),
('baihuaniaotu16-585x400.jpg','baihuaniaotu16-585x400sm.jpg',9),
('baihuaniaotu17-585x400.jpg','baihuaniaotu17-585x400sm.jpg',9),
('baihuaniaotu18-585x400.jpg','baihuaniaotu18-585x400sm.jpg',9),
('baihuaniaotu19-585x400.jpg','baihuaniaotu19-585x400sm.jpg',9),
('baihuaniaotu20-585x400.jpg','baihuaniaotu20-585x400sm.jpg',9),
('baihuaniaotu21-585x400.jpg','baihuaniaotu21-585x400sm.jpg',9),
('baihuaniaotu22-585x400.jpg','baihuaniaotu22-585x400sm.jpg',9),
('baihuaniaotu23-585x400.jpg','baihuaniaotu23-585x400sm.jpg',9),
('baihuaniaotu24-585x400.jpg','baihuaniaotu24-585x400sm.jpg',9),
('baihuaniaotu25-585x400.jpg','baihuaniaotu25-585x400sm.jpg',9),
('baihuaniaotu26-585x400.jpg','baihuaniaotu26-585x400sm.jpg',9),
('baihuaniaotu27-585x400.jpg','baihuaniaotu27-585x400sm.jpg',9),
('baihuaniaotu28-585x400.jpg','baihuaniaotu28-585x400sm.jpg',9),
('baihuaniaotu29-585x400.jpg','baihuaniaotu29-585x400sm.jpg',9),
('baihuaniaotu30-585x400.jpg','baihuaniaotu30-585x400sm.jpg',9),
('baihuaniaotu31-585x400.jpg','baihuaniaotu31-585x400sm.jpg',9),
('baihuaniaotu32-585x400.jpg','baihuaniaotu32-585x400sm.jpg',9),
('baihuaniaotu33-585x400.jpg','baihuaniaotu33-585x400sm.jpg',9),
('baihuaniaotu34-585x400.jpg','baihuaniaotu34-585x400sm.jpg',9),
('baihuaniaotu35-585x400.jpg','baihuaniaotu35-585x400sm.jpg',9),
('baihuaniaotu36-585x400.jpg','baihuaniaotu36-585x400sm.jpg',9),
('baihuaniaotu37-585x400.jpg','baihuaniaotu37-585x400sm.jpg',9),
('baihuaniaotu38-585x400.jpg','baihuaniaotu38-585x400sm.jpg',9),
('baihuaniaotu39-585x400.jpg','baihuaniaotu39-585x400sm.jpg',9),
('baihuaniaotu40-585x400.jpg','baihuaniaotu40-585x400sm.jpg',9),
('baihuaniaotu41-585x400.jpg','baihuaniaotu41-585x400sm.jpg',9),
('baihuaniaotu42-585x400.jpg','baihuaniaotu42-585x400sm.jpg',9),
('baihuaniaotu43-585x400.jpg','baihuaniaotu43-585x400sm.jpg',9),
('baihuaniaotu44-585x400.jpg','baihuaniaotu44-585x400sm.jpg',9),
('baihuaniaotu45-585x400.jpg','baihuaniaotu45-585x400sm.jpg',9),
('baihuaniaotu46-585x400.jpg','baihuaniaotu46-585x400sm.jpg',9),
('baihuaniaotu47-585x400.jpg','baihuaniaotu47-585x400sm.jpg',9),
('baihuaniaotu48-585x400.jpg','baihuaniaotu48-585x400sm.jpg',9),
('baihuaniaotu49-585x400.jpg','baihuaniaotu49-585x400sm.jpg',9),
('baihuaniaotu50-585x400.jpg','baihuaniaotu50-585x400sm.jpg',9),
('baihuaniaotu51-585x400.jpg','baihuaniaotu51-585x400sm.jpg',9),
('baihuaniaotu52-585x400.jpg','baihuaniaotu52-585x400sm.jpg',9),
('baihuaniaotu53-585x400.jpg','baihuaniaotu53-585x400sm.jpg',9),
('baihuaniaotu54-585x400.jpg','baihuaniaotu54-585x400sm.jpg',9),
('baihuaniaotu55-585x400.jpg','baihuaniaotu55-585x400sm.jpg',9),
('baihuaniaotu56-585x400.jpg','baihuaniaotu56-585x400sm.jpg',9),
('AtlasofChile01-280x400.jpg','AtlasofChile01-280x400sm.jpg',10),
('AtlasofChile02-301x400.jpg','AtlasofChile02-301x400sm.jpg',10),
('AtlasofChile03-314x400.jpg','AtlasofChile03-314x400sm.jpg',10),
('AtlasofChile04-508x400.jpg','AtlasofChile04-508x400sm.jpg',10),
('AtlasofChile05-508x400.jpg','AtlasofChile05-508x400sm.jpg',10),
('AtlasofChile06-508x400.jpg','AtlasofChile06-508x400sm.jpg',10),
('AtlasofChile07-508x400.jpg','AtlasofChile07-508x400sm.jpg',10),
('AtlasofChile08-508x400.jpg','AtlasofChile08-508x400sm.jpg',10),
('AtlasofChile09-508x400.jpg','AtlasofChile09-508x400sm.jpg',10),
('AtlasofChile10-508x400.jpg','AtlasofChile10-508x400sm.jpg',10),
('AtlasofChile11-508x400.jpg','AtlasofChile11-508x400sm.jpg',10),
('AtlasofChile12-508x400.jpg','AtlasofChile12-508x400sm.jpg',10),
('AtlasofChile13-508x400.jpg','AtlasofChile13-508x400sm.jpg',10),
('AtlasofChile14-508x400.jpg','AtlasofChile14-508x400sm.jpg',10),
('AtlasofChile15-314x400.jpg','AtlasofChile15-314x400sm.jpg',10),
('AtlasofChile16-314x400.jpg','AtlasofChile16-314x400sm.jpg',10),
('AtlasofChile17-314x400.jpg','AtlasofChile17-314x400sm.jpg',10),
('AtlasofChile18-314x400.jpg','AtlasofChile18-314x400sm.jpg',10),
('AtlasofChile19-314x400.jpg','AtlasofChile19-314x400sm.jpg',10),
('AtlasofChile20-507x400.jpg','AtlasofChile20-507x400sm.jpg',10),
('AtlasofChile21-507x400.jpg','AtlasofChile21-507x400sm.jpg',10),
('AtlasofChile22-507x400.jpg','AtlasofChile22-507x400sm.jpg',10),
('AtlasofChile23-315x400.jpg','AtlasofChile23-315x400sm.jpg',10),
('AtlasofChile24-315x400.jpg','AtlasofChile24-315x400sm.jpg',10),
('AtlasofChile25-317x400.jpg','AtlasofChile25-317x400sm.jpg',10),
('AtlasofChile26-506x400.jpg','AtlasofChile26-506x400sm.jpg',10),
('AtlasofChile27-316x400.jpg','AtlasofChile27-316x400sm.jpg',10),
('AtlasofChile28-502x400.jpg','AtlasofChile28-502x400sm.jpg',10),
('AtlasofChile29-316x400.jpg','AtlasofChile29-316x400sm.jpg',10),
('AtlasofChile30-321x400.jpg','AtlasofChile30-321x400sm.jpg',10),
('AtlasofChile31-321x400.jpg','AtlasofChile31-321x400sm.jpg',10),
('AtlasofChile32-321x400.jpg','AtlasofChile32-321x400sm.jpg',10);




                             /**书架**/
CREATE TABLE rack_table(
    r_id      INT PRIMARY KEY AUTO_INCREMENT,
    r_imgsm   VARCHAR(64),
    r_title   VARCHAR(224),
    r_content VARCHAR(1200),
    r_price   FLOAT(6,2),
    r_author  VARCHAR(24),
    r_press   VARCHAR(224)
);
INSERT INTO rack_table VALUES
(
    NULL,
    'r49565838435.jpg',
    '御窑千年',
    '本书尺寸：20.9×16.8厘米，厚1.6厘米。本书为阎崇年先生新作，史学家写专题瓷器史，全书彩色插图137幅。',
    '52',
    '阎崇年著',
    '三联书店'
),
(
      NULL,
      'r88754297822.jpg',
      '《四库全书总目》',
      '本书尺寸：24×16.9厘米，厚1.1厘米。本书为《中国珍贵古籍史话丛书》第17种，正文前有韩永进所撰写的《丛书总序》。本书前有周积明自序。正文分七章谈了《四库全书总目》的编撰、编撰官、版本与流传以及《四库全书总目》的研究与文化价值等。书前有彩色书影4页。',
      '58',
      '周积明等著',
      '国家图书馆出版社'
  ),
(
    NULL,
    'r71813406311.jpg',
    '红楼梦概论',
    '本书尺寸：20.2×13.9厘米，厚1.4厘米。本书为国家图书出版社2017年第3次印刷，此次重印，补充了一些新的信息，以反映红学的最新成果。书前有原色图版13页，另有冯其庸撰写的《序》。全书共分四部分，分别为《红楼梦》概论，曹雪芹的祖籍、家世和《红楼梦》的关系，清代的评点派红学，怎样读《红楼梦》。书后有冯其庸撰写的《后记》和李广柏撰写的《重印补记》。',
    '27.2',
    '冯其庸，李广柏著',
    '国家图书馆出版社'
),
(
    NULL,
    '27708782161sm.jpg',
    '画史之外',
    '本书尺寸：23.1×15.5厘米，厚1厘米。本书为星汉文章创建后首先推出的图书，作者是近年风头正劲的画家郁俊，这本是他本业之外的思考（《画史之外》），从吴道子到他的老师朱新建，从宫廷画和文人画两条线来侃侃而谈。',
    '48',
    '郁俊著',
    '海燕出版社'
),
(
    NULL,
    '44383985764sm.jpg',
    '唐褚遂良写大字阴符经真迹',
    '本书尺寸：31.1×21.1厘米，厚1.8厘米，24叶48面。布面，外有纸函。本书为宝玥斋编《碑帖法书藏真》第一种，原色影印传为唐褚遂良所书的《大字阴符经》。书后有丛书主编之一的田丰先生撰写的《简介》，说明此墨迹流传及各方研究情况。此本自民国以来，由陶湘、叶公超等人多次影印，国内近三十年来数次翻印，影响极大。原物现收藏于旧金山亚洲艺术博物馆，系叶氏家族捐赠。此次为该墨迹本首次以原色影印方式印行，所用技术为调频网印刷',
    '228.00',
    '宝玥斋编',
    '古吴轩出版社'
),
(
    NULL,
    '36563896849sm.jpg',
    '唐薛稷信行禅师碑',
    '本书尺寸：31.1×21.1厘米，厚1.3厘米，29叶58面，布面，外有纸函。本书为宝玥斋编《碑帖法书藏真》第二种，原色影印存世宋拓孤本《信行禅师碑》。本书采用调频网印刷工艺印制，尽可能保留了原拓本的信息。本拓本原为清代何绍基旧藏，后归入日本大谷大学。书后有王铎、吴荣光题跋，一并影印',
    '195.00',
    '宝玥斋编',
    '古吴轩出版社'
),
(
    NULL,
    '26540202378sm.jpg',
    '纸上金石——小品善拓过眼录',
    '本书连函尺寸：38.5×27.2厘米，厚7.2厘米。本书为仲威先生新著，8开精装，2函2册，自重6公斤。本书收入“金石小品拓本”160余件，均为作者在上海图书馆碑帖整理中的最新发现，分为八大类：金类、石类、砖陶类、玉类、金石集拓类、杂类、博古图类、外国类，每类下面均包含多种器物。本书文字部分，除藏品概况、收藏情况、拓本描述之外，还附录相关鉴藏家的生平信息，过录名家题跋、题签等文献资料。书前有《凡例》。',
    '864.00',
    '仲威编著',
    '文物出版社'
),
(
    NULL,
    '23660241398sm.jpg',
    '清代皇家陈设秘档·静明园卷',
    '本书尺寸：26.5×19.5厘米，厚76厘米。自重22公斤。本书由一档与香港凤凰卫视合编，是清帝御用珍品的辑录汇总。此为静明园部分。套红影印。正文前有《前言》，介绍了内务府陈设档的历史概况、主要内容、整理编纂以及研究价值等。',
    '16800.00',
    '中国第一历史档案馆，香港凤凰卫视有限公司编',
    '文物出版社'
),
(
    NULL,
    '87849759922sm.jpg',
    '花笺·十竹斋',
    '本书尺寸：32.4×20.5厘米，厚0.5厘米。这是文物社新出版的花笺系列之一的《十竹斋》，共四辑，每辑都有20个图案的笺纸2组，40张，泾县二分熟净皮宣纸，宣纸彩印。全四辑共计80个图案，160张笺纸，分装为四袋。',
    '336.00',
    '（明）胡正言编；扬州慕宋阁选编',
    '文物出版社'
),
(
    NULL,
    '67405538779sm.jpg',
    '杂馔',
    '本书尺寸：23.1×15.5厘米，厚0.8厘米。本书为星汉文章创建后首先推出的图书，作者是近年风头正劲的画家郁俊，本册是他的关于饮食的那些杂忆（《杂馔》），主要说的是上海的吃。有部分老照片作为插图。',
    '32.00',
    '郁俊著',
    '海燕出版社'
),
(
    NULL,
    '49565838435sm.jpg',
    '御窑千年',
    '本书尺寸：20.9×16.8厘米，厚1.6厘米。本书为阎崇年先生新作，史学家写专题瓷器史，全书彩色插图137幅。本书售价包含快递（新疆西藏除外）',
    '52.00',
    '阎崇年著',
    '三联书店'
),
(
    NULL,
    '47256427956sm.jpg',
    '太古遗韵：中国古琴文化大展图录',
    '本书尺寸：24×17厘米，厚1.4厘米。本书系国家典籍博物馆特别举办“太古遗韵——中国古琴文化大展”图录，全书分为两个部分介绍中国古琴文化知识，一为古琴史，二为古琴的基本知识。内有200余幅古琴实物照片、相关文献书影、古琴演奏家旧照等',
    '55.00',
    '国家图书馆编',
    '国家图书馆出版社'
),
(
    NULL,
    '36292336361sm.jpg',
    '硃痕探骊',
    '本书尺寸：21.2×13.2厘米，厚4.5厘米。《硃痕探骊》是韦力先生第一次尝试用一本书去解读另外一本书，那部书就是乾隆时著名收藏家汪启淑的《飞鸿堂印谱》。印谱收藏也是韦力先生的专题之一，汪启淑所制印谱也是他的所爱。本书系作者从《飞鸿堂印谱》第一集和第三集中选择一百零七方印章，以专色原大影印于书中，所附小文均为作者对于此印的所思所感。书前书后分别有韦力先生自撰序跋。韦力先生也喜欢请人篆刻他所喜欢的词句为闲章，应该不无汪启淑的影响。本书布面精装，社里特制1000册同款笔记本（336面），交由布衣，作为套装一同发售。',
    '100.00',
    '韦力著',
    '海豚出版社'
);




/**轮播图片**/
CREATE TABLE r_carousel(
    r_img  VARCHAR(64),
    r_did   INT
);
INSERT INTO r_carousel VALUES
('r44597489766.jpg',1),
('r54817216117.jpg',1),
('r81586336605.jpg',2),
('r81586336605.jpg',2),
('r71813406311.jpg',3),
('r38027672633.jpg',3),
('27708782161.jpg',4),
('39311205403.jpg',4),
('44383985764.jpg',5),
('16892366114.jpg',5),
('36563896849.jpg',6),
('72903857854.jpg',6),
('26540202378.jpg',7),
('72040643466.jpg',7),
('23660241398.jpg',8),
('63736434838.jpg',8),
('87849759922.jpg',9),
('81408160916.jpg',9),
('67405538779.jpg',10),
('96218405598.jpg',10),
('49565838435.jpg',11),
('02179367561.jpg',11),
('47256427956.jpg',12),
('91937649637.jpg',12),
('36292336361.jpg',13),
('43580531047.jpg',13);



/**用户表**/

CREATE TABLE sg_users(
    userid   INT PRIMARY KEY AUTO_INCREMENT, /*购物车编号*/
    uname    VARCHAR(20),                     /*用户名*/
    pwd      VARCHAR(20),                       /*密码*/
    phone    VARCHAR(20)                      /*电话*/
);
INSERT INTO sg_users VALUES
(NULL,'mary','11111','13111112345'),
(NULL,'jerry','22222','13819196547'),
(NULL,'john','33333','13819196547');

/**订单表**/
CREATE TABLE sg_order(
    oid INT PRIMARY KEY AUTO_INCREMENT,     /*订单ID*/
    userid INT,                             /*用户*/
    phone VARCHAR(16),                      /*联系电话*/
    user_name VARCHAR(16),                  /*收货方用户名*/
    order_time LONG,                        /*下单时间*/
    addr VARCHAR(256),                      /*订单地址*/
    totalprice FLOAT(6,2)                   /*订单总价*/
);
INSERT INTO sg_order VALUES
(NULL,1,'13501234567','大旭',1445154859209,'大钟寺中鼎B座',20.5),
(NULL,1,'13501257543','琳妹妹',1445154997543,'大钟寺中鼎B座',12.5),
(NULL,2,'13207654321','东东',1445254997612,'大钟寺中鼎B座',55),
(NULL,2,'13899999999','文兄',1445354959209,'大钟寺中鼎B座',35),
(NULL,3,'13683675299','梅姐',1445355889209,'大钟寺中鼎B座',45);


/**购物车表**/
CREATE TABLE sg_cart(
    ctid INT PRIMARY KEY AUTO_INCREMENT, /*购物车编号*/
    userid INT,                          /*用户编号：假定有用户id为 1 和 3 的两个用户有数据*/
    r_id INT,                             /*产品编号*/
    dishCount INT                      /*数量*/
);
INSERT INTO sg_cart VALUES
(1,1,1,1),
(2,1,2,4),
(3,1,5,2),
(4,3,2,10),
(5,3,6,1);


/**订单详情表**/
CREATE TABLE sg_orderdetails(
    oid INT ,                            /*订单编号*/
    r_id INT,                             /*产品id*/
    dishCount INT,                     /*购买数量*/
    r_price   FLOAT(8,2)                    /*产品单价：需要记载，因为产品价格可能波动*/
);
INSERT INTO sg_orderdetails VALUES (1,1,2,5),
(1,2,1,10.5),
(2,3,1,12.5),
(3,1,3,5),
(3,2,4,10),
(4,4,7,5),
(5,5,5,4),
(5,6,2,12.5);





