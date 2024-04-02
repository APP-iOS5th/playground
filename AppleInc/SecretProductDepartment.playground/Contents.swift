class SecretProductDepartment {
    private var secretCodeWord = "Titan"
    private var secretProduct = ["Apple Glasses",
                                 "Apple Car",
                                 "Apple Brain Implant"]
    func nextProduct(codeWord: String) -> String? {
        let codeCorrect = codeWord == secretCodeWord
        return codeCorrect ? secretProduct.first : nil
    }
}
