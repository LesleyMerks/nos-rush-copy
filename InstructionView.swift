
import UIKit

class InstructionView: UIViewController
{
    
    var pageIndex : Int = 0
    var titleText : String = ""
    var imageFile : String = ""
    var titleCaption : String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        view.backgroundColor = UIColor(patternImage: UIImage(named: imageFile)!)
        setupPageControl()
        let imageView = UIImageView(frame: CGRectMake(80, 60, 140, 300) )
        imageView.image=UIImage(named: imageFile)
        imageView.contentMode = .ScaleAspectFill

        
        view.addSubview(imageView)
        
        let titleLable =  UILabel(frame: CGRectMake(10, 360, 300, 90))
        titleLable.textColor = UIColor.blackColor()
        titleLable.text = titleCaption
        titleLable.textAlignment = .Center
        titleLable.numberOfLines = 0
        titleLable.font = UIFont(name: titleLable.font.fontName, size: 18)
        view.addSubview(titleLable)
        
        let label = UILabel(frame: CGRectMake(10, 360, 300, 200))
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
    // create page contol buttons
    private func setupPageControl() {
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.whiteColor()
        appearance.currentPageIndicatorTintColor = UIColor.redColor()
        appearance.backgroundColor = UIColor.lightGrayColor()
    }
    
}
