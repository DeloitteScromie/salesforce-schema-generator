salesforce-schema-generator
===========================

This provides an interactive shell script for generating a SchemaSpy schema of a Salesforce instance using Keith Clarke's [force-metadata-jdbc-driver](https://code.google.com/p/force-metadata-jdbc-driver/) (licensed under the [New BSD License](http://opensource.org/licenses/BSD-3-Clause)) and John Currier's [SchemaSpy](http://schemaspy.sourceforge.net/) (licensed under the [Lesser GNU Public License 2.1](http://opensource.org/licenses/LGPL-2.1)).

# Prerequisites

We've only tested this on a Mac. Articles in the [Acknowledgements](#acknowledgements) describe how to modify commands to work on Windows.

* [Java 5 or higher](http://www.oracle.com/technetwork/java/javase/downloads/index.html) (Java that is preinstalled on a Mac will probably do just fine)
* [Graphviz](http://www.graphviz.org/Download_macos.php) (if you have [Homebrew](http://brew.sh/) installed, just use `brew install graphviz`)

# Usage

From a Terminal, run

```bash
> ./make_chart.sh
```

It'll prompt you for your Salesforce username, password, and (if you don't specify it as part of the password) security token. It'll then do it's thing and stick the SchemaSpy output in a directory called **docs**.

# Acknowledgments

This is largely based on:

* Chris Wolf's [Generating Salesforce Entity Relationship Diagrams](http://chriswolf.heroku.com/articles/2011/01/30/generating-salesforce-entity-relationship-diagrams/) blog post -- we really liked the post, but didn't like how passwords were handled
* **force-metadata-jdbc-driver**'s [UsageForV2](https://code.google.com/p/force-metadata-jdbc-driver/wiki/UsageForV2) wiki article
* William E. Shotts, Jr.'s [Positional Parameters](http://linuxcommand.org/wss0130.php) article

# License

We're [using](blob/master/LICENSE) the [MIT License](http://opensource.org/licenses/MIT) because it's as permissive as possible.