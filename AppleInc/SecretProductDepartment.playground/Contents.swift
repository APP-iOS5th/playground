class SecretProductDepartment {
    private var secretCoreWord = "Titan"
    private var secretProducts = ["Apple Glasses", 
                                  "Apple Car",
                                  "Apple Brain Implant"]
    
    func nextProduct(codeWord: String) -> String? {
        let codeCorrect = codeWord == secretCoreWord
        return codeCorrect ? secretProducts.first : nil
    }
}
