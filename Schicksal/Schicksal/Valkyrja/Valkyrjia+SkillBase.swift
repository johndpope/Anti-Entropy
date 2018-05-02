//
//  Valkyrjia+SkillBase.swift
//  Schicksal
//
//  Created by Cirno MainasuK on 2018-4-20.
//  Copyright © 2018年 MainasuK. All rights reserved.
//

import Foundation

public protocol SkillBase: SchicksalBase {
    var skillUnlockRank: SkillUnlockRank { get }
}

extension SkillBase {
    var skillUnlockRank: SkillUnlockRank { return .none }
}
