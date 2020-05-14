namespace QPowerDemo {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    

    @EntryPoint()
    operation HelloQ() : Unit {
        let rounds = 100;
        mutable zc = 0;
        mutable oc = 0;

        Message("Hello Quantum World");

        using (qubit = Qubit()) {
            for (i in 1..rounds) {
                H(qubit);

                let result = M(qubit);

                if (result == Zero) {
                    set zc += 1;
                } else {
                    set oc += 1;
                    X(qubit);  // use X here or use Reset(qubit) afterwards
                }

                // Reset(qubit); if you choose not to use X before 
            }

            Message($"|0> {zc}");
            Message($"|1> {oc}");
        }
    }
}

