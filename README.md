# Umbraco Package Boilerplate

This boilerplate is the product of community knowledge, good practices and iterative development. It does not impose a specific development philosophy or framework, so you're free to architect your code in the way that you want.

## Benefits of use

* Best practices from seasoned Umbraco community package developers.
* Common folder structure for your Visual Studio solution/projects.
* Utilises MSBuild tasks to...
 * Generate your Umbraco package zip file.
 * Include your package files.
 * Automatically update the package version number, (includes updating your assemblies).
* Separates out your README text from the package's manifest XML.

## Links

* Source: https://github.com/leekelleher/umbraco-package-boilerplate
* Twitter: [@leekelleher](http://twitter.com/leekelleher)

## References

* [Matt Brailsford](https://github.com/mattbrailsford)'s blog post: [Automating Umbraco Package Creation Using MSBuild](http://blog.mattbrailsford.com/2010/11/13/automating-umbraco-package-creation-using-msbuild/)
* [Umbraco Package Boilerplate Bootstrapper](https://github.com/leekelleher/umbraco-package-boilerplate-bootstrapper) - a command-line interface that auto-scaffolds a new Umbraco package structure, (based on this project/repository)