
import UIKit

class updateViewController: UIViewController, UIPageViewControllerDataSource
{
    var pageViewController : UIPageViewController?
    var pageContent : Array<String> = ["Update", "Update", "Update"]
    var pageImages : Array<String> = ["30 minuten geleden", "4 uur geleden", "2 dagen geleden"]
    var pageTitles : Array<String> = ["Swipe door het nieuws heen", "Lees berichten terug op jouw persoonlijke wall", "Volledig op de hoogte van het nieuws"]
    var currentIndex : Int = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        pageViewController = UIPageViewController(transitionStyle: .Scroll, navigationOrientation: .Horizontal, options: nil)
        pageViewController!.dataSource = self
        
        
        
        let startingViewController: updateView = viewControllerAtIndex(0)!
        let viewControllers: NSArray = [startingViewController]
        pageViewController!.setViewControllers(viewControllers, direction: .Forward, animated: false, completion: nil)
        pageViewController!.view.frame = CGRectMake(0, 0, view.frame.size.width, view.frame.size.height);
        
        addChildViewController(pageViewController!)
        view.addSubview(pageViewController!.view)
        pageViewController!.didMoveToParentViewController(self)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
    {
        var index = (viewController as updateView).pageIndex
        
        if (index == 0) || (index == NSNotFound) {
            return nil
        }
        
        index--
        
        return viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
    {
        var index = (viewController as updateView).pageIndex
        
        if index == NSNotFound {
            return nil
        }
        
        index++
        
        if (index == self.pageTitles.count) {
            return nil
        }
        
        if (index == 2) {
            
        }
        
        return viewControllerAtIndex(index)
    }
    
    func viewControllerAtIndex(index: Int) -> updateView?
    {
        if self.pageTitles.count == 0 || index >= self.pageTitles.count
        {
            return nil
        }
        
        // Create a new view controller and pass suitable data.
        let pageContentViewController = updateView()
        pageContentViewController.imageFile = pageImages[index]
        pageContentViewController.titleText = pageContent[index]
        pageContentViewController.titleCaption = pageTitles[index]
        pageContentViewController.pageIndex = index
        currentIndex = index
        
        return pageContentViewController
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
    {
        return self.pageTitles.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
    {
        return 0
    }
    
    
    
}
