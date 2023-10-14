public with sharing class Cat implements AnimalInterface {
    public void makeNoise(String thingToSay) {
        System.debug(thingToSay);
    }

    public void sleep() {
        System.debug('Im sleeping');
    }
}
