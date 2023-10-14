public with sharing class Bird extends AnimalVirtual {
    public override void sleep() {
        System.debug('Im sleeping! BRRRR');
    }


    public override AnimalVirtual() {
        System.debug('override');
    }

    public Bird() {
        System.debug('BRRRR');
    }
}
