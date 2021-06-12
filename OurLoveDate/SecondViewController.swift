

import UIKit

class SecondViewController: UIViewController
{
    //計算紀念日文字
    @IBOutlet weak var OurDateCountLabel: UILabel!
    //計算紀念日
    @IBOutlet weak var OurDateCountImage: UIImageView!
    //第二頁的變數OurdateCount型別為第一頁傳來的Date
    var OurdateCount : Date!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
      TotalDays()
       
    }
   //計算天數
    func TotalDays () -> Int
    {
        let sum = 0
        let DateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: OurdateCount)
        let Interval =  -Int (OurdateCount.timeIntervalSinceNow)
        let TotalDays = Interval/60/60/24
        OurDateCountLabel.text = "\(TotalDays)"
        
        if TotalDays <= 100
        {
            OurDateCountImage.image = UIImage(named: "100")
        }
        else if TotalDays > 100 , TotalDays <= 200
        {
            OurDateCountImage.image = UIImage(named: "200")
        }
        else if TotalDays > 200 , TotalDays <= 365
        {
            OurDateCountImage.image = UIImage(named: "365")
        }
        else if TotalDays > 365 , TotalDays <= 730
        {
            OurDateCountImage.image = UIImage(named: "730")
        }
        else if TotalDays > 730 , TotalDays <= 1000
        {
            OurDateCountImage.image = UIImage(named: "1000")
        }
        else if TotalDays > 1000 , TotalDays <= 1100
        {
            OurDateCountImage.image = UIImage(named: "1100")
        }
        else if TotalDays > 1100 , TotalDays <= 1465
        {
            OurDateCountImage.image = UIImage(named: "1465")
        }
        else if TotalDays > 1465 , TotalDays <= 1830
        {
            OurDateCountImage.image = UIImage(named: "1830")
        }
        else if TotalDays > 1830 , TotalDays <= 2000
        {
            OurDateCountImage.image = UIImage(named: "2000")
        }
        else if TotalDays > 2000 , TotalDays <= 2365
        {
            OurDateCountImage.image = UIImage(named: "2365")
        }
       else if TotalDays > 2365 , TotalDays <= 2730
       {
        OurDateCountImage.image = UIImage(named: "2730")
       }
     else if TotalDays > 2730 , TotalDays <= 3000
     {
        OurDateCountImage.image = UIImage(named: "3000")
     }
        else if TotalDays > 3000 , TotalDays <= 3365
        {
            OurDateCountImage.image = UIImage(named: "3365")

        }
        else if TotalDays > 3365
        {
            OurDateCountImage.image = UIImage(named: "3650")
        }
        return sum
    }
    
  
    

   
}
