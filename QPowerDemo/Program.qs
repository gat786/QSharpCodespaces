namespace QPowerDemo {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    //hey I'm here!
    //hello!!
    // let's change the variable names now

    @EntryPoint()
    operation HelloQ() : Unit {
        let rounds = 100;
        mutable zeroCount = 0; // lol I don't like camelCase but still
        mutable oneCount = 0;

        Message("Hello Quantum World");

        using (qubit = Qubit()) {
            for (i in 1..rounds) {
                H(qubit);

                let result = M(qubit);

                if (result == Zero) {
                    set zeroCount += 1;
                } else {
                    set oneCount += 1;
                    X(qubit);  // use X here or use Reset(qubit) afterwards
                }

                // Reset(qubit); if you choose not to use X before 
            }

            Message($"|0> {zeroCount}");
            Message($"|1> {oneCount}");
        }
    }
}

