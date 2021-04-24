func numeroDeDivisore(numero: UInt) -> UInt { // Q1
    var qt: UInt = 0
    
    for i in 1...numero {
        if numero%i == 0 {
            qt += 1
        }
    }
    
    return qt
}

func posOuNeg(numero: Int) -> Bool? { // Q2
    var r: Bool?
    
    if numero > 0 {
        r = true
    } else if numero < 0 {
        r = false
    }
    
    return r
}

func conceito(media: Float) -> Character { // Q3
    if media <= 4.9 {
        return "D"
    } else if media <= 6.9 {
        return "C"
    } else if media <= 8.9 {
        return "B"
    } else {
        return "A"
    }
}

func sumArray(vetor: [Int]) -> Int { // Q4
    var sum: Int = 0
    
    for val in vetor {
        sum += val
    }
    
    return sum
}

func multArray(vetor: [Int], quantidadeVezes qtV: Int) -> Void { // Q5
    var vetorCopy = vetor
    
    for i in 0..<vetorCopy.count {
        for _ in 1..<qtV {
            vetorCopy[i] *= vetor[i]
        }
    }
    
    print(vetorCopy)
}

func dividePor2(_ numeros: Int...) { // Q6
    var numerosCopy = numeros
    var continuar = true
    
    while continuar {
        for i in 0..<numerosCopy.count {
            if numerosCopy[i] >= 1 {
                numerosCopy[i] /= 2
            }
        }
        print(numerosCopy)
        
        continuar = false
        for val in numerosCopy {
            if val >= 1 {
                continuar = true
                break
            }
        }
    }
}
