//
//  MentionsManagerDelegate.swift
//  SZMentionsSwift
//
//  Created by Steven Zweier on 9/21/17.
//  Copyright © 2017 Steven Zweier. All rights reserved.
//

import UIKit

public protocol MentionsManagerDelegate {
    /**
     @brief Called when the UITextView is editing a mention.
     
     @param MentionString the current text entered after the mention trigger.
     Generally used for filtering a mentions list.
     @param trigger the mention trigger caused this event.
     Generally used for selecting dataSource
     */
    func showMentionsListWithString(_ mentionsString: String, trigger: String)
    
    /**
     @brief Called when the UITextView is not editing a mention.
     */
    func hideMentionsList()
    
    /**
     @brief Called when a user hits enter while searching for a mention
     @return Whether or not the mention was handled
     */
    func didHandleMentionOnReturn() -> Bool
}
