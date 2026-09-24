public static Integer calculateLCM(Integer a, Integer b) {
    // Write your code here
    System.debug('Debug: Calculating LCM for a = ' + a + ', b = ' + b);
    if (a == 0 || b == 0) {
        return null;
    }

    
    Integer tempA = a;
    Integer tempB = b;
    while (tempB != 0) {
        Integer temp = tempB;
        tempB = Math.mod(tempA, tempB);
        tempA = temp;
    }
    Integer gcd = tempA;
    
    return (a * b) / gcd;

}
