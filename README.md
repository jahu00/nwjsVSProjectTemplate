# nwjsVSProjectTemplate
nwjsVSProjectTemplate is a basic project template for running and building <a href="http://nwjs.io/">nw.js</a> apps in Visual Studio.

What you can do with it:
 - When you hit "Start Debugging" your app will be run in nw.js
 - When you select <b>Release</b> configuration an nw package will created in project folder

Usage tips:
 - You have to add path to your copy of nw.js in Project\Properties\Debug\Start external program (by default it points to <i>C:\Program Files\nwjs-v0.12.0-win-x64\nw.exe</i>)
 - Files which you want included in your app's package should be set as content with either <b>Copy if newer</b> or <b>Copy always</b>

Unfortunatelly you cannot debug your app directly in VS and you cannot set a different <i>package.json</i> depending on configuration (but it might be possible in the future).

<hr/>
Licensed: <a href="http://www.wtfpl.net/about/">WTFPL</a>
