
import UIKit

class ViewController: UIViewController
{
    //DatePicker
    @IBOutlet weak var OurDatePicker: UIDatePicker!
    //紀念日文字
    @IBOutlet weak var OurDateLabel: UILabel!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OurDatePickerAction(_ sender: UIDatePicker)
    {
        let formatter = DateFormatter()
        //時間形式
        formatter.dateFormat = "YYYY/MM/dd"
      
        //選擇日期文字顯現
        let SelectDate = OurDatePicker.date
        let FormatterDateString = formatter.string(from: SelectDate)
        OurDateLabel.text = "\(FormatterDateString)"
        //最大日期只能選今天
        OurDatePicker.maximumDate = Date()
    }
    
    
   //將資料傳到第二頁
    @IBSegueAction func RevealDays(_ coder: NSCoder) -> SecondViewController?
    {
        let controller = SecondViewController(coder: coder)
        controller?.OurdateCount = OurDatePicker.date
        
        return controller
    }
    
   
    
    

}

