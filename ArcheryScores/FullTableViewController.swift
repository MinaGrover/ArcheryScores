//
//  FullTableViewController.swift
//  ArcheryScores
//
//  Created by Aamina Munzir on 11/13/18.
//  Copyright © 2018 Aamina Munzir. All rights reserved.
//

import UIKit

class FullTableViewController: UIViewController {

    
    @IBOutlet weak var roundNumL: UILabel!
    @IBOutlet weak var firstArrowTF: UITextField!
    @IBOutlet weak var secondArrowTF: UITextField!
    @IBOutlet weak var thirdArrowTF: UITextField!
    
    
    
    @IBOutlet weak var roundOneButton: UIButton!
    @IBOutlet weak var roundTwoButton: UIButton!
    @IBOutlet weak var roundThreeButton: UIButton!
    @IBOutlet weak var roundFourButton: UIButton!
    @IBOutlet weak var roundFiveButton: UIButton!
    @IBOutlet weak var roundSixButton: UIButton!
    @IBOutlet weak var roundSevenButton: UIButton!
    @IBOutlet weak var roundEightButton: UIButton!
    @IBOutlet weak var roundNineButton: UIButton!
    @IBOutlet weak var roundTenButton: UIButton!
    
    
    @IBOutlet weak var roundOneArrowOneL: UILabel!
    @IBOutlet weak var roundTwoArrowOneL: UILabel!
    @IBOutlet weak var roundThreeArrowOneL: UILabel!
    @IBOutlet weak var roundFourArrowOneL: UILabel!
    @IBOutlet weak var roundFiveArrowOneL: UILabel!
    @IBOutlet weak var roundSixArrowOneL: UILabel!
    @IBOutlet weak var roundSevenArrowOneL: UILabel!
    @IBOutlet weak var roundEightArrowOneL: UILabel!
    @IBOutlet weak var roundNineArrowOneL: UILabel!
    @IBOutlet weak var roundTenArrowOneL: UILabel!
    
    @IBOutlet weak var roundOneArrowTwoL: UILabel!
    @IBOutlet weak var roundTwoArrowTwoL: UILabel!
    @IBOutlet weak var roundThreeArrowTwoL: UILabel!
    @IBOutlet weak var roundFourArrowTwoL: UILabel!
    @IBOutlet weak var roundFiveArrowTwoL: UILabel!
    @IBOutlet weak var roundSixArrowTwoL: UILabel!
    @IBOutlet weak var roundSevenArrowTwoL: UILabel!
    @IBOutlet weak var roundEightArrowTwoL: UILabel!
    @IBOutlet weak var roundNineArrowTwoL: UILabel!
    @IBOutlet weak var roundTenArrowTwoL: UILabel!
    
    @IBOutlet weak var roundOneArrowThreeL: UILabel!
    @IBOutlet weak var roundTwoArrowThreeL: UILabel!
    @IBOutlet weak var roundThreeArrowThreeL: UILabel!
    @IBOutlet weak var roundFourArrowThreeL: UILabel!
    @IBOutlet weak var roundFiveArrowThreeL: UILabel!
    @IBOutlet weak var roundSixArrowThreeL: UILabel!
    @IBOutlet weak var roundSevenArrowThreeL: UILabel!
    @IBOutlet weak var roundEightArrowThreeL: UILabel!
    @IBOutlet weak var roundNineArrowThreeL: UILabel!
    @IBOutlet weak var roundTenArrowThreeL: UILabel!
    
    
    
    @IBOutlet weak var roundOneTotalL: UILabel!
    @IBOutlet weak var roundTwoTotalL: UILabel!
    @IBOutlet weak var roundThreeTotalL: UILabel!
    @IBOutlet weak var roundFourTotalL: UILabel!
    @IBOutlet weak var roundFiveTotalL: UILabel!
    @IBOutlet weak var roundSixTotalL: UILabel!
    @IBOutlet weak var roundSevenTotalL: UILabel!
    @IBOutlet weak var roundEightTotalL: UILabel!
    @IBOutlet weak var roundNineTotalL: UILabel!
    @IBOutlet weak var roundTenTotalL: UILabel!
    
    
    @IBOutlet weak var postRoundOneTotalL: UILabel!
    @IBOutlet weak var postRoundTwoTotalL: UILabel!
    @IBOutlet weak var postRoundThreeTotalL: UILabel!
    @IBOutlet weak var postRoundFourTotalL: UILabel!
    @IBOutlet weak var postRoundFiveTotalL: UILabel!
    @IBOutlet weak var postRoundSixTotalL: UILabel!
    @IBOutlet weak var postRoundSevenTotalL: UILabel!
    @IBOutlet weak var postRoundEightTotalL: UILabel!
    @IBOutlet weak var postRoundNineTotalL: UILabel!
    @IBOutlet weak var postRoundTenTotalL: UILabel!
    
    
    
    var roundOneLabels = [UILabel]()
    var roundTwoLabels = [UILabel]()
    var roundThreeLabels = [UILabel]()
    var roundFourLabels = [UILabel]()
    var roundFiveLabels = [UILabel]()
    var roundSixLabels = [UILabel]()
    var roundSevenLabels = [UILabel]()
    var roundEightLabels = [UILabel]()
    var roundNineLabels = [UILabel]()
    var roundTenLabels = [UILabel]()
    
    var roundsLabels = [Array<UILabel>]()
    
    var roundButtons = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        roundOneLabels += [roundOneArrowOneL, roundOneArrowTwoL, roundOneArrowThreeL, roundOneTotalL, postRoundOneTotalL]
        roundTwoLabels += [roundTwoArrowOneL, roundTwoArrowTwoL, roundTwoArrowThreeL, roundTwoTotalL, postRoundTwoTotalL]
        roundThreeLabels += [roundThreeArrowOneL, roundThreeArrowTwoL, roundThreeArrowThreeL, roundThreeTotalL, postRoundThreeTotalL]
        roundFourLabels += [roundFourArrowOneL, roundFourArrowTwoL, roundFourArrowThreeL, roundFourTotalL, postRoundFourTotalL]
        roundFiveLabels += [roundFiveArrowOneL, roundFiveArrowTwoL, roundFiveArrowThreeL, roundFiveTotalL, postRoundFiveTotalL]
        roundSixLabels += [roundSixArrowOneL, roundSixArrowTwoL, roundSixArrowThreeL, roundSixTotalL, postRoundSixTotalL]
        roundSevenLabels += [roundSevenArrowOneL, roundSevenArrowTwoL, roundSevenArrowThreeL, roundSevenTotalL, postRoundSevenTotalL]
        roundEightLabels += [roundEightArrowOneL, roundEightArrowTwoL, roundEightArrowThreeL, roundEightTotalL, postRoundEightTotalL]
        roundNineLabels += [roundNineArrowOneL, roundNineArrowTwoL, roundNineArrowThreeL, roundNineTotalL, postRoundNineTotalL]
        roundTenLabels += [roundTenArrowOneL, roundTenArrowTwoL, roundTenArrowThreeL, roundTenTotalL, postRoundTenTotalL]
        
        roundsLabels += [roundOneLabels, roundTwoLabels, roundThreeLabels, roundFourLabels, roundFiveLabels, roundSixLabels, roundSevenLabels, roundEightLabels, roundNineLabels, roundTenLabels]
        
        roundButtons += [roundOneButton, roundTwoButton, roundThreeButton, roundFourButton, roundFiveButton, roundSixButton, roundSevenButton, roundEightButton, roundNineButton, roundTenButton]
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
