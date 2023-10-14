public virtual class AnimalVirtual {
    public virtual void makeNoise(String thingToSay) {
        System.debug(thingToSay);
    }

    public virtual void sleep() {
        System.debug('Im sleeping');
    }

    public AnimalVirtual() {
        System.debug('Constructed');
    }
}
