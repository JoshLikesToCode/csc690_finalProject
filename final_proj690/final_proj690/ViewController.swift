import UIKit


class ViewController: UIViewController {
    
    // create class variable that's accessible outside of viewToLoad()
    var centerY: NSLayoutConstraint?
    var top: NSLayoutConstraint?
    
    var centerConstraintActive: Bool = true
    

    @IBAction func HiraganaButton(_ sender: UIButton) {
        
        let coloredView = ColoredView(width: 250, height: 50, color: .red)
        
        let lb = UILabel(frame: CGRect(x: coloredView.frame.height/2, y: coloredView.frame.width/2, width: 50, height: 50))
        
        lb.font = UIFont(name: "AmericanTypewriter", size: 30)
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text="  Hiragana Time!"
        
        view.addSubview(coloredView)
        coloredView.addSubview(lb)
        lb.center = coloredView.center
        
        coloredView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        centerY = coloredView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        centerY?.isActive = true
        
        top = coloredView.topAnchor.constraint(equalTo: view.topAnchor)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.performSegue(withIdentifier: "HiraganaSegue", sender: self)
        }
 }
    
    @IBAction func KatakanaButton(_ sender: UIButton) {
        
        let coloredView = ColoredView(width: 250, height: 50, color: .systemTeal)
        
        let lb = UILabel(frame: CGRect(x: coloredView.frame.height/2, y: coloredView.frame.width/2, width: 50, height: 50))
        
        lb.font = UIFont(name: "AmericanTypewriter", size: 30)
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text=" Katakana Time!"
        
        view.addSubview(coloredView)
        coloredView.addSubview(lb)
        lb.center = coloredView.center
        
        coloredView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        centerY = coloredView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        centerY?.isActive = true
        
        top = coloredView.topAnchor.constraint(equalTo: view.topAnchor)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.performSegue(withIdentifier: "KatakanaSegue", sender: self)
        }    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func coloredViewTapped() {
        toggle()
    }
    
    func toggle() {
            centerY?.isActive = false
            top?.isActive = true
    }


}


