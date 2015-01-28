
import UIKit

class updateView: UIViewController
{
    
    var pageIndex : Int = 0
    var titleText : String = ""
    var imageFile : String = ""
    var titleCaption : String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
      
        setupPageControl()

        
        view.backgroundColor = UIColor(rgba: "#e0e0e0")
        

        
        let titleLable =  UILabel(frame: CGRectMake(23, 130, 300, 90))
        titleLable.textColor = UIColor.blackColor()
        titleLable.text = titleCaption
        titleLable.numberOfLines = 0
        titleLable.font = UIFont(name: titleLable.font.fontName, size: 14)
        view.addSubview(titleLable)
        
        let dateLabel = UILabel(frame: CGRectMake(100, 130, 160, 20))
        dateLabel.font = UIFont(name: dateLabel.font.fontName, size: 13)
       
        dateLabel.text = imageFile
        view.addSubview(dateLabel)
        
        let label = UILabel(frame: CGRectMake(23, 130, 100, 20))
        label.textColor = UIColor.blackColor()
        label.text = titleText
        label.numberOfLines = 0

        view.addSubview(label)
        
        let button = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(0, 0 , view.frame.width , view.frame.height)
        button.backgroundColor = UIColor.clearColor()
        button.setTitle(titleText, forState: UIControlState.Normal)
        button.addTarget(self, action: "", forControlEvents: UIControlEvents.TouchUpInside)
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
        appearance.currentPageIndicatorTintColor = UIColor(rgba: "#c81a2a")
        appearance.backgroundColor = UIColor(rgba: "#e0e0e0")
    }
    
}
