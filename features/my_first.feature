Feature: Create a Dice Clubs match

  @user1 @mobile
  Scenario: As a first user I enter the game with my email and wait for an invitation
    Given I wait
    Then I send a signal to user 2 containing "hi"
    Then I click view with ID "com.binteraktive.kniffel.live:id/iKnowHowToPlay"
    Then I wait
    Then I click view with ID "com.binteraktive.kniffel.live:id/acceptButton"
    Then I wait
    Then I click view with ID "com.binteraktive.kniffel.live:id/menuButton"
    Then I click view with ID "com.binteraktive.kniffel.live:id/buttonProfile"
    Then I type "<USERNAME>" in click view with ID "com.binteraktive.kniffel.live:id/profileNick"
    Then I click view with ID "com.binteraktive.kniffel.live:id/nickNameAcceptButton"
    Then I click view with ID "com.binteraktive.kniffel.live:id/informationDialogBackButton"

    Then I send a signal to user 2 containing "invite"
    Then I wait for a signal containing "guess" for 90 seconds
    Then I click view with xpath "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ListView/android.widget.FrameLayout[2]/android.widget.RelativeLayout"

  @user2 @mobile
  Scenario: As a second user I wait for user 1 to login and send an invitation
    Given I wait for a signal containing "hi"
    Then I click view with ID "com.binteraktive.kniffel.live:id/iKnowHowToPlay"
    Then I wait
    Then I click view with ID "com.binteraktive.kniffel.live:id/acceptButton"
    Then I click view with xpath "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ListView/android.widget.FrameLayout[7]/android.widget.RelativeLayout"
    Then I click view with xpath "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RelativeLayout[1]/android.widget.RelativeLayout/android.widget.FrameLayout"
    Then I click view with id "com.binteraktive.kniffel.live:id/profileBackButton"

    Then I wait for a signal containing "invite" for 60 seconds
    Then I type "<USERNAME>" in click view with xpath "com.binteraktive.kniffel.live:id/searchEditText"
    Then I click view with ID "com.binteraktive.kniffel.live:id/searchButton"
    Then I click view with ID "com.binteraktive.kniffel.live:id/searchStartButton"
    Then I send a signal to user 1 containing "guess"