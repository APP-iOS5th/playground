import UIKit

struct Color {
    let red: Float
    let green: Float
    let blue: Float
    let alpha: Float = 1.0
    
    var displayColor: UIColor {
        return UIColor(red: CGFloat(red),
                       green: CGFloat(green),
                       blue: CGFloat(blue),
                       alpha: CGFloat(alpha))
    }
}

struct Bar {
    var value: Float
    var color: Color
}

class BarView: UIView {
    
    init(frame: CGRect, color: UIColor) {
        super.init(frame: frame)
        backgroundColor = color
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .red
    }
}

