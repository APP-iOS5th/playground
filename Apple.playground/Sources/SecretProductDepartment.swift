class SecretProductDepartment {
    private var secretCodeWord = "Titan"
    private var secretProducts = ["Apple Glasses",
                                  "Apple Car",
                                  "Apple Brain Implant"]
    
    // 이 함수는 서비스 패스워드 검증 함수와 유사
    func nextProduct(codeWord: String) -> String? {
        let codeCorrect = codeWord == secretCodeWord
        return codeCorrect ? secretProducts.first : nil
    }
}
