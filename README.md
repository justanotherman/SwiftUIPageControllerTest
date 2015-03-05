# SwiftUIPageControllerTest
Demonstration of strange behavior in Swift. On line 16 of "RootViewController.swift", change ".PageCurl" to ".Scroll" to see how responsiveness is lost.

From my post on Stack Overflow:

I’m trying to set up a UIPageViewController which can be scrolled back and forth between two pages unless the touches happen inside a UIImageView on each page. I’ve accomplished the basic set up of this and it completely works when the transition style is set to ".PageCurl”.

However, things fall apart when you set the transition style set to “.Scroll". Instead of immediately detecting whether it should or shouldn’t scroll, it scrolls based on the previous touch.

http://stackoverflow.com/questions/28868818/changing-uipageviewcontrollers-datasource-causes-touch-delay-only-with-the-sc