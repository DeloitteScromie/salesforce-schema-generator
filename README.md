salesforce-schema-generator
===========================

Provides an interactive shell script for generating a SchemaSpy schema of a Salesforce instance using Keith Clarke's [force-metadata-jdbc-driver](https://code.google.com/p/force-metadata-jdbc-driver/) and John Currier's [SchemaSpy](http://schemaspy.sourceforge.net/).

# Prerequisites

I've only tested this on a Mac. Articles in the [acknowledgements](#acknowledgements) below describe how to modify commands to work on Windows.

* [Java 5 or higher](http://www.oracle.com/technetwork/java/javase/downloads/index.html) -- Java that is preinstalled on a Mac will probably do just fine
* [Graphviz](http://www.graphviz.org/Download_macos.php) (if you have [Homebrew](http://brew.sh/) installed, just use `brew install graphviz`)

# Usage

From a Terminal, run

```bash
> ./make_chart.sh
```

It'll prompt you for your Salesforce username, password, and (if you don't specify it as part of the password) security token. It'll then do it's thing and stick the SchemaSpy output in a directory called **docs**.

# Acknowledgments

This is largely based on:

* Chris Wolf's [Generating Salesforce Entity Relationship Diagrams](http://chriswolf.heroku.com/articles/2011/01/30/generating-salesforce-entity-relationship-diagrams/) blog post -- I really liked the post, but didn't like how passwords were handled
* `force-metadata-jdbc-driver`'s [UsageForV2](https://code.google.com/p/force-metadata-jdbc-driver/wiki/UsageForV2) wiki article
* William E. Shotts, Jr.'s [Positional Parameters](http://linuxcommand.org/wss0130.php) article
