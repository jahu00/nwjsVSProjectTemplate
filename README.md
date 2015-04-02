# nwjsVSProjectTemplate
nwjsVSProjectTemplate is a basic project template for running and building <a href="http://nwjs.io/">nw.js</a> apps in Visual Studio.

What you can do with it:
 - When you hit <b>Start Debugging</b> your app will be run in nw.js
 - When you select <b>Release</b> configuration an nw package will created in project folder

Usage tips:
 - To install download <i>nwjsApp.zip</i> from <a href="https://github.com/jahu00/nwjsVSProjectTemplate/releases">here</a> and copy it to<br/> <i>C:\Users\\\<your&nbsp;user&nbsp;name>\Documents\Visual&nbsp;Studio&nbsp;2013\Templates\ProjectTemplates</i>
 - You have to add path to your copy of nw.js in Project\Properties\Debug\Start external program (by default it points to <i>C:\Program Files\nwjs-v0.12.0-win-x64\nw.exe</i>)
 - Files which you want included in your app's package should be set as <b>Content</b> with either <b>Copy if newer</b> or <b>Copy always</b>
 - To use TypeScript include generated JavaScript file in the project and set it to be copied to output (see above); <a href="https://github.com/jahu00/TypeScriptPlusItemTemplate">this</a> item template might help as it adds both TypeScript file and the output JavaScript file to the project
 - <i>package.json</i> can be costumized for <b>Debug</b> and <b>Release</b> configuration; final <i>package.json</i> is built by extending main <i>package.json</i> with <i>package.\<ConfigurationName\>.json</i>

Unfortunatelly you cannot debug your app directly in VS (depending on how difficult it is I'll consider adding it in the future).

<hr/>
Licensed: <a href="http://www.wtfpl.net/about/">WTFPL</a>
