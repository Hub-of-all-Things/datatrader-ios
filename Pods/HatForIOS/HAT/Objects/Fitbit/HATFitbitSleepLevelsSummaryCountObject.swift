/**
 * Copyright (C) 2018 HAT Data Exchange Ltd
 *
 * SPDX-License-Identifier: MPL2
 *
 * This file is part of the Hub of All Things project (HAT).
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/
 */

// MARK: Struct

public struct HATFitbitSleepLevelsSummaryCountObject: HATObject {
    
    // MARK: - Variables

    /// The total sleep levels count
    public var count: Int = 0
    /// The total duration of the sleep level in minutes
    public var minutes: Int = 0
}
