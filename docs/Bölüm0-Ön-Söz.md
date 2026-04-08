# Ön Söz

2022'nin sonundan itibaren ChatGPT ile temsil edilen LLM'ler, teknolojik bir tsunami gibi dünyayı kasıp kavurarak yapay zeka ile etkileşim biçimimizi kökten dönüştürdü. LLM'lerin güçlü doğal dil anlama ve üretme kapasitesi, bize Yapay Genel Zeka (AGI) yolunda bir kapı araladı. Ancak ilk şaşkınlık geçtikçe geliştiriciler bir sonraki sınırı araştırmaya başladı: Yapay zekayı yalnızca "soru-cevap" aracı olmaktan çıkarıp özerk planlama yapabilen, araç çağırabilen ve karmaşık problemleri çözebilen bir "aktör" haline nasıl getirebiliriz?

Yanıt: **Agent'lar**.

Eğer 2024, "yüz model savaşı"nın başlangıç yılıysa, 2025 tartışmasız biçimde "Agent'lar Yılı"nı başlatmıştır. Teknolojik odağın, daha büyük ve güçlü temel modeller eğitmekten daha akıllı ve verimli agent uygulamaları inşa etmeye kaydığını görüyoruz. Bireysel agent'lar belirli alanlardaki görevleri zaten üstlenebilmekte; birden fazla agent'ın iş bölümü, işbirliği ve hatta tartışma yoluyla büyük hedefleri birlikte gerçekleştirdiği Multi-Agent Systems (MAS) ise LLM'lerin tam potansiyelini açığa çıkarmanın ve karmaşık gerçek dünya problemlerini çözmenin anahtarı olarak görülmektedir.

Ne var ki mevcut ekosistemde açık bir boşluk bulunmaktadır: Bir yanda durmaksızın patlayan agent çerçeveleri ve uygulamalar, öte yanda son derece kıt sistematik bilgi. Çoğu eğitim, belirli çerçevelerin API çağrılarına odaklanıyor ve öğrenenler "nasıl yapıldığını biliyor ama neden yapıldığını bilmiyor" durumuna düşüyor. Çerçeve yüzeylerini aşarak birinci ilkelerden yola çıkan, agent tasarımını, inşasını ve işbirliğini sistematik biçimde açıklayan pratik bir rehber eksikliğini hissediyoruz.

Bu gerçeklerden yola çıkarak Hello-Agents projesini başlattık; teori ile pratiği dengeleyen, sıfırdan agent sistemi inşa etmek için topluma bir rehber sunmayı amaçlıyoruz. Agent alanındaki en güncel teknolojileri yakından görmenizi sağlamanın yanı sıra, agent'ların çekirdek mimarisine inmenize, klasik paradigmalarını kavramanıza ve en sonunda kendi multi-agent uygulamalarınızı kendi ellerinizle inşa etmenize rehberlik edeceğiz.

İnanıyoruz ki öğrenmenin en iyi yolu uygulamadır. Bu eğitimin, agent dünyasını keşfetmek için iyi bir başlangıç noktası olmasını; seni büyük dil modellerinin bir "kullanıcısı" olmaktan agent sistemleri geliştiren bir "builder"a dönüştürmesini umuyoruz.

## Okuyuculara Öneriler

Geleceğin akıllı sistem geliştiricisi, hoş geldin! Bu heyecan verici yolculuğa çıkmadan önce sana birkaç küçük öneri sunmama izin ver.

Bu projeyi okumadan önce:

- Temel Python programlama becerilerine sahip olmanı bekliyoruz.

- Büyük dil modelleri hakkında temel kavramsal bir anlayışa sahip olmanı bekliyoruz (örneğin, LLM API'lerinin nasıl edinileceğini bilmek).

- Merak etme, derinlemesine algoritma veya model eğitimi arka planına ihtiyaç duymuyorsun; proje uygulama ve inşa odaklıdır.

Proje beş kısma ayrılmıştır; temellerden pratiğe, adım adım, katman katman ilerler:

**Kısım I (Temeller)**: Yapay zeka ve LLM'ler hakkında temel bilgilerin iskeletini kuracak, agent'ların ortaya çıkışının arka planını makro düzeyde kavramana yardımcı olacağız.

**Kısım II (Tekil Agent)**: Uygulamalı pratiğin başlangıç noktası burasıdır. Sıfırdan tam işlevli bir tekil agent inşa etmene rehberlik edecek, iç "zihinsel" yapısını derinlemesine kavramanı sağlayacağız.

**Kısım III (İleri)**: Burada agent'ın "düşünmeyi" öğrenecek; belleğe, araçlara sahip olacak ve agent'lar arası iletişim protokollerine hakim olacaksın. Sonunda değerlendirme döngüsünü tamamlayacaksın.

**Kısım IV (Uygulama)**: Projenin çekirdek değeri burada yatıyor. Özenle tasarlanmış kapsamlı vakalarla öğrendiklerini birleştirip gerçek proje pratiğine dönüştüreceksin.

**Kısım V (Vizyon)**: Yolculuğun sonu yeni bir başlangıç. Kendi "capstone project"ini hayata geçirip bu öğrenme yolculuğunu güçlü bir kapanışla tamamlayacaksın.

"Kağıtta öğrenilenler yüzeysel kalır; gerçek anlamak için bizzat pratik yapılmalıdır." En iyi öğrenme etkisini elde etmek için projenin `code` klasöründe tüm destek kodlarını sunuyoruz. Teori ile pratiği birleştirmeni şiddetle tavsiye ediyoruz. Projedeki her kod parçasını mutlaka bizzat çalıştır, hata ayıkla ve hatta değiştir. Öğrendiklerini ilgi alanlarına uygun gerçek senaryolara uygulamanı teşvik ediyoruz — öğrenmenin nihai amacı budur.

Son olarak, açık kaynak bir proje olarak katılımını ve katkını sıcakla karşılıyoruz. Sorunlarla karşılaştığında topluluğumuzda soru sorabilirsin; yeni fikir ve keşiflerin olduğunda her zaman projenin ortak inşasına katılabilirsin.

Hello-Agents'ı okumayı seçtiğin için teşekkür ederiz. Mutlu öğrenmeler ve sınırsız keşifler diliyoruz!
