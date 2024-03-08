## First Language Choice

### For Application Developers

The first language choice can be hard. You need something that'll cover tons of different kinds of applications, and is simple to run. In higher education (and therefore academia) the popular choice is Python. It supports a number of kinds of apps.

* CLI apps
* Web apps and APIs (web apps require additional languages)
* Desktop apps
* Games (though this is super limited and only really done by hobbyists)

The language comes installed on virtually all operating systems, on windows just typing `python` in a terminal will send you to the installer on the App Store. As far as coding, it rarely requires more than a text editor. If you are just starting out, my suggestion would be [vscode](https://code.visualstudio.com/download).

As a first language it's fine. There are some weaknesses, but choosing to start with python won't hurt you. If you plan on being a hobbyist that might someday go professional, or are into data science, there are zero issues working with it nearly exclusively for years (or even forever).

If you plan on working as a professional developer, python has a number of issues with it. You can still start with python, but I would suggest switching relatively quickly after you've understood the basics of programming logic. The core issue is that Python is dynamically typed. This makes it difficult to maintain large applications that need to change often. It also means that it doesn't properly support OOP (object oriented programming) techniques. Strictly typed languages are key in developing large applications with confidence (as we'll talk about later).

It's possible to work with large python applications safely, but it's very difficult. Most companies do not use python for application development.

### For Quality Engineers

When I talk about Quality Engineers I mean specifically those who use code to create automated (as in without a user) end to end or integration tests. Some organizations roll that into their application developers, some have it as a dedicated role (which I prefer), and some don't do it at all (the worst case scenario).

The most common languages I've seen for this task are python and node. Because of how automated testing works, especially in the case of browser based end to end tests, it's very rare to use something that isn't a dynamically typed language.

### For Systems Engineers

