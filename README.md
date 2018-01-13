# Pre-work - Tippy

Tippy is a tip calculator application for iOS.

Submitted by: Alexander Zhou

Time spent: 20 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [X] Settings page to change the default tip percentage.
* [X] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] A light/dark setting for changing the color scheme

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://i.imgur.com/dsUTrPQ.gif' title='Video Walkthrough Part 1' width='' alt='Video Walkthrough' />
Part 1, shows basic functionality of the tip calculator, in that a numbed keyboard opens up, and that the tip and total both update when the bill or tip % changes.
<img src='https://i.imgur.com/AjgMwSE.gif' title='Video Walkthrough Part 2' width='' alt='Video Walkthrough' />    
Part 2, shows settings functionality with changes in the settings like default tip % and color scheme that persist through app close. Also shows that the bill field is automatically brought to focus upon opening the app.
GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

The biggest challenge I had was having an older version of xcode. I assume this is why the majority of the example code given to me didn't work. I ended up having to do a lot of google searching to figure out why things like the UserDefaults weren't working, and then find out how they worked on the older version. I am certain that if I had the latest version (my mac is older, so it can't have it), I would've been able to implement more than I ended up doing, particularly animations.')'

## License

Copyright [2018] [Alexander Zhou]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.