class Solution {
    public boolean isValid(String s) {
     
        Stack<Character> parenStack = new Stack<Character>();
        
        char[] sArray = s.toCharArray();
        for(int i=0; i<sArray.length; i++) {
            
            if(sArray[i] == ')' || sArray[i] == '}' || sArray[i] == ']') {
                
                try {
                    if(parenStack.peek() == getOpp(sArray[i])) 
                        parenStack.pop();
                                        
                    else 
                        parenStack.push(sArray[i]);
                }
                
                catch(Exception EmptyStackException) {
                    parenStack.push(sArray[i]);
                }       
                                          
            }
            
            if(sArray[i] == '(' || sArray[i] == '{' || sArray[i] == '[') 
                parenStack.push(sArray[i]);
            
        }
        
        boolean validParen=false;
        if (parenStack.size() == 0)
            validParen = true;
        
        return validParen;
        
    }
    
    public static char getOpp (char inputChar) {
        
        Map<Character, Character> getOpp = new HashMap<Character, Character>(); 
  
        getOpp.put('{', '}'); 
        getOpp.put('(', ')'); 
        getOpp.put('[', ']'); 
 
        getOpp.put('}', '{'); 
        getOpp.put(')', '('); 
        getOpp.put(']', '['); 
        
        return getOpp.get(inputChar);
    }
    
}
