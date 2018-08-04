@testable import SZMentionsSwift

class SZExampleMention: CreateMention {
    var mentionName: String = ""
    var mentionRange: NSRange = NSMakeRange(0, 0)
}

class TestMentionDelegate: NSObject, MentionsManagerDelegate, UITextViewDelegate {
    
    var hidingMentionsList = false
    var shouldAddMentionOnReturnKeyCalled = false
    /**
     @brief Called when a user hits enter while entering a mention
     */
    func didHandleMentionOnReturn() -> Bool {
        shouldAddMentionOnReturnKeyCalled = true
        return true
    }

    /**
     @brief Called when the UITextView is not editing a mention.
     */
    func hideMentionsList() { hidingMentionsList = true }

    /**
     @brief Called when the UITextView is editing a mention.
     
     @param MentionString the current text entered after the mention trigger.
     Generally used for filtering a mentions list.
     @param trigger the mention trigger caused this event.
     Generally used for selecting dataSource
     */
    func showMentionsListWithString(_ mentionsString: String, trigger: String)
}
