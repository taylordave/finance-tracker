const { environment } = require('@rails/webpacker')

// Add Bootstrap 5
const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']  // Not a typo, we're still using popper.js here
}))
// End Bootstrap 5

module.exports = environment
