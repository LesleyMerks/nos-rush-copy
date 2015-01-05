
import UIKit

class InstructionView: UIViewController
{
    
    var pageIndex : Int = 0
    var titleText : String = ""
    var imageFile : String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        view.backgroundColor = UIColor(patternImage: UIImage(named: imageFile)!)
        
        let imageView = UIImageView(frame: CGRectMake(0, 0, 320, 300) )
        imageView.image=UIImage(named: imageFile)
        view.addSubview(imageView)
        
        let label = UILabel(frame: CGRectMake(10, 40, 300, 200))
        label.textColor = UIColor.blackColor()
        label.text = titleText
        label.numberOfLines = 0
        label.textAlignment = .Center
        view.addSubview(label)
        
        let button = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(20, view.frame.height - 110, view.frame.width - 40, 50)
        button.backgroundColor = UIColor(red: 138/255.0, green: 181/255.0, blue: 91/255.0, alpha: 1)
        button.setTitle(titleText, forState: UIControlState.Normal)
        button.addTarget(self, action: "Action:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        button.hidden = true
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
}
