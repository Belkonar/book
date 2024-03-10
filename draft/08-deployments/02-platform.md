## The Platform

To start with deployments you need to start with the platform you are deploying to. Most (probably all) cloud platforms will have some sort of access control system. Most likely in some form of ABAC or RBAC. The key to deploying safely is simple.

> You cannot allow engineers working on products access to mutate production systems without a secondary approval.

That probably sounds easy, but how do you restrict that when your engineers generally have access to the systems they deploy to? Most won't be able to get a perfect solution, and I'm even sure it's reasonable. We can get really close though. Close enough that you can define controls around it. It two **dedicated** specialized roles.

### Roles

The first role is that of a platform engineer/architect. While most engineers work on products, a platform engineer works on the cloud accounts themselves. This role is needed because **somebody** needs full access to the system. A common task they would have is setting up the ACLs for accessing resources in the cloud account that engineers and others will use. An important part about this role is that they **should not** contribute code to products. Given their level of elevated access it generally isn't possible to ensure compliance controls around change with them.

So how do you ensure change for platform engineers is tracked appropriately? You need a second role. Platform engineers should have their access in the cloud platform limited in a very specific way. They should not be allowed to manage CloudTrail (or your cloud's equivalent). Those permissions should be restricted to a set of information security engineers.

They should configure audit logs to be sent to a separate account that only they have access to, or to a vendor that specializes in audit logs. They can then process those audit logs to find actions taken directly by people (not the deployment tool), and ensure the proper post-step attestations are completed for those actions. They as well **should not** contribute code to products.

While platform engineers can adjust the policies to give themselves access to manage CloudTrail, that would still be logged and sent to the information security team. Changes to the policies or roles that platform engineers use should **immediately** trigger alerts for the information security team to start an investigation. That should also happen if the root account logs in at all.

### Cloud SSO And ACLs

With tools like Entra ID and AWS SSO (with congnito), it's easier than ever to provide team members appropriate access to your cloud resources. To start with, the platform engineers/architects should setup your SSO to your cloud accounts. If you have something like active directory, you should federate your cloud SSO with it. You should have at minimum five general roles for each cloud account. Setting these up should be for the platform engineer. I would suggest using group entitlements to control access to each role.

The first two roles are pretty easy, they are the roles that platform engineers and security engineers will use. You also need a general use developer role that allows read-only access to the account. That should be mostly for troubleshooting information gathering. You need another role for developers that will allow *write* changes to the account. Your audit system should alert whenever this role is used to trigger post-action processes for emergency changes, as it should be only used for emergency situations such as outages. Ideally getting access to this role would be temporary and would require approval, but that can get tricky.

The last role will be special. It'll be an effective duplicate of the developer write role, except users will not be able to use it. It'll be for the deployment tool to use. We'll get into how shortly. First I want to explain why.

### Why?

This all likely sounds super overkill. I assure you it is not. Federal regulations, including specifically [Sarbanes-Oxley](https://www.law.cornell.edu/wex/sarbanes-oxley_act), can be a nightmare to adhere to. It's not enough that engineers cannot mutate services. You have to prove it, you have to prove any exceptions, and you need to prove the exception process works. The reason it's so involved is because deployments are a huge target for bad actors. [SolarWinds](https://www.techtarget.com/whatis/feature/SolarWinds-hack-explained-Everything-you-need-to-know) is an example of that. So if you start to cringe about compliance an audit requirements, just remember it's because someone got hacked and the government would like that to not happen as much.

If you aren't under any compliance requirements, you should still do as much of this as possible. It'll only be good for your clients and their data.
