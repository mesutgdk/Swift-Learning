

import UIKit

class ViewController: UIViewController {
  
    let wantedHardness = [
    "Soft" : 300,
    "Medium" : 420,
    "Hard" : 720]

    var secondsRemaining = 60
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        secondsRemaining = wantedHardness[hardness]!
        
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        }


        @objc func updateCounter() {
            //example functionality
            if secondsRemaining > 0 {
                print("\(secondsRemaining) seconds to the end of the world")
                secondsRemaining -= 1
            }
        }
    
    
    
    
}
    

