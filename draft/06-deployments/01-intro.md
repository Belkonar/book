# Deployments

The simplest method to deploy code to a server is to simply `rsync` the folder from a local dev machine to the target. While this can work, if you have any kind of scale or any compliance requirements regulating application deployments, you want to avoid that kind of deployment.

The kind of deployments I'm going to cover *should* pass muster in *most* regulations as far as application deployments are concerned. As I don't know every and all possible regulations, please ensure you work with a compliance focused legal team that understands the regulations for your industry **before** implementing these. If you aren't under any regulation, feel free to relax any steps you might find overkill.

I'm going to focus on cloud based deployments as most small companies that need this kind of information likely won't have their own data center. This will likely change in a later version of this book. Alongside that I'll be focusing on AWS as the cloud, and GitHub actions as the CI (continuous integration). This is because I know how to do it with that stack and it's relatively cheap. If you have a large stack, I would suggest **not** using GitHub for your deployments, and only the CI.
