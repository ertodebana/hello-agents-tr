
# Bölüm 1: Agent'lara Giriş

Agent dünyasına hoş geldin! Yapay zeka dalgasının tüm dünyayı sardığı bu dönemde, **Agent'lar** teknolojik dönüşümün ve uygulama inovasyonunun merkezine yerleşti. YZ alanında araştırmacı ya da mühendis olmayı hedefliyor olsan da, sadece bu alanı derinlemesine merak ediyor olsan da, agent'ların özünü kavramak güçlü bir temel sağlar.

Bu nedenle bu bölümde temellere dönelim ve birlikte birkaç soruyu keşfedelim: Agent nedir? Ana türleri nelerdir? Yaşadığımız dünya ile nasıl etkileşime girer? Bu tartışmalar aracılığıyla, ilerideki öğrenim ve araştırmanız için sağlam bir temel oluşturmayı umuyoruz.

<div align="center">
  <img src="https://raw.githubusercontent.com/datawhalechina/Hello-Agents/main/docs/images/1-figures/1757242319667-0.png" alt="Agent ile ortam arasındaki temel etkileşim döngüsü" width="90%"/>
  <p>Şekil 1.1 Agent ile ortam arasındaki temel etkileşim döngüsü</p>
</div>

## 1.1 Agent Nedir?

Herhangi bir karmaşık kavramı araştırırken en iyi başlangıç noktası özlü bir tanımdır. Yapay zeka alanında agent, **Sensor'lar** (Sensors) aracılığıyla **Ortamını** (Environment) algılayabilen ve belirli hedeflere ulaşmak için **Actuator'lar** (Actuators) aracılığıyla **özerk** biçimde **Eylemler** (Actions) gerçekleştirebilen herhangi bir varlık olarak tanımlanır.

Bu tanım, bir agent'ın varlığının dört temel öğesini barındırır. Ortam, agent'ın içinde çalıştığı dış dünyadır. Özerk bir araç için ortam, dinamik değişen yol trafiğidir; bir alım satım algoritması için ortam, sürekli değişen finansal piyasadır. Agent ortamdan yalıtılmış değildir; algılayıcılar aracılığıyla ortam durumunu sürekli algılar. Kameralar, mikrofonlar, radarlar veya çeşitli **API'ler** tarafından döndürülen veri akışları, algısal yeteneklerinin birer uzantısıdır.

Bilgi edindikten sonra agent, ortamı etkilemek için eyleyiciler aracılığıyla durumunu değiştirerek eylemler gerçekleştirmesi gerekir. Actuator'lar fiziksel aygıtlar (örneğin robot kolları veya direksiyon) ya da sanal araçlar (örneğin kod çalıştırma veya hizmet çağırma) olabilir.

Ancak bir ajana gerçek anlamda "zeka" kazandıran şey **Özerkliğidir** (Autonomy). Bir agent, yalnızca dış uyaranlara pasif biçimde yanıt veren ya da önceden belirlenmiş talimatları sıkı sıkıya uygulayan bir program değildir; algılarına ve iç durumuna dayanarak bağımsız kararlar alabilir ve tasarım hedeflerine ulaşabilir. Algıdan eyleme uzanan bu kapalı döngü, tüm agent davranışlarının temelini oluşturur; Şekil 1.1'de gösterildiği gibi.

### 1.1.1 Geleneksel Perspektiften Agent'lar

**LLM'ler** gündemi devralmadan önce, yapay zeka öncüleri "agent" kavramını onlarca yıl boyunca araştırdı ve geliştirdi. Bugün "geleneksel agent'lar" diye andığımız bu paradigmalar tek bir durağan kavram değil; basitten karmaşığa, pasif tepkiden aktif öğrenmeye uzanan net bir evrim çizgisi.

Bu evrimin başlangıç noktası, yapısal olarak en basit olan **Simple Reflex Agent**'dır. Karar alma çekirdekleri, mühendisler tarafından açıkça tasarlanmış "koşul-eylem" kurallarından oluşur; Şekil 1.2'de gösterildiği gibi. Klasik otomatik termostat bu şekilde çalışır: sensör oda sıcaklığının belirlenen değerin üzerinde olduğunu algılarsa soğutma sistemini devreye alır.

Bu tür agent tamamen anlık algısal girdiye dayanır; bellek veya tahmin yetenekleri yoktur. Dijitalleştirilmiş bir içgüdü gibidir — güvenilir ve verimli, ama bu yüzden bağlamı anlamayı gerektiren karmaşık görevleri üstlenemez. Sınırlılıkları temel bir soruyu gündeme getirir: Ortamın mevcut durumu, karar almanın tek dayanağı olarak yetersiz kalırsa agent ne yapmalıdır?

<div align="center">
  <img src="https://raw.githubusercontent.com/datawhalechina/Hello-Agents/main/docs/images/1-figures/1757242319667-1.png" alt="Basit refleks agent'ın karar mantığı diyagramı" width="90%"/>
  <p>Şekil 1.2 Basit refleks agent'ın karar mantığı diyagramı</p>
</div>

Bu soruyu yanıtlamak için araştırmacılar "durum" kavramını ortaya koydu ve **Model-Based Reflex Agent'lar** geliştirdi. Bu tür agent, doğrudan algılanamayan ortam yönlerini izlemek ve anlamak için kullanılan dahili bir **World Model**e sahiptir. "Dünya şu an nasıl?" sorusunu yanıtlamaya çalışır. Örneğin bir tünel içinden geçen otonom araç, kamerası önündeki aracı geçici olarak algılayamasa bile dahili modeli o aracın varlığına, hızına ve tahmini konumuna ilişkin yargıyı korur. Bu dahili model agent'a ilkel bir "bellek" biçimi kazandırır; kararlarını artık yalnızca anlık algıya değil, dünya durumuna dair daha tutarlı ve eksiksiz bir anlayışa dayandırır.

Ancak yalnızca dünyayı anlamak yeterli değildir; bir agent'ın net hedeflere ihtiyacı vardır. Bu durum **Goal-Based Agent'ların** geliştirilmesine yol açtı. Önceki iki türden farklı olarak davranışları artık ortama pasif tepkiyle değil, belirli bir gelecek durumuna yönlendiren eylemleri aktif biçimde seçerek şekillenir. Bu agent'ın yanıtlaması gereken soru: "Amacıma ulaşmak için ne yapmalıyım?" Klasik bir örnek, GPS navigasyon sistemidir: hedefiniz ofise ulaşmak ve agent, harita verilerini (world model) kullanarak arama algoritmalarıyla (A* gibi) en uygun rotayı planlayacak. Bu tür agent'ın temel yetkinliği, geleceği gözetme ve planlama kapasitesinde yansımaktadır.

Daha ileri gidildiğinde, gerçek dünya hedefleri çoğu zaman tekil değildir. Yalnızca ofise ulaşmak değil, en kısa sürede, en az yakıtla ve trafiği aşarak ulaşmak da isteriz. Birden fazla hedefe denge kurulması gerektiğinde **Utility-Based Agent'lar** ortaya çıktı. Bu agent'lar her olası dünya durumuna bir fayda değeri atarlar; bu değer memnuniyet düzeyini temsil eder. Agent'ın temel hedefi artık belirli bir duruma ulaşmak değil, beklenen faydayı en üst düzeye çıkarmaktır. Daha karmaşık bir soruyu yanıtlaması gerekir: "Hangi davranış bana en tatminkar sonucu getirir?" Bu mimari, agent'ın çatışan hedefleri dengelemeyi öğrenmesini sağlar; kararlarını insan rasyonel tercihine daha yakın kılar.

Şimdiye kadar ele aldığımız agent'lar, işlevsel açıdan giderek daha karmaşık hale gelse de, temel karar alma mantıkları için — kurallar, modeller veya fayda işlevleri olsun — insan tasarımcıların önceden edinilmiş bilgilerine dayanmaya devam etmektedir. Ya bir agent, önceden ayarlara gerek duymaksızın ortamla etkileşim yoluyla özerk olarak öğrenebilseydi?

Bu, **Learning Agent'ların** temel fikridir ve **Reinforcement Learning (RL)** bu fikri hayata geçirmenin en temsili yoludur. Bir learning agent, bir performans öğesi (daha önce ele aldığımız agent türleri) ve bir öğrenme öğesi içerir. Öğrenme öğesi, performans öğesinin ortamdaki eylemlerinin sonuçlarını gözlemleyerek karar alma stratejisini sürekli biçimde değiştirir.

Satranç oynamayı öğrenen bir YZ'yi hayal edin. Başlangıçta rastgele hamleler yapabilir; ancak sonunda bir oyun kazandığında sistem ona olumlu bir ödül verir. Kapsamlı öz-oyun sayesinde öğrenme öğesi, hangi hamlelerin nihai zafere daha fazla yol açtığını yavaş yavaş keşfeder. AlphaGo Zero, bu anlayışın dönüm noktası bir başarısıdır. Go'nun karmaşık oyununda pekiştirmeli öğrenme yoluyla mevcut insan bilgisini aşan pek çok etkili stratejiyi keşfetmiştir.

Basit termostatlardan dahili modelli araçlara, rota planlayabilen navigasyona, artılarla eksiler arasındaki dengeyi bilen karar vericilere ve son olarak deneyim yoluyla kendi kendini evrimleştirebilen öğrenenlere uzanan bu evrimsel yol, geleneksel yapay zekanın makine zekası inşa etmedeki gelişim yörüngesini ortaya koymaktadır. Günümüzün daha keskin kenarındaki agent paradigmalarını anlamamız için sağlam ve zorunlu bir temel oluştururlar.

### 1.1.2 Büyük Dil Modelleri ile Yeni Paradigma

**GPT** ile temsil edilen büyük dil modelleri, agent'ların nasıl inşa edildiğini ve hangi yetenek sınırlarına ulaşabildiğini kökten değiştirdi. LLM tabanlı agent'lar, temel karar alma mekanizmaları açısından geleneksel agent'lardan belirgin şekilde ayrılır ve bu da onlara yeni bir kapasite seviyesi kazandırır.

Bu dönüşüm, çekirdek motor, bilgi kaynağı ve etkileşim biçimi gibi birden fazla boyutta iki tarafın karşılaştırılmasından açıkça görülmektedir; Tablo 1.1'de gösterildiği gibi. Kısaca söylemek gerekirse, geleneksel agent'ların yetenekleri mühendislerin açık programlamasından ve bilgi inşasından kaynaklanmakta; davranış örüntüleri belirleyici ve sınırlıdır. LLM agent'ları ise büyük veriler üzerinde önceden eğitim yoluyla örtük dünya modelleri ve güçlü ortaya çıkan yetenekler edinmiş; karmaşık görevleri daha esnek ve genel bir biçimde ele alabilmektedir.

<div align="center">
  <p>Tablo 1.1 Geleneksel agent'lar ile LLM güdümlü agent'lar arasındaki temel karşılaştırma</p>
  <img src="https://raw.githubusercontent.com/datawhalechina/Hello-Agents/main/docs/images/1-figures/1757242319667-2.png" alt="Geleneksel agent'lar ve LLM güdümlü agent'lar karşılaştırma tablosu" width="90%"/>
</div>

Bu fark, LLM agent'larının üst düzey, belirsiz ve bağlam zengini doğal dil talimatlarını doğrudan işleyebilmesini sağlar. Bunu göstermek için "akıllı seyahat asistanı" örneğini kullanalım.

LLM agent'larının ortaya çıkışından önce bir gezi planlamak, kullanıcıların birden fazla özel uygulama arasında (hava durumu, haritalar, rezervasyon siteleri gibi) manuel geçiş yapmak zorunda kaldığı anlamına geliyordu ve bilgi entegrasyonu ile karar alma rolü kullanıcının kendisine düşüyordu. Oysa bir LLM agentı bu süreci entegre edebilir. "Xiamen'e bir gezi planla" gibi belirsiz bir talimat alındığında çalışma yöntemi şu noktaları yansıtır:

- **Planlama ve Akıl Yürütme**: Agent önce bu üst düzey hedefi bir dizi mantıksal alt göreve ayrıştırır; örneğin: `[Seyahat tercihlerini doğrula] -> [Destinasyon bilgilerini sorgula] -> [Seyahat planı taslağı oluştur] -> [Bilet ve konaklama rezervasyonu yap]`. Bu, model odaklı dahili bir planlama sürecidir.
- **Araç Kullanımı**: Planı uygularken agent bilgi açıklarını tespit eder ve bunları doldurmak için dış araçları proaktif biçimde çağırır. Örneğin, gerçek zamanlı hava durumu almak için bir hava durumu sorgu arayüzü çağırır ve "yağmur tahmin ediliyor" bilgisine dayanarak sonraki planlamada kapalı alan etkinlikleri önermeye yönelir.
- **Dinamik Ayarlama**: Etkileşim sırasında agent kullanıcı geri bildirimlerini (örneğin "bu otel bütçemi aşıyor") yeni kısıtlamalar olarak değerlendirir ve sonraki eylemleri buna göre ayarlayarak yeni gereksinimleri karşılayan seçenekleri yeniden arar ve önerir. "**hava durumunu kontrol et → planı düzenle → otel rezervasyonu yap**" sürecinin tamamı, bağlama dayalı dinamik davranış değiştirme yeteneğini ortaya koyar.

Özetle, uzmanlaşmış otomasyon araçları geliştirmekten sorunları özerk biçimde çözebilen sistemler inşa etmeye geçiş yaşıyoruz. Artık çekirdek olan kodlama değil; genel bir "beyin"i planlama, hareket etme ve öğrenme konusunda yönlendirmektir.

### 1.1.3 Agent Türleri

Yukarıdaki agent evrimi incelemesinin ardından bu bölüm, agent'ları üç tamamlayıcı boyuttan sınıflandıracaktır.

**(1) Dahili Karar Mimarisine Dayalı Sınıflandırma**

İlk sınıflandırma boyutu, agent'ın dahili karar mimarisinin karmaşıklığına dayanmaktadır. Bu perspektif, "Yapay Zeka: Modern Bir Yaklaşım"<sup>[1]</sup> adlı eserde sistematik biçimde ortaya konulmuştur. 1.1.1. Bölümde açıklandığı gibi, geleneksel agent'ların evrimsel yolu başlı başına en klasik sınıflandırma merdivenini oluşturur: basit **reactive** agent'lardan dahili modelleri tanıtan **model-based** agent'lara, ardından daha ileriye yönelik **goal-based** ve **utility-based** agent'lara uzanır. Ayrıca **learning capability**, yukarıdaki tüm türlere kazandırılabilen bir üst yetenektir; onların deneyimle kendi kendini iyileştirmesini sağlar.

**(2) Zaman ve Reaktiviteye Dayalı Sınıflandırma**

Dahili mimari karmaşıklığının yanı sıra agent'lar, karar alma işleminin zaman boyutundan da sınıflandırılabilir. Bu perspektif, bir agent'ın bilgi aldıktan hemen sonra mı yoksa kasıtlı bir planlama sonucunda mı eyleme geçtiğine odaklanır. Bu, agent tasarımında temel bir değiş tokuşu ortaya koyar: **Reaktivite** (hız) ile **Müzakere** (en uygun çözüm) arasındaki denge; Şekil 1.3'te gösterildiği gibi.

<div align="center">
  <img src="https://raw.githubusercontent.com/datawhalechina/Hello-Agents/main/docs/images/1-figures/1757242319667-3.png" alt="Agent karar süresi ile kalite arasındaki ilişki" width="90%"/>
  <p>Şekil 1.3 Agent karar süresi ile kalite arasındaki ilişki</p>
</div>

- **Reaktif Agent'lar**

Bu tür agent, çevresel uyaranlara son derece düşük karar gecikmesiyle neredeyse anlık yanıtlar verir. Genellikle algıdan eyleme doğrudan bir eşleşme izler; gelecekle ilgili planlama yok veya minimum düzeydedir. Yukarıda bahsedilen **basit reaktif** ve **model tabanlı** agent'lar bu kategoriye girer.

Temel avantajları **hız ve düşük hesaplama yükü**nde yatmaktadır; bu, hızlı karar almayı gerektiren dinamik ortamlarda kritik önem taşır. Örneğin bir aracın hava yastığı sistemi çarpışmadan milisaniyeler içinde tepki vermek zorundadır; herhangi bir gecikme ciddi sonuçlara yol açabilir. Benzer biçimde, yüksek frekanslı alım satım robotları anlık fırsatları yakalamak için reaktif karar almaya güvenir. Ancak bu hızın bedeli "kısa görüşlülük"tür. Uzun vadeli planlama eksikliği nedeniyle reaktif agent'lar kolayca yerel optimumlara düşer ve çok adımlı koordinasyon gerektiren karmaşık görevlerde zorlanır.

- **Müzakereli Agent'lar**

Reactive agent'ların tersine, müzakereli (veya planlayan) agent'lar eylem almadan önce karmaşık düşünce ve planlama süreçlerine girer. Algılara anında tepki vermez; önce dahili world model'ları kullanarak çeşitli gelecek olasılıklarını sistematik biçimde araştırır, farklı eylem dizilerinin sonuçlarını değerlendirir ve hedeflere en uygun yolu bulmayı umar. **Goal-Based** ve **Utility-Based** agent'lar tipik müzakereli agent'lardır.

Karar alma süreçleri bir satranç oyuncusuna benzetilebilir. Yalnızca anlık hamleye bakmaz; olası rakip yanıtlarını önceden görür ve sonraki hamleleri, hatta onlarca hamleyi planlar. Bu müzakere kapasitesi onların uzun vadeli vizyon gerektiren karmaşık görevleri üstlenmesini sağlar: bir iş planı oluşturmak ya da uzun bir seyahat planlamak gibi. Avantajları kararlarının stratejik niteliğinde ve öngörüsünde yatar. Ancak bu avantajın öteki yüzü yüksek zaman ve hesaplama maliyetidir. Hızla değişen ortamlarda, bir müzakereli agent derin düşüncenin içindeyken en iyi eylem anı çoktan geçmiş olabilir.

- **Hibrit Agent'lar**

Gerçek dünyadaki karmaşık görevler çoğu zaman hem anlık tepkilere hem de uzun vadeli planlamaya ihtiyaç duyar. Örneğin daha önce bahsedilen akıllı seyahat asistanı, kullanıcının anlık geri bildirimlerine (örneğin "bu otel çok pahalı") dayanarak önerileri ayarlamak (reaktivite) ile tam bir çok günlük seyahat planı hazırlamak (müzakere) arasında denge kurmalıdır. Bu nedenle hibrit agent'lar ortaya çıktı; her ikisinin avantajlarını birleştirmeyi ve tepki ile planlama arasında denge kurmayı hedefler.

Klasik bir hibrit mimari hiyerarşik tasarımdır: alt katmanda acil durumları ve temel eylemleri ele alan hızlı reaktif modül; üst katmanda ise uzun vadeli hedefleri belirlemekten sorumlu müzakereli planlama modülü yer alır. Modern LLM agent'ları daha esnek bir hibrit mod sergiler. Genellikle "düşün-eyle-gözlemle" döngüsünde çalışır ve her iki modu akıllıca entegre eder:

- **Akıl Yürütme**: "Düşünme" aşamasında LLM mevcut durumu analiz eder ve sonraki makul eylemi planlar. Bu müzakereli bir süreçtir.
- **Eylem ve Gözlem**: "Eylem" ve "gözlem" aşamalarında agent dış araçlarla veya ortamla etkileşime girer ve anında geri bildirim alır. Bu reaktif bir süreçtir.

Bu yaklaşım sayesinde agent, uzun vadeli planlama gerektiren büyük bir görevi bir dizi "planlama-tepki" mikro döngüsüne ayrıştırır. Böylece anlık çevresel değişimlere esnek yanıt verirken tutarlı adımlarla karmaşık uzun vadeli hedefleri de tamamlar.

**(3) Bilgi Temsiline Dayalı Sınıflandırma**

Bu, agent'ların karar almak için kullandıkları bilginin "zihinlerinde" ne biçimde var olduğunu araştıran daha temel bir sınıflandırma boyutudur. Bu soru, yapay zeka alanında yarım asrı aşkın süredir devam eden ve iki belirgin farklı YZ kültürünü şekillendiren tartışmanın merkezindedir.

- **Symbolic AI**

Sembolizm, geleneksel yapay zeka olarak da adlandırılır; temel inancı şudur: zeka, semboller üzerindeki mantıksal işlemlerden kaynaklanır. Buradaki semboller insan tarafından okunabilir varlıklardır (kelimeler, kavramlar gibi) ve işlemler kesin mantıksal kurallara uyar; Şekil 1.4'ün sol tarafında gösterildiği gibi. Bu, dünya bilgisini açık kural tabanlarına ve bilgi grafiklerine düzenleyen titiz bir kütüphaneci gibidir.

Temel avantajı şeffaflık ve yorumlanabilirliktir. Akıl yürütme adımları açık olduğundan karar alma süreci tamamen izlenebilir; bu, finans ve sağlık gibi yüksek riskli alanlarda hayati önem taşır. Ancak "Aşil topuğu" kırılganlıktır: eksiksiz bir kural sistemine dayanır; oysa belirsizlik ve istisnalarla dolu gerçek dünyada kapsanmayan herhangi bir yeni durum sistem çöküşüne yol açabilir. Bu, "bilgi edinme darboğazı" olarak bilinir.

- **Sub-Symbolic AI**

Alt-sembolizm, yani bağlantıcılık, tamamen farklı bir tablo sunar. Burada bilgi açık kurallar değil; çok sayıda nörondan oluşan karmaşık bir ağda örtük biçimde dağılmış olup büyük verilerden öğrenilen istatistiksel örüntüleri temsil eder. Sinir ağları ve derin öğrenme temsilcileridir.

Şekil 1.4'ün ortasında gösterildiği gibi, Symbolic AI titiz bir kütüphaneciyse Sub-Symbolic AI mırıldanan bir bebek gibidir. "Kedilerin dört bacağı var, tüylüdür ve miyavlar" gibi kuralları ezberleyerek değil; binlerce kedi resmi gördükten sonra sinir ağı "kedi" kavramının görsel örüntüsünü ayırt etmeyi öğrenir. Bu yaklaşımın gücü, örüntü tanıma kapasitesinde ve gürültülü veriye karşı dayanıklılığında yatar. Symbolic AI için çok zor olan görüntü ve ses gibi yapılandırılmamış verileri rahatlıkla işler.

Ancak bu güçlü sezgisel kapasite opaklaşmayla birlikte gelir. Alt-sembolik sistemler genellikle bir **Kara Kutu** olarak görülür. Bir resimdeki kediyi şaşırtıcı bir doğrulukla tanımlayabilir; ama "neden bunun kedi olduğunu düşünüyorsun?" diye sorulduğunda mantıksal açıklama sunamaz. Ayrıca salt mantıksal akıl yürütme görevlerinde zayıf kalır ve zaman zaman makul görünen ama olgusal açıdan yanlış halüsinasyonlar üretir.

- **Neuro-Symbolic AI**

Uzun süre Symbolic AI ve Sub-Symbolic AI iki paralel çizgi gibi gelişti. Bu iki paradigmanın sınırlılıklarını aşmak için "büyük uzlaşma" fikri ortaya çıktı: **Neuro-Symbolic AI**. Hedef, her iki yaklaşımın güçlü yanlarını birleştirmek; sinir ağları gibi veriden öğrenebilen ve sembolik sistemler gibi mantıksal akıl yürütebilen hibrit bir agent üretmek. Bu yaklaşım, algı ile biliş; sezgi ile akıl arasındaki boşluğu kapatmaya çalışır. Nobel ödüllü ekonomist Daniel Kahneman'ın "Hızlı ve Yavaş Düşünme" adlı eserinde öne sürdüğü ikili sistem teorisi<sup>[2]</sup>, bunu anlamak için iyi bir analoji sunar:

- **Sistem 1**, hızlı, sezgisel, paralel düşünme modudur; Sub-Symbolic AI'nin güçlü örüntü tanıma kapasitesine benzer.
- **Sistem 2**, yavaş, metodolojik, mantık tabanlı müzakereli düşüncedir; tıpkı Symbolic AI'nin akıl yürütme süreci gibi.

<div align="center">
  <img src="https://raw.githubusercontent.com/datawhalechina/Hello-Agents/main/docs/images/1-figures/1757242319667-4.png" alt="Sembolizm, alt-sembolizm ve nöro-sembolik hibridin bilgi temsili paradigmaları" width="90%"/>
  <p>Şekil 1.4 Sembolizm, alt-sembolizm ve nöro-sembolik hibridin bilgi temsili paradigmaları</p>
</div>

İnsan zekası bu iki sistemin ortak çalışmasından kaynaklanır. Benzer biçimde, gerçek anlamda sağlam bir YZ da her ikisinin güçlü yönlerini birleştirmek zorundadır. Büyük dil modeli güdümlü agent'lar, nöro-sembolizmin mükemmel pratik bir örneğidir. Çekirdeği devasa bir sinir ağıdır; bu ona örüntü tanıma ve dil üretme yetenekleri kazandırır. Ancak çalışırken düşünceler, planlar veya API çağrıları gibi açık, işlenebilir semboller olan yapılandırılmış ara adımlar üretir. Bu yaklaşımla algı ile biliş, sezgi ile akıl arasında ön düzeyde bir birleşim sağlar.

## 1.2 Agent'ların Bileşimi ve Çalışma İlkeleri

### 1.2.1 Görev Ortamı Tanımı

Bir agent'ın nasıl çalıştığını anlamak için önce içinde faaliyet gösterdiği **görev ortamını** anlamalıyız. Yapay zeka alanında, **PEAS modeli** bir görev ortamını kesin biçimde tanımlamak için kullanılır; **Performans ölçüsü, Ortam, Actuator'lar ve Sensor'lar** boyutlarını analiz eder. Daha önce bahsedilen akıllı seyahat asistanı örneğini kullanarak, aşağıdaki Tablo 1.2, görev ortamını belirtmek için PEAS modelinin nasıl kullanılacağını göstermektedir.

<div align="center">
  <p>Tablo 1.2 Akıllı seyahat asistanının PEAS açıklaması</p>
  <img src="https://raw.githubusercontent.com/datawhalechina/Hello-Agents/main/docs/images/1-figures/1757242319667-6.png" alt="Akıllı seyahat asistanı PEAS tablosu" width="90%"/>
</div>

Pratikte LLM agent'larının çalıştığı dijital ortam, agent tasarımını doğrudan etkileyen birkaç karmaşık özellik sergiler.

İlk olarak ortam genellikle **kısmen gözlemlenebilir**dir. Örneğin bir seyahat asistanı uçuşları sorguladığında, tüm havayollarından tüm gerçek zamanlı koltuk bilgilerini aynı anda edinemez. Yalnızca çağırdığı uçuş rezervasyon API'sinin döndürdüğü kısmi verileri görebilir; bu durum agent'ın bellek (sorgulanan güzergahları hatırlama) ve keşif (farklı tarihler deneme) kapasitelerine sahip olmasını gerektirir.

İkinci olarak eylemlerin sonuçları her zaman belirleyici değildir. Sonuçların öngörülebilirliğine göre ortamlar **belirleyici** ve **stokastik** olarak ayrılır. Seyahat asistanının görev ortamı tipik bir stokastik ortamdır. Bilet fiyatlarını ararken birbirine yakın iki çağrı farklı bilet fiyatları ve kalan koltuk sayıları döndürebilir; bu durum agent'ın belirsizliği ele alma, değişimleri izleme ve zamanında karar alma kapasitesine sahip olmasını gerektirir.

Ayrıca ortamda başka aktörler bulunabilir; bu da **multi-agent** ortamı oluşturur. Seyahat asistanı için diğer kullanıcıların rezervasyon davranışları, diğer otomatik betikler ve hatta havayollarının dinamik fiyatlandırma sistemleri, ortamdaki diğer "agent'lardır". Eylemlerinin tamamı (örneğin son indirimli bileti rezerve etmek) seyahat asistanının içinde çalıştığı ortamın durumunu doğrudan değiştirir; agent'ın hızlı yanıt verme ve strateji seçme kapasitesine daha yüksek talepler getirir.

Son olarak neredeyse tüm görevler **ardışık** ve **dinamik** ortamlarda gerçekleşir. "Ardışık", mevcut eylemlerin geleceği etkilediği anlamına gelir; "dinamik" ise agent karar verirken ortamın kendisinin değişebileceği anlamına gelir. Bu, agent'ın "algıla-düşün-eyle-gözlemle" döngüsünün sürekli değişen bir dünyaya hızla ve esnek biçimde uyum sağlayabilmesini zorunlu kılar.

### 1.2.2 Agent Çalışma Mekanizması

Bir agent'ın içinde faaliyet gösterdiği görev ortamını tanımladıktan sonra çekirdek çalışma mekanizmasını keşfedelim. Bir agent görevleri tek seferinde tamamlamaz; sürekli bir döngü aracılığıyla ortamla etkileşime girer. Bu temel mekanizma **Agent Döngüsü** olarak adlandırılır. Şekil 1.5'te gösterildiği gibi bu döngü, agent ile ortam arasındaki dinamik etkileşim sürecini tanımlar; özerk davranışın temelini oluşturur.

<div align="center">
  <img src="https://raw.githubusercontent.com/datawhalechina/Hello-Agents/main/docs/images/1-figures/1757242319667-5.png" alt="Agent-ortam etkileşiminin temel döngüsü" width="90%"/>
  <p>Şekil 1.5 Agent-ortam etkileşiminin temel döngüsü</p>
</div>

Bu döngü esas olarak birbiriyle bağlantılı aşağıdaki aşamaları içerir:

1. **Algılama**: Döngünün başlangıç noktasıdır. Agent, algılayıcıları (örneğin API dinleme portları, kullanıcı giriş arayüzleri) aracılığıyla ortamdan girdi bilgilerini alır. Bu bilgiler, yani **Gözlem** (Observation), kullanıcının başlangıç talimatı ya da önceki eylemin neden olduğu çevre durumu değişikliklerine ilişkin geri bildirim olabilir.
2. **Düşünme**: Gözlem bilgilerini aldıktan sonra agent çekirdek karar alma aşamasına girer. LLM agent'ları için bu genellikle büyük dil modelleri tarafından yönlendirilen dahili bir akıl yürütme sürecidir. Şekilde gösterildiği gibi, "düşünce" aşaması iki temel bağlantıya ayrılabilir:
   - **Planlama**: Mevcut gözlemlere ve dahili belleğine dayanarak agent göreve ve ortama ilişkin anlayışını günceller; eylem planını formüle eder veya ayarlar. Bu, karmaşık hedeflerin bir dizi daha somut alt göreve ayrıştırılmasını içerebilir.
   - **Araç Seçimi**: Mevcut plana dayanarak agent, mevcut araç kitaplığından bir sonraki adımı uygulamak için en uygun aracı seçer ve o aracı çağırmak için gereken belirli parametreleri belirler.
3. **Eylem**: Karar alma tamamlandığında agent, eyleyicileri aracılığıyla belirli eylemleri gerçekleştirir. Bu genellikle seçilen bir aracın (örneğin kod yorumlayıcı veya arama motoru API'si) çağrılması olarak kendini gösterir; böylece durumunu değiştirme amacıyla ortamı etkiler.

Eylem döngünün sonu değildir. Agent'ın eylemi ortamda bir **durum değişikliğine** yol açar; bu da sonuç geri bildirimi olarak yeni bir **gözlem** üretir. Bu yeni gözlem, döngünün bir sonraki turunda agent'ın algı sistemi tarafından yakalanır ve sürekli bir "algıla-düşün-eyle-gözlemle" kapalı döngüsü oluşturur. Agent, bu döngüyü sürekli tekrarlayarak görevi yavaş yavaş ilerletir; başlangıç durumundan hedef durumuna doğru evrimleşir.

### 1.2.3 Agent'ın Algı ve Eylemi

Mühendislik pratiğinde, LLM'lerin bu döngüyü etkin biçimde yönlendirebilmesi için agent ile ortam arasındaki bilgi alışverişini düzenleyen açık bir **Etkileşim Protokolüne** ihtiyaç vardır.

Birçok modern agent çerçevesinde bu protokol, her agent çıktısının yapılandırılmış tanımında somutlaşır. Agent'ın çıktısı artık tek bir doğal dil yanıtı değil; dahili akıl yürütme sürecini ve nihai kararı açıkça gösteren belirli bir formatı izleyen metin parçasıdır.

Bu yapı genellikle iki temel bölüm içerir:

- **Thought**: Agent'ın dahili karar almasının "anlık görüntüsü"dür. Agent'ın mevcut durumu nasıl analiz ettiğini, önceki adımın gözlem sonuçlarını nasıl değerlendirdiğini, öz-yansıma ve problem ayrıştırması gerçekleştirdiğini ve son olarak bir sonraki somut eylemi nasıl planladığını doğal dilde dile getirir.
- **Action**: Düşünceye dayanarak agent'ın ortama uygulamaya karar verdiği spesifik işlemdir; genellikle bir işlev çağrısı olarak ifade edilir.

Örneğin, bir gezi planlayan agent aşağıdaki formatlı çıktıyı üretebilir:

```Bash
Thought: Kullanıcı Pekin'deki hava durumunu öğrenmek istiyor. Hava durumu sorgu aracını çağırmam gerekiyor.
Action: get_weather("Pekin")
```

Buradaki `Action` alanı dış dünyaya bir talimat oluşturur. Harici bir **Ayrıştırıcı** bu talimatı yakalayacak ve karşılık gelen `get_weather` fonksiyonunu çağıracaktır.

Eylem gerçekleştirildikten sonra ortam bir sonuç döndürür. Örneğin, `get_weather` fonksiyonu ayrıntılı hava verisi içeren bir JSON nesnesi döndürebilir. Ancak ham makine tarafından okunabilir veriler (JSON gibi) genellikle LLM'nin odaklanmasına gerek olmayan fazladan bilgi içerir ve format doğal dil işleme alışkanlıklarına uymaz.

Bu nedenle algı sisteminin önemli bir sorumluluğu sensör rolü oynamaktır: bu ham çıktıyı işler ve kısa, net doğal dil metnine, yani gözleme dönüştürür.

```Bash
Observation: Pekin'in mevcut hava durumu güneşli, sıcaklık 25 santigrat derece, hafif esinti.
```

Bu `Observation` metni, bir sonraki döngü turunda yeni bir `Thought` ve `Action` turunu gerçekleştirmesi için agent'ın ana girdi bilgisi olarak geri beslenir.

Özetle, Thought, Action ve Observation'dan oluşan bu döngü sayesinde LLM agent'ları, dahili dil temelli akıl yürütmeyi dış ortamdaki gerçek bilgi ve tool operasyonlarıyla etkili biçimde birleştirebilir.

## 1.3 Uygulamalı Deneyim: 5 Dakikada İlk Agent'ınızı Uygulayın

Önceki bölümlerde agent'ın görev ortamını, temel çalışma mekanizmasını ve `Thought-Action-Observation` etkileşim paradigmasını öğrendik. Teorik bilgi önemli olsa da öğrenmenin en iyi yolu uygulamadır. Bu bölümde, birkaç satır Python kodu kullanarak sıfırdan çalışan bir akıllı seyahat asistanı inşa etmenize rehberlik edeceğiz. Bu süreç az önce öğrendiğimiz teorik döngüyü izleyecek; bir agent'ın nasıl "düşündüğünü" ve dış "araçlarla" nasıl etkileşime girdiğini sezgisel biçimde deneyimlemenizi sağlayacak. Hadi başlayalım!

Bu vakada amacımız, adım adım görevleri yönetebilen akıllı bir seyahat asistanı inşa etmektir. Çözülecek kullanıcı görevi şöyle tanımlanıyor: "Merhaba, lütfen bugün Pekin'deki hava durumunu kontrol etmeme yardım et ve ardından havaya göre uygun bir turistik yeri öner." Bu görevi tamamlamak için agent açık mantıksal planlama yetenekleri sergilemek zorundadır. Önce hava durumu sorgulama aracını çağırması ve elde ettiği gözlem sonuçlarını bir sonraki adımın temeli olarak kullanması gerekir. Döngünün bir sonraki turunda ise sonunda nihai öneriyi sunmak için turistik yer öneri aracını çağırır.

### 1.3.1 Hazırlık

Python programından web API'lerine erişmek için bir HTTP kütüphanesine ihtiyacımız var. `requests`, Python topluluğunda en popüler ve kullanımı kolay seçenektir. `tavily-python`, gerçek zamanlı web arama sonuçları almak için güçlü bir YZ arama API istemcisidir; [resmi websitesine](https://www.tavily.com/) kaydolarak edinilebilir. `openai`, GPT gibi büyük dil modeli hizmetleri çağırmak için OpenAI tarafından sağlanan resmi Python SDK'sıdır. Önce aşağıdaki komutla kurulumlarını yapın:

```bash
pip install requests tavily-python openai
```

(1) Talimat Şablonu

Gerçek bir LLM'yi yönlendirmenin anahtarı **İstem Mühendisliği**nde yatar. LLM'ye hangi rolü üstleneceğini, hangi araçlara sahip olduğunu ve düşüncelerini ve eylemlerini nasıl biçimlendireceğini söyleyen bir "talimat şablonu" tasarlamamız gerekiyor. Bu, `system_prompt` olarak LLM'ye aktarılacak agent'ımızın "kılavuzudur".

```
AGENT_SYSTEM_PROMPT = """
Sen akıllı bir seyahat asistanısın. Görevin, kullanıcı isteklerini analiz etmek ve sorunları adım adım çözmek için mevcut araçları kullanmaktır.

# Mevcut Araçlar:
- `get_weather(city: str)`: Belirtilen bir şehrin gerçek zamanlı hava durumunu sorgular.
- `get_attraction(city: str, weather: str)`: Şehir ve hava durumuna göre önerilen turistik yerleri arar.

# Çıktı Formatı Gereksinimleri:
Her yanıt mutlaka bu formatı izlemeli; bir Thought-Action çifti içermelidir:

Thought: [Düşünce sürecin ve sonraki adım planın]
Action: [Gerçekleştirmek istediğin spesifik eylem]

Eylem formatı aşağıdakilerden biri olmalıdır:
1. Bir aracı çağır: function_name(arg_name="arg_value")
2. Görevi bitir: Finish[son yanıt]

# Önemli Notlar:
- Her seferinde yalnızca bir Thought-Action çifti çıktıla
- Eylem aynı satırda olmalı, satır atlatma
- Kullanıcının sorusunu yanıtlamak için yeterli bilgi topladığında, Action: Finish[son yanıt] formatını kullanarak bitirmelisin

Başlayalım!
"""
```

(2) Araç 1: Gerçek Hava Durumunu Sorgula

Belirli bir şehrin hava verilerini JSON formatında döndürebilen ücretsiz hava durumu sorgulama hizmeti `wttr.in`'i kullanacağız. Bu aracı uygulamak için kod:

```python
import requests

def get_weather(city: str) -> str:
    """
    wttr.in API'sini çağırarak gerçek hava durumu bilgisi sorgular.
    """
    # API uç noktası, JSON formatında veri istiyoruz
    url = f"https://wttr.in/{city}?format=j1"

    try:
        # Ağ isteği yap
        response = requests.get(url)
        # Yanıt durum kodunun 200 (başarılı) olup olmadığını kontrol et
        response.raise_for_status()
        # Döndürülen JSON verilerini ayrıştır
        data = response.json()

        # Mevcut hava koşullarını çıkar
        current_condition = data['current_condition'][0]
        weather_desc = current_condition['weatherDesc'][0]['value']
        temp_c = current_condition['temp_C']

        # Doğal dil olarak biçimlendirilmiş şekilde döndür
        return f"{city} mevcut hava durumu: {weather_desc}, sıcaklık {temp_c} santigrat derece"

    except requests.exceptions.RequestException as e:
        # Ağ hatalarını işle
        return f"Hata: Hava durumu sorgulanırken ağ sorunu oluştu - {e}"
    except (KeyError, IndexError) as e:
        # Veri ayrıştırma hatalarını işle
        return f"Hata: Hava durumu verileri ayrıştırılamadı, şehir adı geçersiz olabilir - {e}"
```

(3) Araç 2: Turistik Yerleri Ara ve Öner

Şehir ve hava koşullarına göre uygun turistik yerleri internette arayan yeni bir araç `search_attraction` tanımlayacağız:

```python
import os
from tavily import TavilyClient

def get_attraction(city: str, weather: str) -> str:
    """
    Şehir ve hava durumuna göre, Tavily Search API'sini kullanarak
    turistik yer önerileri arar ve döndürür.
    """
    # 1. Ortam değişkeninden API anahtarını oku
    api_key = os.environ.get("TAVILY_API_KEY")
    if not api_key:
        return "Hata: TAVILY_API_KEY ortam değişkeni yapılandırılmamış."

    # 2. Tavily istemcisini başlat
    tavily = TavilyClient(api_key=api_key)

    # 3. Kesin bir sorgu oluştur
    query = f"'{weather}' havada '{city}'de en değer gezilecek turistik yerler ve nedenleri"

    try:
        # 4. API'yi çağır; include_answer=True kapsamlı bir yanıt döndürür
        response = tavily.search(query=query, search_depth="basic", include_answer=True)

        # 5. Tavily'nin döndürdüğü sonuçlar zaten temiz; doğrudan kullanılabilir
        # response['answer'] tüm arama sonuçlarına dayalı özet yanıttır
        if response.get("answer"):
            return response["answer"]

        # Kapsamlı yanıt yoksa ham sonuçları biçimlendir
        formatted_results = []
        for result in response.get("results", []):
            formatted_results.append(f"- {result['title']}: {result['content']}")

        if not formatted_results:
             return "Üzgünüm, ilgili turistik yer önerisi bulunamadı."

        return "Aramaya göre aşağıdaki bilgiler bulundu:\n" + "\n".join(formatted_results)

    except Exception as e:
        return f"Hata: Tavily araması yapılırken sorun oluştu - {e}"
```

Son olarak tüm araç fonksiyonlarını ana döngünün çağırabilmesi için bir sözlüğe koyalım:

```python
# Sonraki çağrılar için tüm araç fonksiyonlarını bir sözlüğe koy
available_tools = {
    "get_weather": get_weather,
    "get_attraction": get_attraction,
}
```

### 1.3.2 Büyük Dil Modellerine Bağlanmak

Günümüzde pek çok LLM servis sağlayıcısı (OpenAI, Azure ve Ollama, vLLM gibi çok sayıda açık kaynak model hizmet çerçevesi dahil) OpenAI API'sine benzer arayüz özelliklerine uyar. Bu standardizasyon geliştiricilere büyük kolaylık sağlar. Agent'ın özerk karar alma kapasitesi LLM'den gelir. OpenAI arayüz özelliğiyle uyumlu herhangi bir LLM hizmetine bağlanabilen evrensel bir istemci `OpenAICompatibleClient` uygulayacağız.

```python
from openai import OpenAI

class OpenAICompatibleClient:
    """
    OpenAI arayüzüyle uyumlu herhangi bir LLM hizmetini çağırmak için istemci.
    """
    def __init__(self, model: str, api_key: str, base_url: str):
        self.model = model
        self.client = OpenAI(api_key=api_key, base_url=base_url)

    def generate(self, prompt: str, system_prompt: str) -> str:
        """Yanıt üretmek için LLM API'sini çağır."""
        print("Büyük dil modeli çağrılıyor...")
        try:
            messages = [
                {'role': 'system', 'content': system_prompt},
                {'role': 'user', 'content': prompt}
            ]
            response = self.client.chat.completions.create(
                model=self.model,
                messages=messages,
                stream=False
            )
            answer = response.choices[0].message.content
            print("Büyük dil modeli başarıyla yanıt verdi.")
            return answer
        except Exception as e:
            print(f"LLM API çağrılırken hata oluştu: {e}")
            return "Hata: Dil modeli hizmeti çağrılırken hata oluştu."
```

Bu sınıfı örneklemek için üç bilgi parçası sağlamanız gerekir: `API_KEY`, `BASE_URL` ve `MODEL_ID`. Spesifik değerler kullandığınız servis sağlayıcıya bağlıdır (OpenAI resmi, Azure veya Ollama gibi yerel modeller). Henüz erişiminiz yoksa [Ortam Yapılandırması](https://github.com/datawhalechina/hello-agents/blob/main/Extra-Chapter/Extra07-环境配置.md)'na başvurabilirsiniz.

### 1.3.3 Eylem Döngüsünü Çalıştırma

Aşağıdaki ana döngü tüm bileşenleri entegre edecek ve biçimlendirilmiş istemler aracılığıyla LLM'yi karar almaya yönlendirecektir.

```python
import re

# --- 1. LLM istemcisini yapılandır ---
# Bunu kullandığınız hizmetle ilgili kimlik bilgileri ve adresle değiştirin
API_KEY = "YOUR_API_KEY"
BASE_URL = "YOUR_BASE_URL"
MODEL_ID = "YOUR_MODEL_ID"
TAVILY_API_KEY="YOUR_Tavily_KEY"
os.environ['TAVILY_API_KEY'] = "YOUR_TAVILY_API_KEY"

llm = OpenAICompatibleClient(
    model=MODEL_ID,
    api_key=API_KEY,
    base_url=BASE_URL
)

# --- 2. Başlat ---
user_prompt = "Merhaba, lütfen bugün Pekin'deki hava durumunu kontrol et ve ardından havaya göre uygun bir turistik yer öner."
prompt_history = [f"Kullanıcı isteği: {user_prompt}"]

print(f"Kullanıcı girişi: {user_prompt}\n" + "="*40)

# --- 3. Ana döngüyü çalıştır ---
for i in range(5): # Maksimum döngü sayısını ayarla
    print(f"--- Döngü {i+1} ---\n")

    # 3.1. İstem oluştur
    full_prompt = "\n".join(prompt_history)

    # 3.2. Düşünmek için LLM'yi çağır
    llm_output = llm.generate(full_prompt, system_prompt=AGENT_SYSTEM_PROMPT)
    # Modelin üretebileceği ekstra Thought-Action çiftlerini kes
    match = re.search(r'(Thought:.*?Action:.*?)(?=\n\s*(?:Thought:|Action:|Observation:)|\Z)', 
                    llm_output, re.DOTALL)
    if match:
        truncated = match.group(1).strip()
        if truncated != llm_output.strip():
            llm_output = truncated
            print("Ekstra Thought-Action çiftleri kesildi")
    print(f"Model çıktısı:\n{llm_output}\n")
    prompt_history.append(llm_output)

    # 3.3. Eylemi ayrıştır ve gerçekleştir
    action_match = re.search(r"Action: (.*)", llm_output, re.DOTALL)
    if not action_match:
        observation = "Hata: Eylem bulunamadı. Lütfen açıkça Action: finish(...) veya diğer eylemleri kullanın."
        observation_str = f"Observation: {observation}"
        print(f"{observation_str}\n" + "="*40)
        prompt_history.append(observation_str)
        continue
    action_str = action_match.group(1).strip()

    if action_str.startswith("Finish"):
        final_answer = re.match(r"Finish\[(.*)\]", action_str).group(1)
        print(f"Görev tamamlandı, son yanıt: {final_answer}")
        break

    tool_name = re.search(r"(\w+)\(", action_str).group(1)
    args_str = re.search(r"\((.*)\)", action_str).group(1)
    kwargs = dict(re.findall(r'(\w+)="([^"]*)"', args_str))

    if tool_name in available_tools:
        observation = available_tools[tool_name](**kwargs)
    else:
        observation = f"Hata: '{tool_name}' tanımsız araç"

    # 3.4. Gözlem sonuçlarını kaydet
    observation_str = f"Observation: {observation}"
    print(f"{observation_str}\n" + "="*40)
    prompt_history.append(observation_str)
```

Yukarıdaki adımlarla, gerçek bir LLM tarafından yönlendirilen eksiksiz bir agent inşa ettik. Çekirdeği "araçlar" ile "istem mühendisliği"nin birleşiminde yatar; bu da günümüz ana akım agent çerçevelerinin (LangChain, LlamaIndex vb. gibi) tasarım özüdür.

### 1.3.4 Çalışma Vakası Analizi

Aşağıdaki çıktı, başarılı bir agent yürütme sürecini tam olarak göstermektedir. Bu üç turlu döngünün analizi aracılığıyla, agent'ın sorunları çözmede sahip olduğu temel yetenekleri açıkça görebiliriz.

```bash
Kullanıcı girişi: Merhaba, lütfen bugün Pekin'deki hava durumunu kontrol et ve ardından havaya göre uygun bir turistik yer öner.
========================================
--- Döngü 1 ---

Büyük dil modeli çağrılıyor...
Büyük dil modeli başarıyla yanıt verdi.
Model çıktısı:
Thought: Önce bugün Pekin'in hava durumunu almam, ardından havaya göre turistik yerler önermem gerekiyor.
Action: get_weather(city="Pekin")

Observation: Pekin mevcut hava durumu: Güneşli, sıcaklık 26 santigrat derece
========================================
--- Döngü 2 ---

Büyük dil modeli çağrılıyor...
Büyük dil modeli başarıyla yanıt verdi.
Model çıktısı:
Thought: Bugün Pekin'in hava durumunun güneşli ve orta sıcaklıkta olduğunu biliyorum, bu bilgiye dayanarak uygun turistik yerleri önerebilirim.
Action: get_attraction(city="Pekin", weather="Güneşli")

Observation: Güneşli günlerde Pekin'de gezilmesi en değerli turistik yerler; güzel göl manzaraları ve tarihi mimarisiyle Yaz Sarayı ve muhteşem manzarasıyla tarihi önemi olan Çin Seddi'dir.
========================================
--- Döngü 3 ---

Büyük dil modeli çağrılıyor...
Büyük dil modeli başarıyla yanıt verdi.
Model çıktısı:
Thought: Güneşli günler için uygun iki turistik yer önerisi aldım, bu bilgilere dayanarak kullanıcıya tatmin edici bir yanıt sunabilirim.
Action: Finish[Bugün Pekin'de hava güneşli ve sıcaklık 26 santigrat derece; açık hava etkinlikleri için çok uygun. Güzel göl manzaraları ve tarihi mimarisiyle Yaz Sarayı'nı ya da muhteşem manzarası ve derin tarihi önemiyle Çin Seddi'ni ziyaret etmenizi öneririm. Keyifli bir gezi dilerim!]

Görev tamamlandı, son yanıt: Bugün Pekin'de hava güneşli ve sıcaklık 26 santigrat derece; açık hava etkinlikleri için çok uygun. Güzel göl manzaraları ve tarihi mimarisiyle Yaz Sarayı'nı ya da muhteşem manzarası ve derin tarihi önemiyle Çin Seddi'ni ziyaret etmenizi öneririm. Keyifli bir gezi dilerim!
```

Bu basit seyahat asistanı vakası, `Thought-Action-Observation` paradigmasına dayalı bir agent'ın dört temel yeteneğini yoğun biçimde göstermektedir: görev ayrıştırma, araç çağırma, bağlam anlama ve sonuç sentezleme. Döngünün sürekli yinelenmesiyle agent, belirsiz bir kullanıcı niyetini somut, uygulanabilir bir dizi adıma dönüştürebilir ve nihayet hedefe ulaşabilir.

## 1.4 Agent Uygulamalarının İşbirliği Modları

Önceki bölümde kendi agent'ımızı inşa ederek bir agent'ın dahili çalışma döngüsüne derin bir anlayış kazandık. Ancak daha geniş uygulama senaryolarında rolümüz giderek kullanıcı ve işbirlikçiye dönüşmektedir. Agent'ın görevlerdeki rolüne ve özerklik derecesine bağlı olarak işbirliği modları esas olarak iki türe ayrılır: biri iş akışımıza derinden entegre verimli bir araç olarak; diğeri karmaşık hedefleri tamamlamak için diğer agent'larla birlikte çalışan özerk bir işbirlikçi olarak.

### 1.4.1 Geliştirici Araçları Olarak Agent'lar

Bu modda agent'lar, geliştiricilerin iş akışlarına güçlü yardımcı araçlar olarak derinden entegre olur. Geliştiricinin rolünü güçlendirir ve onun yerine geçmez; sıkıcı ve tekrarlayan görevleri otomatikleştirir, böylece geliştiriciler yaratıcı çekirdek çalışmalara daha fazla odaklanabilir. Bu insan-makine işbirliği yaklaşımı yazılım geliştirmenin verimliliğini ve kalitesini büyük ölçüde artırır.

Günümüzde piyasada birden fazla mükemmel YZ programlama yardım aracı ortaya çıkmıştır. Hepsi geliştirme verimliliğini iyileştirse de uygulama yolları ve işlevsel odak noktaları bakımından farklılık gösterir:

- **GitHub Copilot**: Bu alandaki en etkili ürünlerden biri olan Copilot, GitHub ve OpenAI tarafından ortaklaşa geliştirildi. Visual Studio Code gibi ana akım editörlere derinden entegre edilmiş olup güçlü kod otomatik tamamlama yetenekleriyle tanınır.
- **Claude Code**: Claude Code, Anthropic tarafından geliştirilen ve geliştiricilerin terminal üzerinden doğal dil talimatlarıyla kodlama görevlerini verimli biçimde tamamlamasına yardımcı olmak için tasarlanmış YZ programlama asistanıdır.
- **Cursor**: Copilot'tan farklı olarak eklenti değil, YZ-yerel bir kod editörüdür. YZ etkileşimini tasarım aşamasından itibaren temel özellik olarak konumlandırmıştır.

### 1.4.2 Özerk İşbirlikçiler Olarak Agent'lar

İnsanlara yardımcı olmaktan farklı olarak, ikinci etkileşim modu agent'ların otomasyon düzeyini tamamen yeni bir seviyeye taşır: özerk işbirlikçiler. Bu modda YZ'yi artık her adımda adım adım yönlendirmeyiz; yüksek seviyeli bir hedefi ona devrederiz. Agent, gerçek bir proje ekip üyesi gibi bağımsız olarak planlar, akıl yürütür, uygular ve yansıtır; sonunda sonuçları teslim eder. Bu dönüşüm, YZ ile ilişkimizin "komut-yürütme"den "hedef-devretme"ye evrimini işaret eder.

Başlıca çerçeveler ve ürünler arasında erken dönem BabyAGI ve AutoGPT'den günümüzün daha olgun CrewAI, AutoGen, MetaGPT ve LangGraph çerçevelerine uzanan birçok yaklaşım bulunmaktadır. Mimari paradigmaları şu ana akım yönlere özetlenebilir:

1. **Tekil Agent Özerk Döngüsü**: Bir genel agent, açık uçlu üst düzey hedefi tamamlamak için "düşün-planla-uygula-yansıt" kapalı döngüsü aracılığıyla sürekli kendini istemler ve yineler.
2. **Çok-Agent İşbirliği**: Şu an en ana akım keşif yönüdür; insan ekip işbirliği modlarını simüle ederek karmaşık problemleri çözmeyi amaçlar.
3. **Gelişmiş Kontrol Akışı Mimarisi**: LangGraph gibi çerçeveler agent'ın yürütme sürecini durum grafiği olarak modelleyerek döngüler, dallar, geri dönüşler ve insan müdahalesi gibi karmaşık süreçleri daha esnek ve güvenilir biçimde uygulamayı sağlar.

### 1.4.3 Workflow ve Agent Arasındaki Farklar

Agent'ları hem "araçlar" hem "işbirlikçiler" olarak anladıktan sonra, Workflow ile Agent arasındaki farkları ele almak gerekir. Her ikisi de görev otomasyonunu hedefler; ancak temel mantıkları, çekirdek özellikleri ve uygulanabilir senaryoları temelden farklıdır.

Kısaca: **Workflow, YZ'ye adım adım talimat uygular; Agent ise YZ'ye hedefe özerk biçimde ulaşma özgürlüğü tanır.**

<div align="center">
  <img src="https://raw.githubusercontent.com/datawhalechina/Hello-Agents/main/docs/images/1-figures/1757242319667-18.png" alt="Workflow ve Agent arasındaki farklar" width="90%"/>
  <p>Şekil 1.6 Workflow ve Agent arasındaki farklar</p>
</div>

Şekil 1.6'da gösterildiği gibi iş akışı, çekirdeği **önceden tanımlanmış, yapılandırılmış bir dizi görev veya adım orkestrasyonu** olan geleneksel bir otomasyon paradigmasıdır. Özünde hangi koşullarda hangi operasyonların hangi sırayla yürütüleceğini belirten kesin, statik bir akış şemasıdır.

Agent'lar ise büyük dil modellerine dayalı olarak **özerk, hedef odaklı sistemlerdir**. Yalnızca önceden ayarlanmış talimatları uygulamakla kalmaz; ortamı belirli ölçüde anlayabilir, akıl yürütebilir, plan yapabilir ve nihai hedeflere ulaşmak için dinamik eylemler gerçekleştirebilir. Bu süreçte LLM'ler "beyin" rolünü üstlenir.

**Dinamik akıl yürütme ve gerçek zamanlı bilgiye dayalı karar alma yeteneği, agent'ların temel değeridir.**

## 1.4 Bölüm Özeti

Bu bölümde agent'lara tanıtım yolculuğuna çıktık. En temel sorularla başladık:

- **LLM güdümlü agent'lar nedir?** Önce tanımlarını netleştirdik; modern agent'ların önceden ayarlanmış programları yürüten betikler değil, özerk akıl yürütme ve araç kullanma yeteneklerine sahip karar vericiler olduğunu anladık.
- **Agent'lar nasıl çalışır?** Agent-ortam etkileşiminin çalışma mekanizmasını derinlemesine inceledik; bu sürekli kapalı döngünün bilgi işleme, karar alma, ortamı etkileme ve geri bildirime dayalı davranış ayarlama için temel oluşturduğunu öğrendik.
- **Bir agent nasıl inşa edilir?** "Akıllı seyahat asistanı" örneğini kullanarak gerçek bir LLM tarafından yönlendirilen eksiksiz bir agent inşa ettik.
- **Ana akım agent uygulama paradigmaları nelerdir?** Son olarak daha geniş uygulama alanlarına baktık; insan workflow'unu güçlendiren GitHub Copilot ve Cursor gibi "geliştirici araçları" ile CrewAI, MetaGPT, AgentScope gibi çerçeveler tarafından temsil edilen ve bağımsız olarak üst düzey hedefleri tamamlayabilen "özerk işbirlikçiler" olmak üzere iki ana akım agent etkileşim modunu araştırdık. Workflow ile Agent arasındaki farkları da açıkladık.

Bu bölümün öğreniminden yola çıkarak agent'lar hakkında temel bir bilişsel çerçeve oluşturduk. Peki, ilk kavranışından bugüne adım adım nasıl evrimleşti? Bir sonraki bölümde agent'ların gelişim tarihini araştıracağız; kökenlere dönüş yolculuğu başlamak üzere!

## Alıştırmalar

> **Not**: Aşağıdaki alıştırmaların bir kısmının standart yanıtı yoktur. Odak, öğrencilerin agent sistemleri hakkında eleştirel derinlemesine düşünme ve uygulamalı pratik yeteneklerini geliştirmektir.

1. Aşağıdaki dört `vakadaki` **özne**nin agent niteliği taşıyıp taşımadığını analiz edin. Taşıyorsa hangi agent türüne ait olduğunu (birden fazla sınıflandırma boyutundan analiz edilebilir) açıklayın:

   `Vaka A`: **Von Neumann mimarisine uyan bir süperbilgisayar**, saniye başına 2 EFlops'a kadar tepe hesaplama gücüyle

   `Vaka B`: **Tesla'nın otonom sürüş sistemi** otoyolda ilerlerken önünde aniden bir engel tespit eder ve milisaniyeler içinde frenleme ya da şerit değiştirme kararı vermesi gerekir

   `Vaka C`: **AlphaGo** bir insan oyuncuya karşı oynarken mevcut durumu değerlendirmesi ve onlarca hamle ötesi için en uygun stratejiyi planlaması gerekir

   `Vaka D`: **Akıllı müşteri hizmetleri olarak hareket eden ChatGPT** bir kullanıcı şikayetini ele alıyor; sipariş bilgilerini sorgulamak, sorunun nedenini analiz etmek, çözümler sunmak ve kullanıcı duygularını yatıştırmak zorundadır

2. "Akıllı fitness koçu" için bir görev ortamı tasarlamanız gerektiğini varsayalım. Bu agent şunları yapabilir:
   - Giyilebilir cihazlar aracılığıyla kullanıcıların kalp atışı ve egzersiz yoğunluğu gibi fizyolojik verilerini izler
   - Kullanıcıların fitness hedeflerine (yağ yakma/kas geliştirme/dayanıklılık artırma) göre antrenman planlarını dinamik biçimde ayarlar
   - Kullanıcı egzersiz sırasında gerçek zamanlı sesli rehberlik ve hareket düzeltme sağlar
   - Antrenman etkinliğini değerlendirir ve diyet önerileri sunar

   PEAS modelini kullanarak bu agent'ın görev ortamını tam olarak tanımlayın ve bu ortamın hangi özelliklere sahip olduğunu analiz edin (kısmen gözlemlenebilir, stokastik, dinamik vb. gibi).

3. Bir e-ticaret şirketi satış sonrası iade taleplerini karşılamak için iki yaklaşımı değerlendirmektedir:

   Yaklaşım A (`Workflow`): Sabit bir süreç tasarla; örneğin 7 gün içindeki genel ürünler için `< 100 TL` otomatik onaylanır; `100-500 TL` müşteri hizmetleri tarafından incelenir; `> 500 TL` yönetici onayı gerektirir.

   Yaklaşım B (`Agent`): İade politikalarını anlayan, kullanıcı geçmiş davranışını analiz eden ve ürün koşullarını değerlendirerek özerk biçimde iade onayına karar veren bir agent sistemi oluştur.

   Bu iki yaklaşımın avantaj ve dezavantajlarını analiz edin. `Workflow` ne zaman daha uygun? `Agent` ne zaman avantajlıdır?

4. 1.3. Bölümdeki akıllı seyahat asistanını temel alarak aşağıdaki özelliklerin nasıl ekleneceğini düşünün:
   - Kullanıcı tercihlerini hatırlayan bir "bellek" özelliği ekleyin
   - Önerilen turistik yerin biletleri tükendiğinde agent otomatik olarak alternatif önerir
   - Kullanıcı art arda 3 öneriyi reddederse agent yansıtır ve öneri stratejisini ayarlar

5. Kahneman'ın "Sistem 1" (hızlı sezgi) ve "Sistem 2" (yavaş akıl yürütme) teorisi<sup>[2]</sup>, Neuro-Symbolic AI için iyi bir analoji sağlar. Belirli bir agent uygulama senaryosu tasarlayın ve ardından açıklayın:
   - "Sistem 1" tarafından hangi görevler ele alınmalı?
   - "Sistem 2" tarafından hangi görevler ele alınmalı?
   - Bu iki sistem nihai hedefe ulaşmak için nasıl birlikte çalışır?

6. Büyük dil modeli güdümlü agent sistemleri güçlü yetenekler sergiler; ancak hâlâ pek çok sınırlılıkları vardır. Şu soruları analiz edin:
   - Agent'lar neden zaman zaman "halüsinasyon" (görünürde makul ancak gerçekte yanlış bilgi üretme) yapar?
   - 1.3. Bölümdeki vakada maksimum döngü sayısını 5 olarak belirledik. Bu sınır olmadan agent hangi sorunlarla karşılaşabilir?
   - Bir agent'ın "zeka" düzeyini nasıl değerlendiririz? Yalnızca doğruluk ölçütleri kullanmak yeterli mi?

## Kaynaklar

[1] RUSSELL S, NORVIG P. Artificial Intelligence: A Modern Approach[M]. 4. baskı. Londra: Pearson, 2020.

[2] KAHNEMAN D. Thinking, Fast and Slow[M]. New York: Farrar, Straus and Giroux, 2011.

---

## 💬 Tartışma ve İletişim

Bu bölümü öğrenirken sorularınız mı var? Diğer öğrenenlerle içgörülerinizi paylaşmak ister misiniz?

**📝 GitHub Discussions'ı ziyaret edin:**
- [💬 Alıştırma Tartışması ve Soru-Cevap](https://github.com/datawhalechina/Hello-Agents/discussions)
- Burada:
  - ✅ Alıştırmalar hakkında sorular sorabilirsiniz
  - ✅ Çözümlerinizi ve fikirlerinizi paylaşabilirsiniz
  - ✅ Diğer öğrenenlerle deneyim alışverişi yapabilirsiniz
  - ✅ Topluluktan yardım ve geri bildirim alabilirsiniz
