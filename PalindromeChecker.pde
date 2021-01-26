public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(process(lines[i]))==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public String process(String word){
  word = word.toLowerCase();
  word = word.replaceAll("\\s+","");
  String ret = ""; int prev = 0;
    for (int i = 0; i < word.length(); i++){
      if (!Character.isLetter(word.charAt(i))){
        ret += word.substring(prev, i);
        prev = i + 1;
      }
    }
  ret += word.substring(prev, word.length());
  return ret;
}
public boolean palindrome(String word)
{
  return word.equals(reverse(word));
}
public String reverse(String str)
{
    String sNew = new String();
    sNew = new StringBuilder(str).reverse().toString();
    return sNew;
}
