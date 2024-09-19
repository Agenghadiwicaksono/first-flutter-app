//import 'package:flutter/material.dart';
  
class PlaceHisthory {
  String name;
  String location;
  String nameAcount;
  String years;
  String founder;
  String description;
  String imageNation;
  String imageAsset;
  List<String> imageUrls;
  bool isFavorite;

  PlaceHisthory({
   required this.name,
   required this.location,
   required this.nameAcount,
   required this.years,
   required this.founder,
   required this.description,
   required this.imageNation,
   required this.imageAsset,
   required this.imageUrls,
   required this.isFavorite
  });
}

var placeHisthoryList = [
  PlaceHisthory(
    name: "Piramida Agung Giza", 
    location: "Giza, Mesir", 
    nameAcount: "Mesir",
    years: "2560 SM", 
    founder: "Firaun Khufu", 
    description: "Piramida Agung Giza adalah yang terbesar dari tiga piramida di kompleks Giza dan merupakan satu-satunya keajaiban dunia kuno yang masih berdiri. Dibangun sebagai makam untuk Firaun Khufu, piramida ini menunjukkan keterampilan teknik yang luar biasa, dengan susunan batu besar yang sempurna tanpa penggunaan alat berat.", 
    imageAsset: "assets/images/giza.jpeg",
    imageNation: "assets/images/mesir.jpeg", 
    imageUrls: [
      "https://asset.kompas.com/crops/-osciMZdnx18gFopEvZR06QZsZU=/0x0:612x408/750x500/data/photo/2023/08/06/64cf40ee9551c.jpeg",
      "https://asset.kompas.com/crops/-osciMZdnx18gFopEvZR06QZsZU=/0x0:612x408/750x500/data/photo/2023/08/06/64cf40ee9551c.jpeg",
      "https://asset.kompas.com/crops/-osciMZdnx18gFopEvZR06QZsZU=/0x0:612x408/750x500/data/photo/2023/08/06/64cf40ee9551c.jpeg"
    ],
    isFavorite: false
  ),
  PlaceHisthory(
    name: "Tembok Besar China", 
    location: "China Utara", 
    nameAcount: "China", 
    years: "abad ke-7 SM", 
    founder: "Kaisar Qin Shi Huang", 
    description: "Tembok Besar China merupakan serangkaian tembok dan benteng yang membentang sekitar 21.196 km. Dibangun untuk melindungi Kekaisaran Tiongkok dari serangan musuh, tembok ini melintasi pegunungan, gurun, dan padang rumput, dan merupakan salah satu simbol paling ikonik dari sejarah China.", 
    imageAsset: "assets/images/tembok.jpeg",
    imageNation: "assets/images/cina.png", 
    imageUrls: [
      "https://asset.kompas.com/crops/drOaN4jx88vo1GMmDIt8u2xeLgA=/0x0:500x333/750x500/data/photo/2019/12/21/5dfda9e1d7243.jpg",
      "https://asset.kompas.com/crops/OxqlRru-JTEYAR8kA_INfojA0Nk=/0x0:1000x667/750x500/data/photo/2020/03/27/5e7db07d1c82d.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Great_Wall_of_China.jpeg/500px-Great_Wall_of_China.jpeg"
    ],
    isFavorite: false
  ),
  PlaceHisthory(
    name: "Machu Picchu", 
    location: "Pegunungan Andes, Peru", 
    nameAcount: "Peru", 
    years: "abad ke-15", 
    founder: "Hiram Bingham", 
    description: "Machu Picchu adalah kota kuno Inca yang terletak di pegunungan Andes, Peru. Terpencil dan hampir tidak terlihat dari dasar lembah, situs ini dibangun dengan batuan besar tanpa menggunakan mortar, memperlihatkan kecanggihan arsitektur Inca. Machu Picchu dianggap sebagai salah satu keajaiban arkeologi dunia.", 
    imageAsset: "assets/images/machu.jpeg", 
    imageNation: "assets/images/peru.png",
    imageUrls: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Machu_Picchu%2C_Peru.jpg/600px-Machu_Picchu%2C_Peru.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/80_-_Machu_Picchu_-_Juin_2009_-_edit.jpg/600px-80_-_Machu_Picchu_-_Juin_2009_-_edit.jpg",
      "https://asset.kompas.com/crops/-0kUbM44VWEdaGoXSfe5xc3yRTA=/0x0:739x493/750x500/data/photo/2020/10/14/5f86abb8005a4.jpg"
    ],
    isFavorite: false
  ),
  PlaceHisthory(
    name: "Colosseum", 
    location: "Roma, Italia", 
    nameAcount: "Italia", 
    years: "70-80 M", 
    founder: "Kaisar Vespasian", 
    description: "Colosseum adalah amfiteater terbesar yang pernah dibangun di Kekaisaran Romawi dan merupakan contoh arsitektur Romawi klasik. Digunakan untuk berbagai pertunjukan, termasuk pertempuran gladiator, Colosseum dapat menampung lebih dari 50.000 penonton dan tetap menjadi simbol kekuatan dan kekuasaan Roma.", 
    imageAsset: "assets/images/coloseum.jpeg",
    imageNation: "assets/images/italia.png", 
    imageUrls: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Colosseo_2020.jpg/480px-Colosseo_2020.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/COLOSSEUM.JPG/480px-COLOSSEUM.JPG",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Colosseum-profile-english.png/600px-Colosseum-profile-english.png"
    ],
    isFavorite: false
  ),
  PlaceHisthory(
    name: "Kuil Angkor Wat", 
    location: "Siem Reap, Kamboja", 
    nameAcount: "Kamboja", 
    years: "Abad ke-12 ", 
    founder: "Raja Suryavarman II", 
    description: "Angkor Wat adalah kompleks candi Hindu terbesar di dunia dan merupakan simbol nasional Kamboja. Dibangun sebagai kuil kerajaan dan kemudian diubah menjadi candi Buddha, Angkor Wat dikenal karena arsitekturnya yang simetris dan hiasan ukiran yang rumit.", 
    imageAsset: "assets/images/kuil.jpeg", 
    imageNation: "assets/images/kamboja.png",    
    imageUrls: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Ankor_Wat_temple.jpg/480px-Ankor_Wat_temple.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Suryavarman_II.jpg/440px-Suryavarman_II.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/AngkorWat_Delaporte1880.jpg/426px-AngkorWat_Delaporte1880.jpg"
    ],
    isFavorite: false
  ),
  PlaceHisthory(
    name: "Stonehenge", 
    location: "Wiltshire, Inggris", 
    nameAcount: "Inggris", 
    years: "3000-2000 SM", 
    founder: "404 GPT not Found", 
    description: "Stonehenge adalah monumen prasejarah yang terdiri dari lingkaran batu besar yang tersusun secara melingkar. Fungsi sebenarnya dari Stonehenge masih menjadi misteri, meskipun beberapa teori menyebutkan bahwa monumen ini digunakan sebagai observatorium astronomi atau situs pemujaan.", 
    imageAsset: "assets/images/stone.jpeg", 
    imageNation: "assets/images/inggris.jpeg",
    imageUrls: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Stonehenge2007_07_30.jpg/480px-Stonehenge2007_07_30.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Heelstone.JPG/480px-Heelstone.JPG",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Stonehenge_Closeup.jpg/600px-Stonehenge_Closeup.jpg"
    ],
    isFavorite: false
  ),
  PlaceHisthory(
    name: "Kota Petra", 
    location: "Yordania", 
    nameAcount: "Yordania", 
    years: "abad ke-4 SM", 
    founder: "Kerajaan Nabataea", 
    description: "Petra adalah kota kuno yang dipahat di bebatuan merah-pink dari lembah Jordan. Petra dikenal karena arsitektur batuan alaminya, termasuk Khasneh (The Treasury) yang megah. Situs ini dulunya merupakan ibu kota Nabataea dan pusat perdagangan yang penting.", 
    imageAsset: "assets/images/petra.jpeg", 
    imageNation: "assets/images/yordania.jpeg",
    imageUrls: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Al_khazneh.jpg/440px-Al_khazneh.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/4/4b/Koenigsgraeber.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Petra_Siq%2C_entrance_to_the_ancient_Nabatean_city_of_Petra%2C_Jordan.jpg/540px-Petra_Siq%2C_entrance_to_the_ancient_Nabatean_city_of_Petra%2C_Jordan.jpg"
    ],
    isFavorite: false
  ),
  PlaceHisthory(
    name: "Taj Mahal", 
    location: "Agra, India", 
    nameAcount: "India", 
    years: "Dibangun 1632-1653 M", 
    founder: "Kaisar Mughal Shah Jahan", 
    description: "Taj Mahal adalah mausoleum megah yang dibangun oleh Kaisar Shah Jahan untuk istri tercintanya, Mumtaz Mahal. Struktur marmer putih ini dikenal karena keindahannya yang menakjubkan dan simetri yang sempurna. Taj Mahal sering dianggap sebagai simbol cinta abadi.", 
    imageAsset: "assets/images/tajmahal.jpeg", 
    imageNation: "assets/images/india.png",
    imageUrls: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Taj_Mahal_in_March_2004.jpg/500px-Taj_Mahal_in_March_2004.jpg",
      "https://asset.kompas.com/crops/xBTFM4XLrK_u6XXFzOyrCJmTQCo=/0x0:4772x3181/750x500/data/photo/2021/04/24/6083b542e02cc.jpg",
      "https://asset.kompas.com/crops/kS-T1WoV29fmwoHGC_W-OWJ8D40=/0x0:500x333/750x500/data/photo/2019/12/21/5dfdaa2c09aab.jpg"
    ],
    isFavorite: false
  ),
  PlaceHisthory(
    name: "Candi Borobudur", 
    location: "Magelang, Indonesia", 
    nameAcount: "Indonesia", 
    years: "Abad ke-8 M", 
    founder: "Dinasti Syailendra", 
    description: "Borobudur adalah candi Buddha terbesar di dunia, dibangun dengan gaya arsitektur khas Jawa. Struktur ini terdiri dari sembilan platform bertingkat dengan stupa besar di puncaknya, dihiasi dengan lebih dari 2.000 panel relief dan 500 patung Buddha. Candi ini menjadi simbol agama Buddha dan kekayaan sejarah Indonesia.", 
    imageAsset: "assets/images/borobudur.jpeg", 
    imageNation: "assets/images/indo.png",
    imageUrls: [
      "https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/revision-2019/4.jpg",
      "https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/java/central-java/magelang-regency/point-of-interest/gereja-ayam.jpg",
      "https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/revision-2019/image1.jpg"
    ],
    isFavorite: false
  ),
  PlaceHisthory(
    name: "Acropolis Athena", 
    location: "Athena, Yunani", 
    nameAcount: "Yunani", 
    years: "Abad ke-5 SM", 
    founder: "Pericles", 
    description: "Acropolis Athena adalah kompleks bangunan kuno yang terletak di puncak bukit di Athena. Yang paling terkenal adalah Parthenon, kuil yang didedikasikan untuk dewi Athena. Acropolis adalah simbol arsitektur Yunani Kuno dan menjadi pusat budaya dan agama Athena.", 
    imageAsset: "assets/images/athena.jpeg", 
    imageNation: "assets/images/yunani.png",
    imageUrls: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Attica_06-13_Athens_50_View_from_Philopappos_-_Acropolis_Hill.jpg/500px-Attica_06-13_Athens_50_View_from_Philopappos_-_Acropolis_Hill.jpg",
      "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1616146308/ikpyknqhrit7fb0u9txa.jpg",
      "https://www.greece-is.com/wp-content/uploads/2019/11/caryatids-shutterstock_1221335977.jpg"
    ],
    isFavorite: false
  ),
  PlaceHisthory(
    name: "Terracotta Army", 
    location: "Xi'an, Tiongkok", 
    nameAcount: "Tiongkok", 
    years: "1974 M", 
    founder: "Kaisar Qin Shi Huang", 
    description: "Tentara Terracotta adalah kumpulan lebih dari 8.000 patung prajurit, kuda, dan kereta yang dikubur bersama Kaisar Qin Shi Huang, pendiri dinasti Qin. Patung-patung ini dipahat dengan detail luar biasa, masing-masing dengan ekspresi wajah yang unik. Mereka dirancang untuk melindungi kaisar di kehidupan setelah kematian", 
    imageAsset: "assets/images/terakota.jpeg", 
    imageNation: "assets/images/cina.png",
    imageUrls: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/51714-Terracota-Army.jpg/580px-51714-Terracota-Army.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Terracotta_Army-China2.jpg/440px-Terracotta_Army-China2.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/I_was_impressed_with_the_life-like_expression_%2835300697030%29.jpg/340px-I_was_impressed_with_the_life-like_expression_%2835300697030%29.jpg"
    ],
    isFavorite: false
  ),
  PlaceHisthory(
    name: "Moai Pulau Paskah", 
    location: "Pulau Paskah, Chili", 
    nameAcount: "Chili", 
    years: "1250-1500 M", 
    founder: "Penduduk Rapa Nui", 
    description: "Moai adalah patung monolitik yang dipahat dari batu vulkanik oleh penduduk asli Pulau Paskah. Patung-patung ini, yang sebagian besar menghadap ke dalam pulau, diduga memiliki makna religius atau representasi leluhur. Keberadaan dan cara pemindahan patung-patung besar ini tetap menjadi misteri.", 
    imageAsset: "assets/images/moai.jpeg", 
    imageNation: "assets/images/chili.png",
    imageUrls: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Easter-Island.jpg/500px-Easter-Island.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Moai_Rano_raraku.jpg/440px-Moai_Rano_raraku.jpg",
      "https://cdns.klimg.com/merdeka.com/i/w/news/2014/03/25/341195/540x270/moai-patung-raksasa-misterius-yang-menjaga-pulau-paskah.jpg"
    ],
    isFavorite: false
  )
];