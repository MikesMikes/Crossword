class Parser {

  BufferedReader reader;
  HashMap<Integer, List<String>> map;

  Parser() {
    reader = createReader("techwords");
    map = new HashMap<>(initMap(reader));
  }

  Map<Integer, List<String>> initMap(BufferedReader reader) {
    List<String> wordList = new ArrayList<>();
    Map<Integer, List<String>> map = new HashMap<>();
    
    try {
      wordList = Arrays.asList(reader.readLine().split(","));
    }
    catch (IOException e) {
      println(e);
    }
    
    //println(wordList.size());
    for (int i=0; i<wordList.size(); i++) {
      List<String> words = new ArrayList<>();
      String word = wordList.get(i);
      int wordLen = word.length();

      if (map.get(wordLen) != null) {
        words = map.get(wordLen);
      }
      words.add(word);
      map.put(Integer.valueOf(word.length()), words);
    }
    //print(map);
    return map;
  }
  
  Map<Integer, List<String>> getWordMap(){
    return this.map;
  }
}
