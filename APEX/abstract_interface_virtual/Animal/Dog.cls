public with sharing class Dog extends AnimalAbstract {
    public override void makeNoise(String thingToSay) {
        System.debug(thingToSay);
    }

    public override void sleep() {
        System.debug('Im sleeping');
    }
}
