
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
        
        //        view.backgroundColor = UIColor(patternImage: UIImage(named: imageFile)!)
        setupPageControl()
//        let imageView = UIImageView(frame: CGRectMake(70, 40, 140, 300) )
//        imageView.image=UIImage(named: imageFile)
//        imageView.contentMode = .ScaleAspectFill
        
        view.backgroundColor = UIColor(rgba: "#e0e0e0")
        
//        view.addSubview(imageView)
        
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
//        label.textAlignment = .Left
        view.addSubview(label)
        
        let button = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(0, 0 , view.frame.width , view.frame.height)
        button.backgroundColor = UIColor.clearColor()
        button.setTitle(titleText, forState: UIControlState.Normal)
        button.addTarget(self, action: "test", forControlEvents: UIControlEvents.TouchUpInside)
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
        appearance.backgroundColor = UIColor(rgba: "#e0e0e0")
    }
    
//    func test() {
//        self.performSegueWithIdentifier("toUpdate", sender: AnyObject?())
//    }
    
}
