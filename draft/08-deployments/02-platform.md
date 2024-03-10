## The Platform

To start with deployments you need to start with the platform you are deploying to. Most (probably all) cloud platforms will have some sort of access control system. Most likely in some form of ABAC or RBAC. The key to deploying safely is simple.

> You cannot allow engineers working on products access to mutate production systems without a secondary approval.

That probably sounds easy, but how do you restrict that when your engineers generally have access to the systems they deploy to? Most won't be able to get a perfect solution, and I'm even sure it's reasonable. We can get really close though. Close enough that you can define controls around it. It takes two steps, and a **dedicated** specialized role. Let's go over the role first.

