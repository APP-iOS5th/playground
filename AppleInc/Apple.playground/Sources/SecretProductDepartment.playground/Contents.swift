class SecretProductDepartment {
    private var secretCodeWord = "Titan"
    private var secretProducts = ["Apple Classes",
                                  "Apple Car",
                                  "Apple Brain Implant"]
    
    func nextProduct(codeWord: String) -> String? {
        let codeCorrect = codeWord == secretCodeWord
        return codeCorrect ? secretProducts.first : nil
    }
}
