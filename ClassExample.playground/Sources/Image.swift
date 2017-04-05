import Foundation

public class Image {
    
    // MARK: Properties
    
    // Properties can be used inside any of the method(s) / function(s) below
    var c : Canvas
    
    // MARK: Initializer(s)
    
    // The initializer runs once when the class is used to create an object
    public init(drawOn theCanvas : Canvas) {
        
        // Add a reference to the provided
        c = theCanvas
        
        // Draw the image by invoking method(s) below
        upperCircle()
        lowerCircle()
    }
    
    // MARK: Method(s)/Function(s)
    
    // Method(s) to draw the image on the provided canvas go below
    
    /**
     Draws the upper circle of the wallpaper pattern.
     */
    func upperCircle() {
        
        // Draw a circle in the middle of the canvas
        c.drawShapesWithFill = false
        c.defaultBorderWidth = 10
        c.defaultLineWidth = 10
        
        // Upper Circles
        for y in stride(from: 40, through: 500, by: 80) {
            c.borderColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
            c.drawEllipse(centreX: y, centreY: 400, width: 60, height: 60)
            c.borderColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
            c.drawEllipse(centreX: y, centreY: 400, width: 41, height: 41)
            c.borderColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
            c.drawEllipse(centreX: y, centreY: 400, width: 21, height: 21)
        }
        
    }
    
    /**
     Draws the lower circle of the wallpaper pattern.
     */
    func lowerCircle() {
        for x in stride(from: 0, through: 500, by: 80) {
            c.borderColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
            c.drawEllipse(centreX: x, centreY: 325, width: 21, height: 21)
            c.borderColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
            c.drawEllipse(centreX: x, centreY: 325, width: 41, height: 41)
            c.borderColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
            c.drawEllipse(centreX: x, centreY: 325, width: 60, height: 60)
        }
        
    }
    
    
    
}
