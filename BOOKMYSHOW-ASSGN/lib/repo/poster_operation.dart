import 'package:bookmyshow/models/m_poster.dart';

class poster_operation {
  //further we will take dat through api here
  //for now hardCoded Repo

  // SINGLETON -ek hi object bnke call hoga for multiple objects
  static poster_operation _posterOperation = poster_operation();
  _poster_operation() {}
  static poster_operation getInstance() {
    return _posterOperation;
  }

  // STATIC --CAUSES EAGER LOADING

  List<m_poster> getposter() {
    return [
      m_poster(
          m_name: "HINDI MEDIUM",
          m_lang: "Hindi",
          m_type: "U",
          votes: "129",
          like_perc: "12",
          m_URL:
              "https://prakashgowda.files.wordpress.com/2017/05/hindi-medium-movie-poster.jpg"),
      m_poster(
          m_name: "HALF GIRLFRIEND",
          m_lang: "English",
          m_type: "UA",
          votes: "129",
          like_perc: "28",
          m_URL:
              "https://akamaividz2.zee5.com/image/upload/w_1170,h_658,c_scale,f_auto,q_auto/resources/0-0-2494/list/halfgirlfriend1170x658.jpg"),
      m_poster(
          m_name: "DANGAL",
          m_lang: "hindi",
          m_type: "U",
          votes: "238",
          like_perc: "92",
          m_URL:
              "https://st1.bollywoodlife.com/wp-content/uploads/2016/12/dangal-2.jpg?impolicy=Medium_Resize&w=1200&h=800"),
      m_poster(
          m_name: "HALF GIRLFRIEND",
          m_lang: "hindi",
          m_type: "UA",
          votes: "1289",
          like_perc: "28",
          m_URL:
              "https://akamaividz2.zee5.com/image/upload/w_1170,h_658,c_scale,f_auto,q_auto/resources/0-0-2494/list/halfgirlfriend1170x658.jpg"),
      m_poster(
          m_name: "DANGAL",
          m_lang: "hindi",
          m_type: "U",
          votes: "233",
          like_perc: "92",
          m_URL:
              "https://st1.bollywoodlife.com/wp-content/uploads/2016/12/dangal-2.jpg?impolicy=Medium_Resize&w=1200&h=800"),
    ];
  }
}
