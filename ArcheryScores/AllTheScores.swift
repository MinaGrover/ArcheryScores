//
//  AllTheScores.swift
//  ArcheryScores
//
//  Created by Aamina Munzir on 11/28/18.
//  Copyright © 2018 Aamina Munzir. All rights reserved.
//

import UIKit

class AllTheScores: Codable {
    
    var roundOneScores = [0, 0, 0, 0, 0]
    var roundTwoScores = [0, 0, 0, 0, 0]
    var roundThreeScores = [0, 0, 0, 0, 0]
    var roundFourScores = [0, 0, 0, 0, 0]
    var roundFiveScores = [0, 0, 0, 0, 0]
    var roundSixScores = [0, 0, 0, 0, 0]
    var roundSevenScores = [0, 0, 0, 0, 0]
    var roundEightScores = [0, 0, 0, 0, 0]
    var roundNineScores = [0, 0, 0, 0, 0]
    var roundTenScores = [0, 0, 0, 0, 0]
    
    var allRounds = [Array<Int>]()
    
    init()
    {
        allRounds = [roundOneScores, roundTwoScores, roundThreeScores, roundFourScores, roundFiveScores, roundSixScores, roundSevenScores, roundEightScores, roundNineScores, roundTenScores]
    }

}
