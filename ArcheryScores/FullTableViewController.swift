//
//  FullTableViewController.swift
//  ArcheryScores
//
//  Created by Aamina Munzir on 11/13/18.
//  Copyright © 2018 Aamina Munzir. All rights reserved.
//

import UIKit

class FullTableViewController: UIViewController {

    let defaults = UserDefaults.standard
    
    
    @IBOutlet weak var roundNumL: UILabel!
    @IBOutlet weak var firstArrowTF: UITextField!
    @IBOutlet weak var secondArrowTF: UITextField!
    @IBOutlet weak var thirdArrowTF: UITextField!
    
    var currentRoundNum = 0
    
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
    
    var currentAllScores = AllTheScores()
    
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
        
        if let savedDave = defaults.object(forKey: "data") as? Data
        {
            if let decoded = try? JSONDecoder().decode(AllTheScores.self, from: savedDave)
            {
                currentAllScores = decoded
                setAll()
            }
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func roundOneButtonPressed(_ sender: UIButton)
    {
        firstArrowTF.text = roundOneArrowOneL.text
        secondArrowTF.text = roundOneArrowTwoL.text
        thirdArrowTF.text = roundOneArrowThreeL.text
        roundNumL.text = "Round \(roundOneButton.titleLabel?.text ?? "0")"
        currentRoundNum = 0
    }
    
    @IBAction func roundTwoButtonPressed(sender: UIButton)
    {
        firstArrowTF.text = roundTwoArrowOneL.text
        secondArrowTF.text = roundTwoArrowTwoL.text
        thirdArrowTF.text = roundTwoArrowThreeL.text
        roundNumL.text = "Round \(roundTwoButton.titleLabel?.text ?? "0")"
        currentRoundNum = 1
    }
    
    @IBAction func roundThreeButtonPressed(sender: UIButton)
    {
        firstArrowTF.text = roundThreeArrowOneL.text
        secondArrowTF.text = roundThreeArrowTwoL.text
        thirdArrowTF.text = roundThreeArrowThreeL.text
        roundNumL.text = "Round \(roundThreeButton.titleLabel?.text ?? "0")"
        currentRoundNum = 2
    }
    
    @IBAction func roundFourButtonPressed(sender: UIButton)
    {
        firstArrowTF.text = roundFourArrowOneL.text
        secondArrowTF.text = roundFourArrowTwoL.text
        thirdArrowTF.text = roundFourArrowThreeL.text
        roundNumL.text = "Round \(roundFourButton.titleLabel?.text ?? "0")"
        currentRoundNum = 3
    }
    
    @IBAction func roundFiveButtonPressed(sender: UIButton)
    {
        firstArrowTF.text = roundFiveArrowOneL.text
        secondArrowTF.text = roundFiveArrowTwoL.text
        thirdArrowTF.text = roundFiveArrowThreeL.text
        roundNumL.text = "Round \(roundFiveButton.titleLabel?.text ?? "0")"
        currentRoundNum = 4
    }
    
    @IBAction func roundSixButtonPressed(sender: UIButton)
    {
        firstArrowTF.text = roundSixArrowOneL.text
        secondArrowTF.text = roundSixArrowTwoL.text
        thirdArrowTF.text = roundSixArrowThreeL.text
        roundNumL.text = "Round \(roundSixButton.titleLabel?.text ?? "0")"
        currentRoundNum = 5
    }
    
    @IBAction func roundSevenButtonPressed(sender: UIButton)
    {
        firstArrowTF.text = roundSevenArrowOneL.text
        secondArrowTF.text = roundSevenArrowTwoL.text
        thirdArrowTF.text = roundSevenArrowThreeL.text
        roundNumL.text = "Round \(roundSevenButton.titleLabel?.text ?? "0")"
        currentRoundNum = 6
    }
    
    @IBAction func roundEightButtonPressed(sender: UIButton)
    {
        firstArrowTF.text = roundEightArrowOneL.text
        secondArrowTF.text = roundEightArrowTwoL.text
        thirdArrowTF.text = roundEightArrowThreeL.text
        roundNumL.text = "Round \(roundEightButton.titleLabel?.text ?? "0")"
        currentRoundNum = 7
    }
  
    @IBAction func roundNineButtonPressed(sender: UIButton)
    {
        firstArrowTF.text = roundNineArrowOneL.text
        secondArrowTF.text = roundNineArrowTwoL.text
        thirdArrowTF.text = roundNineArrowThreeL.text
        roundNumL.text = "Round \(roundNineButton.titleLabel?.text ?? "0")"
        currentRoundNum = 8
    }
  
    @IBAction func roundTenButtonPressed(sender: UIButton)
    {
        firstArrowTF.text = roundTenArrowOneL.text
        secondArrowTF.text = roundTenArrowTwoL.text
        thirdArrowTF.text = roundTenArrowThreeL.text
        roundNumL.text = "Round \(roundTenButton.titleLabel?.text ?? "0")"
        currentRoundNum = 9
    }
    
    
    @IBAction func setButtonPressed(_ sender: UIButton)
    {
        let currentRoundLabels = roundsLabels[currentRoundNum]
       
        currentRoundLabels[0].text = firstArrowTF.text
        currentRoundLabels[1].text = secondArrowTF.text
        currentRoundLabels[2].text = thirdArrowTF.text
        var roundTotal = 0
        roundTotal = Int(firstArrowTF.text!)! + Int(secondArrowTF.text!)! + Int(thirdArrowTF.text!)!
        currentRoundLabels[3].text = "\(roundTotal)"
        if currentRoundNum != 0
        {
            let prevRoundLabels = roundsLabels[currentRoundNum-1]
            var totalTotal = 0
            totalTotal = Int(prevRoundLabels[4].text!)! + Int(currentRoundLabels[3].text!)!
            currentRoundLabels[4].text = "\(totalTotal)"
        }
        else
        {
            currentRoundLabels[4].text = currentRoundLabels[3].text
        }
        
        currentAllScores.allRounds[currentRoundNum][0] = Int(firstArrowTF.text!)!
        currentAllScores.allRounds[currentRoundNum][1] = Int(secondArrowTF.text!)!
        currentAllScores.allRounds[currentRoundNum][2] = Int(thirdArrowTF.text!)!
        currentAllScores.allRounds[currentRoundNum][3] = Int(firstArrowTF.text!)! + Int(secondArrowTF.text!)! + Int(thirdArrowTF.text!)!
        currentAllScores.allRounds[currentRoundNum][4] = Int(currentRoundLabels[4].text!)!
        
        print(currentAllScores.allRounds[currentRoundNum][4]) //"(currentAllScores.allRounds[currentRoundNum][4])"
        
        checkTotals()
        saveData()
    }
    
    
    @IBAction func bgdScreenTouched(_ sender: UITapGestureRecognizer)
    {
        view.endEditing(true)
    }
    
    
    func saveData()
    {
        if let encoded = try? JSONEncoder().encode(currentAllScores)
        {
            defaults.set(encoded, forKey: "data")
        }
    }
    
    func setAll()
    {
        roundOneArrowOneL.text = "\(currentAllScores.allRounds[0][0])"
        roundOneArrowTwoL.text = "\(currentAllScores.allRounds[0][1])"
        roundOneArrowThreeL.text = "\(currentAllScores.allRounds[0][2])"
        roundOneTotalL.text = "\(currentAllScores.allRounds[0][3])"
        postRoundOneTotalL.text = "\(currentAllScores.allRounds[0][4])"
        
        roundTwoArrowOneL.text = "\(currentAllScores.allRounds[1][0])"
        roundTwoArrowTwoL.text = "\(currentAllScores.allRounds[1][1])"
        roundTwoArrowThreeL.text = "\(currentAllScores.allRounds[1][2])"
        roundTwoTotalL.text = "\(currentAllScores.allRounds[1][3])"
        postRoundTwoTotalL.text = "\(currentAllScores.allRounds[1][4])"
        
        roundThreeArrowOneL.text = "\(currentAllScores.allRounds[2][0])"
        roundThreeArrowTwoL.text = "\(currentAllScores.allRounds[2][1])"
        roundThreeArrowThreeL.text = "\(currentAllScores.allRounds[2][2])"
        roundThreeTotalL.text = "\(currentAllScores.allRounds[2][3])"
        postRoundThreeTotalL.text = "\(currentAllScores.allRounds[2][4])"
        
        roundFourArrowOneL.text = "\(currentAllScores.allRounds[3][0])"
        roundFourArrowTwoL.text = "\(currentAllScores.allRounds[3][1])"
        roundFourArrowThreeL.text = "\(currentAllScores.allRounds[3][2])"
        roundFourTotalL.text = "\(currentAllScores.allRounds[3][3])"
        postRoundFourTotalL.text = "\(currentAllScores.allRounds[3][4])"
        
        roundFiveArrowOneL.text = "\(currentAllScores.allRounds[4][0])"
        roundFiveArrowTwoL.text = "\(currentAllScores.allRounds[4][1])"
        roundFiveArrowThreeL.text = "\(currentAllScores.allRounds[4][2])"
        roundFiveTotalL.text = "\(currentAllScores.allRounds[4][3])"
        postRoundFiveTotalL.text = "\(currentAllScores.allRounds[4][4])"
        
        roundSixArrowOneL.text = "\(currentAllScores.allRounds[5][0])"
        roundSixArrowTwoL.text = "\(currentAllScores.allRounds[5][1])"
        roundSixArrowThreeL.text = "\(currentAllScores.allRounds[5][2])"
        roundSixTotalL.text = "\(currentAllScores.allRounds[5][3])"
        postRoundSixTotalL.text = "\(currentAllScores.allRounds[5][4])"
        
        roundSevenArrowOneL.text = "\(currentAllScores.allRounds[6][0])"
        roundSevenArrowTwoL.text = "\(currentAllScores.allRounds[6][1])"
        roundSevenArrowThreeL.text = "\(currentAllScores.allRounds[6][2])"
        roundSevenTotalL.text = "\(currentAllScores.allRounds[6][3])"
        postRoundSevenTotalL.text = "\(currentAllScores.allRounds[6][4])"
        
        roundEightArrowOneL.text = "\(currentAllScores.allRounds[7][0])"
        roundEightArrowTwoL.text = "\(currentAllScores.allRounds[7][1])"
        roundEightArrowThreeL.text = "\(currentAllScores.allRounds[7][2])"
        roundEightTotalL.text = "\(currentAllScores.allRounds[7][3])"
        postRoundEightTotalL.text = "\(currentAllScores.allRounds[7][4])"
        
        roundNineArrowOneL.text = "\(currentAllScores.allRounds[8][0])"
        roundNineArrowTwoL.text = "\(currentAllScores.allRounds[8][1])"
        roundNineArrowThreeL.text = "\(currentAllScores.allRounds[8][2])"
        roundNineTotalL.text = "\(currentAllScores.allRounds[8][3])"
        postRoundNineTotalL.text = "\(currentAllScores.allRounds[8][4])"
        
        roundTenArrowOneL.text = "\(currentAllScores.allRounds[9][0])"
        roundTenArrowTwoL.text = "\(currentAllScores.allRounds[9][1])"
        roundTenArrowThreeL.text = "\(currentAllScores.allRounds[9][2])"
        roundTenTotalL.text = "\(currentAllScores.allRounds[9][3])"
        postRoundTenTotalL.text = "\(currentAllScores.allRounds[9][4])"
        
    }
    
    func checkTotals()
    {
        postRoundOneTotalL.text = roundOneTotalL.text
        postRoundTwoTotalL.text = "\(Int(postRoundOneTotalL.text!)! + Int(roundTwoTotalL.text!)!)"
        postRoundThreeTotalL.text = "\(Int(postRoundTwoTotalL.text!)! + Int(roundThreeTotalL.text!)!)"
        postRoundFourTotalL.text = "\(Int(postRoundThreeTotalL.text!)! + Int(roundFourTotalL.text!)!)"
        postRoundFiveTotalL.text = "\(Int(postRoundFourTotalL.text!)! + Int(roundFiveTotalL.text!)!)"
        postRoundSixTotalL.text = "\(Int(postRoundFiveTotalL.text!)! + Int(roundSixTotalL.text!)!)"
        postRoundSevenTotalL.text = "\(Int(postRoundSixTotalL.text!)! + Int(roundSevenTotalL.text!)!)"
        postRoundEightTotalL.text = "\(Int(postRoundSevenTotalL.text!)! + Int(roundEightTotalL.text!)!)"
        postRoundNineTotalL.text = "\(Int(postRoundEightTotalL.text!)! + Int(roundNineTotalL.text!)!)"
        postRoundTenTotalL.text = "\(Int(postRoundNineTotalL.text!)! + Int(roundTenTotalL.text!)!)"
        
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
