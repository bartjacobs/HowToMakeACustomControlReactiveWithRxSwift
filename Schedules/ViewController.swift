//
//  ViewController.swift
//  Schedules
//
//  Created by Bart Jacobs on 02/05/2017.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    // MARK: - Properties

    @IBOutlet var schedulePicker: SchedulePicker!

    // MARK: -

    private let disposeBag = DisposeBag()

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup View
        setupView()
    }

    // MARK: - View Methods

    fileprivate func setupView() {
        // Setup Schedule Picker
        setupSchedulePicker()
    }

    // MARK: -

    fileprivate func setupSchedulePicker() {
        // Fetch Stored Value
        let scheduleRawValue = UserDefaults.standard.integer(forKey: UserDefaults.Keys.schedule)

        // Configure Schedule Picker
        schedulePicker.setSchedule(Schedule(rawValue: scheduleRawValue))

        // Subscribe to Schedule
        schedulePicker.schedule.subscribe(onNext: {
                // Helpers
                let userDefaults = UserDefaults.standard

                // Store Value
                userDefaults.set($0.rawValue, forKey: UserDefaults.Keys.schedule)
                userDefaults.synchronize()
            })
            .addDisposableTo(disposeBag)
    }

}

extension UserDefaults {

    enum Keys {
        
        static let schedule = "schedule"
        
    }
    
}
