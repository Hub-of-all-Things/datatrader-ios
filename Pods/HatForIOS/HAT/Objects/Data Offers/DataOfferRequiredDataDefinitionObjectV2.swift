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

public struct DataOfferRequiredDataDefinitionObjectV2: Codable {
    
    // MARK: - Variables
    
    /// The name of the definition
    public var name: String = ""
    /// The requirements of the offer
    public var bundle: Dictionary<String, DataOfferRequiredDataDefinitionBundleKeyV2> = [:]
}
