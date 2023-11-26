trigger CaseTrigger on Case (before update, after update) {
    if(Trigger.isUpdate) {
        if(Trigger.isBefore) {
            for(Case c : Trigger.new) {
                c.addError('###### Não vai atualizar');
                System.debug('###### Não vai atualizar');
            }
        }
        else if(Trigger.isAfter) {
            for(String item : Trigger.oldMap.keySet()) {
                System.debug('###### ID: '+item+'/ Value: '+ Trigger.oldMap.get(item));
            }
        }
    }
}