/**
 * Copyright IBM Corporation 2018
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

/**
 Information defining an element's subject matter.
 */
public struct Category: Codable {

    /**
     The category of the associated element.
     */
    public enum Label: String {
        case amendments = "Amendments"
        case assetUse = "Asset Use"
        case assignments = "Assignments"
        case audits = "Audits"
        case businessContinuity = "Business Continuity"
        case communication = "Communication"
        case confidentiality = "Confidentiality"
        case deliverables = "Deliverables"
        case delivery = "Delivery"
        case disputeResolution = "Dispute Resolution"
        case forceMajeure = "Force Majeure"
        case indemnification = "Indemnification"
        case insurance = "Insurance"
        case intellectualProperty = "Intellectual Property"
        case liability = "Liability"
        case paymentTermsAndBilling = "Payment Terms & Billing"
        case pricingAndTaxes = "Pricing & Taxes"
        case privacy = "Privacy"
        case responsibilities = "Responsibilities"
        case safetyAndSecurity = "Safety and Security"
        case scopeOfWork = "Scope of Work"
        case subcontracts = "Subcontracts"
        case termAndTermination = "Term & Termination"
        case warranties = "Warranties"
    }

    /**
     The category of the associated element.
     */
    public var label: String?

    /**
     One or more hashed values that you can send to IBM to provide feedback or receive support.
     */
    public var provenanceIds: [String]?

    // Map each property name to the key that shall be used for encoding/decoding.
    private enum CodingKeys: String, CodingKey {
        case label = "label"
        case provenanceIds = "provenance_ids"
    }

    /**
     Initialize a `Category` with member variables.

     - parameter label: The category of the associated element.
     - parameter provenanceIds: One or more hashed values that you can send to IBM to provide feedback or receive
       support.

     - returns: An initialized `Category`.
    */
    public init(
        label: String? = nil,
        provenanceIds: [String]? = nil
    )
    {
        self.label = label
        self.provenanceIds = provenanceIds
    }

}
