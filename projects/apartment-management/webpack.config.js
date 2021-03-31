var path = require('path');

module.exports = {
  mode: 'development',
  entry: './assets/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js',
  },
  devtool:'source-map',
  module: {
    rules: [
    	{
        test: /\.(svg|eot|ttf|woff|woff2)$/,
        use: [
          {
            loader: 'file-loader',
            options: {
              name: "[name].[contenthash].[ext]",
              outputPath: 'fonts/'
            }
          }
        ]
      },
      { 
        test: /\.scss$/,
        use: [
        	'style-loader',
        	'css-loader',
          'sass-loader'
        ],
      }
    ]
  }
};