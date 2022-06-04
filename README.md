# Backlash

An Alternative to (link_to :back) that also allows the ID to be passed along with the URL.

# When should you use it

Lets say you have a long page with lots of information and the user scrolls down to some element on the page, and then clicks on a link to navigate to a new page.

Now, on this page you have a (link_to :back) which will take user back to the previous page. But, in doing so the user will be redirected to the start of the page instead. Wouldn't it be better, if the user was scrolled to the same element from where they navigated to the new page?

That's where this gem comes in handy, as the user will be redirected to the page along with ID so the page scrolls down to specific element automatically.
