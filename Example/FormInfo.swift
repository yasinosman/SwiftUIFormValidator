//
// Created by Shaban on 25/05/2021.
// Copyright (c) 2021 sha. All rights reserved.
//

import Combine
import UIKit
import FormValidator

// 1
class FormInfo: ObservableObject {
    @Published var firstName: String = ""
    @Published var middleNames: String = ""
    @Published var lastNames: String = ""
    @Published var birthday: Date = Date()
    @Published var house: String = ""
    @Published var firstLine: String = ""
    @Published var secondLine: String = ""
    @Published var addressCountry: String = ""

    // 2
    let form = FormValidation()

    // 3
    lazy var firstNameValidation: ValidationPublisher = {
        $firstName.nonEmptyValidator(form: form)
    }()

    lazy var lastNamesValidation: ValidationPublisher = {
        $lastNames.nonEmptyValidator(form: form)
    }()

    lazy var birthdayValidation: ValidationPublisher = {
        $birthday.dateValidator(form: form, before: Date(), errorMessage: "Date must be before today")
    }()

    lazy var street: ValidationPublisher = {
        $house.nonEmptyValidator(form: form)
    }()

    lazy var streetValidation: ValidationPublisher = {
        $firstLine.nonEmptyValidator(form: form)
    }()


}