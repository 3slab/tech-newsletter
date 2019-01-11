/**
 * If the value exists and is not empty, the content between the tags will be printed
 *
 * @example
 * {{#linkToWeb 'issue' 'date'}}{{/linkToWeb}}
 */
module.exports = function(issueNb, issueDate, options) {
  var splitedDate = issueDate.split('/');
  return 'https://tech-newsletter.3slab.io/' + splitedDate[2] + splitedDate[1] + splitedDate[0] + '_' + lpad(''+issueNb, 3) + '.html';
}

function lpad(str, length) {
  var padedStr = str;
  while (padedStr.length < length)
    padedStr = '0' + padedStr;
  return padedStr;
}