# Tiers

A couple of tier config examples.

### Select tier level

 * Store in separate files
 * Parametrize using `--environment`

### Generation 1

 * Reference tests from the `discover` step
 * Use the tests namespace (both public and internal possible)
 * Select tests based on the `tier` attribute

### Generation 2

 * Reference remote tier plans
 * Missing agreement on the plan naming
 * How to handle/reference branches?
 * Where to store the plans?
 * How to select tier level?

### Filtering based on distro

 * Should work out of the box
 * Test are filtered using the context `adjust` feature
 * Just provide the context dimensions when calling the Testing Farm

### Buildroot

 * Possible to parametrize to schedule separately
 * Using `--context` to enable the extra prepare step
 * Provide `--environment` to set the proper filter
