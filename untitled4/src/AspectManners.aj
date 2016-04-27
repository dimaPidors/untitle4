public aspect AspectManners {

     /*
    pointcut callSayMessageToFamily(String family) : call(* HelloWorld.setFamilyName(String)) && args(family);
    pointcut callSayMessageToPerson(String person) : call(* HelloWorld.sayToPerson(String, String)) && args(*, person);
    void around(String person):callSayMessageToPerson(person){
        proceed(person + "-san");
    }


    void around(String family,String person):callSayMessageToPerson(person) && callSayMessageToFamily(family){
        proceed(family + "" + person);
    }*/



    /*
    String n;
    pointcut FamilyCall():execution(public String Hello.getFamilyName());

    after() returning(Object r):FamilyCall(){
        n=r.toString();
    }

    pointcut callSayMessageToPerson(String person) : call(* Hello.sayToPerson(String, String)) && args(*, person);
    void around(String person):callSayMessageToPerson(person){
        proceed(person + "-san "+n);
    }*/


/*
    pointcut getMethod():execution(* HelloWorld.set*(..));
    pointcut setMethod():execution(* HelloWorld.*(..)) && getMethod();
    before():setMethod(){
        System.out.println("Something will setted " + thisJoinPoint + " Timestamp:" + System.currentTimeMillis());
    }
    after():setMethod(){
        System.out.println(" Something was setted " + thisJoinPoint + " Timestamp:" + System.currentTimeMillis());
    }*/
    /* ГЕТТЕРЫ
    pointcut getMethod():execution(* HelloWorld.get*(..));
    pointcut setMethod():execution(* HelloWorld.*(..)) && getMethod();
    before():setMethod(){
        System.out.println("Something will getted " + thisJoinPoint + " Timestamp:" + System.currentTimeMillis());
    }
    after():setMethod(){
        System.out.println(" Something was getted " + thisJoinPoint + " Timestamp:" + System.currentTimeMillis());
    }*/

    /*
    pointcut callSayMessageToFamily(String family) : call(* HelloWorld.setFamilyName(String)) && args(family);
    pointcut callSayMessageToPerson(String person) : call(* HelloWorld.sayToPerson(String, String)) && args(*, person);
    void around(String person):callSayMessageToPerson(person){
        proceed(person + "-san");
    }*/


    /*void around(String family,String person):callSayMessageToPerson(person) && callSayMessageToFamily(family){
        proceed(family + "" + person);
    }*/







    /*    3 Задание
    pointcut sayMethod():execution(* HelloWorld.say*(..));
    pointcut methodsWithoutSay():execution(* HelloWorld.*(..)) && !sayMethod();

    after() : methodsWithoutSay() {
        System.out.println("Without say method is called");
    }*/



    /*     2 Задание
    pointcut callSayMessage() : call( void HelloWorld.say*(..));
    before() : callSayMessage() {
        System.out.println("Good day!");
    }
    after() : callSayMessage() {
        System.out.println("Nice to meet you!");
    }*/


/*
    pointcut sayMethod():execution(* HelloWorld.say*(..));
    pointcut methodsWithoutSay():execution(* HelloWorld.*(..)) && !sayMethod();
    before():methodsWithoutSay(){
        System.out.println("Entering method without say " + thisJoinPoint + " Timestamp:" + System.currentTimeMillis());
    }
    after():methodsWithoutSay(){
        System.out.println("Leaving method without say " + thisJoinPoint + " Timestamp:" + System.currentTimeMillis());
    }
    pointcut callSayMessageToPerson(String person) : call(* HelloWorld.sayToPerson(String, String)) && args(*, person);
    pointcut callSayMessageToFamily(String family) : call(* HelloWorld.setFamilyName(String)) && args(family);
    void around(String person):callSayMessageToPerson(person){
        proceed(person + "-san");
    }*/
}
