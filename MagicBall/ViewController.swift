import UIKit

class ViewController: UIViewController {
    var ballIndexOfImage = 0
    let arrayBallNames = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImages()
    }
    func updateBallImages(){
        ballIndexOfImage = Int(arc4random_uniform(6))
        ballImage.image = UIImage(named: arrayBallNames[ballIndexOfImage])
    }
}

