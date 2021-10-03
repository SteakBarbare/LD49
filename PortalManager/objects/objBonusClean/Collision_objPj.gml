for(effect = 0; effect < array_length(prout); effect++) {
    if(array_length(objPj.effectsActive) != 0) {
        for(elementIndex = 0; elementIndex < array_length(objPj.effectsActive); elementIndex++) {
            if(objPj.effectsActive[elementIndex][0] == prout[effect][0]) {
                objPj.effectsActive[elementIndex][1] = prout[effect][1];
                exit;
            } else {
                array_push(objPj.effectsActive, prout[effect]);
            }    
        }
    } else {
        array_push(objPj.effectsActive, prout[effect]);
    }    
}