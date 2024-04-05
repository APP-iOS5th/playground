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
}

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .red
    }

class BarChart: UIView {
    
    private var barViews: [BarView] = []
    private var maxValue: Float = 0.0
    
    var interBarMargin: CGFloat = 5.0
    
    var bars: [Bar] = [] {
        didSet {
            self.barViews.forEach( $0.removeFromSuperview() }
            
           var barViews = [BarView]()
                                   
           let barCount = CGFloat(bars.count)
                                   
           //Calculate the max value before calculating size for bar in bars {
           maxValue = max(maxValue, bar.value)
           }
                                   
           var xOrigin: CGFloat = interBarMargin
                                   
           let margins = interBarMargin * (barCount+1)
           let width = (frame.width - margins) / barCount
           
          for bar in bars {
                
                let height = barHeight(forValue: bar.value)
                let rect = CGRect(x: xOrigin,
                                  y: bounds.height - height,
                                  width: width,
                                  height: height)
                let view = BarView(frame: rect,
                                   color: bar.color.displayColor)
                barViews.append(view)
                addSubView(view)
                
                xOrigin = view.frame.maxX + interBarMargin
           }
           self.barViews = barViews
   }
                                   
   private func barHeight(forValue value: Float) -> CGFloat {
        return (frame.size.height / CGFloat(maxValue)) *
            CGFloat(value)
    }
}
