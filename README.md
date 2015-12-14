# CalculatorApp

# Pre-work - *CalculatorApp*

**CalculatorApp** is a tip calculator application for iOS.

Submitted by: **Daham "Drake" Wang**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/d3Ao0Jb.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

I had a very difficult time transitioning from step 3 to step 4.
The video walkthrough (which was excellent) did not go over 
navigation. I originally used a bar button within a navigation bar 
which kept crashing the program when pushed. I finally gave that 
option up and went with a navigation controller instead.

It was also a challenge for me to figure out how NSUserDefaults 
is implemented. I couldn't figure it out on my own, so I surf the 
web for additional information.

Finally I have no idea what files I'm suppose to include in my 
.gitignore. I hope I have the necessary files to compile.

## License

    Copyright [2015] [Daham "Drake" Wang]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
