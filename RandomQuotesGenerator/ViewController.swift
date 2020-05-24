import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    var activeAuthor: String? = nil
    
    var data = [
        "Marilyn Monroe": ["I believe that everything happens for a reason. People change so that you can learn to let go, things go wrong so that you appreciate them when they're right, you believe lies so you eventually learn to trust no one but yourself, and sometimes good things fall apart so better things can fall together.", "I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best.", "Imperfection is beauty, madness is genius and it's better to be absolutely ridiculous than absolutely boring.", "If you can make a woman laugh, you can make her do anything.", "A wise girl kisses but doesn't love, listens but doesn't believe, and leaves before she is left.", "I am good, but not an angel. I do sin, but I am not the devil. I am just a small girl in a big world trying to find someone to love."],
        "Oscar Wilde": ["Be yourself; everyone else is already taken.", "Always forgive your enemies; nothing annoys them so much.", "To live is the rarest thing in the world. Most people exist, that is all.", "I am so clever that sometimes I don't understand a single word of what I am saying.", "We are all in the gutter, but some of us are looking at the stars."],
    ]
    
    @IBAction func chooseOscar(_ sender: Any) {
        activeAuthor = "Oscar Wilde"
    }
    
    @IBAction func chooseMarilyn(_ sender: Any) {
        activeAuthor = "Marilyn Monroe"
    }
    
    @IBAction func generateQuote(_ sender: Any) {
        if let author = activeAuthor {
            quoteLabel.text = data[author]?.randomElement()
        }
        else {
            quoteLabel.text = "Please, choose an author and try again"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
