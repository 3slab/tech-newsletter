/**
 * If the value exists and is not empty, the content between the tags will be printed
 *
 * @example
 * {{#isNotEmpty value}}
 * this will be printed
 * {{/isNotEmpty}}
 */
module.exports = function(value, options) {
  return value ? options.fn(this) : '';
}