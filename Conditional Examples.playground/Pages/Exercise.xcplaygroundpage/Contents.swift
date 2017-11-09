
//: [Previous](@previous)
//: # Exercise
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Create a program that produces the following output:
 
 ![output](output.png "Output")
 
 The algorithm (recipe) for the program is indicated by the comments.
 
 Your job is to fill in the required code.
 
 */
// Create canvas
let canvas = Canvas(width: 400, height: 300)
/*:
 ## Add your code below
 
 Fill in the blanks below the comments
 */
// Loop 4 times, counting up by 100, from 0
for i in stride(from: 1, through: 400, by: 100){
    // Inside the loop, generate a random number (1 or 2)
let randomValue = random(from: 1, toButNotIncluding: 3)
    if randomValue == 1 {
        canvas.fillColor = Color.black
        canvas.drawRectangle(bottomLeftX: i, bottomLeftY: 0, width: 100, height: 300)
        canvas.textColor = Color.white
        canvas.drawText(message: "1", size: 100, x: i, y: 0)
    } else {
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: i, bottomLeftY: 0, width: 100, height: 300)
        canvas.textColor = Color.black
        canvas.drawText(message: "2", size: 100, x: i, y: 0)
    }
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
