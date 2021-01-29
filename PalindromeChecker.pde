public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  word = noSpaces(word);
  word = onlyLetters(word);
  word = noCapitals(word);
  String answer = reverse(word);
  answer = noSpaces(answer);
  answer = onlyLetters(answer);
  answer = noCapitals(answer);
  if(answer.equals(word))
  {
    return true;
  }
  else
  {
    return false;
  }
}

public String reverse(String str)
{
  String s = "";
  for(int i = str.length(); i > 0; i--)
  {
    s = s + str.substring(i-1, i);
  }
  return s;
}

public String noCapitals(String str)
{
  return str.toLowerCase();
}

public String noSpaces(String str)
{
  String s = "";
  for(int i = 0; i < str.length(); i++)
  {
    if(!str.substring(i, i+1).equals(" "))
    {
      s = s + str.substring(i, i+1);
    }
  }
  return s;
}

public String onlyLetters(String str)
{
  String s = "";
  for(int i = 0; i < str.length(); i++)
  {
    if(Character.isLetter(str.charAt(i)))
    {
      s = s + str.substring(i, i+1);
    }
  }
  return s;
}
