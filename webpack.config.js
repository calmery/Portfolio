const path = require( 'path' )

const webpack = require( 'webpack' )
const CopyWebpackPlugin = require( 'copy-webpack-plugin' )
const MinifyPlugin = require( 'babel-minify-webpack-plugin' )

const resolve = filePath => path.resolve( __dirname, filePath )

module.exports = {
  entry: resolve( 'src/entry.js' ),
  resolve: {
    extensions: ['.js']
  },
  module: {
    rules: [{
      test: /\.elm$/,
      exclude: [/elm-stuff/, /node_modules/],
      use: {
        loader: 'elm-webpack-loader',
        options: {
          verbose: true,
          warn: true
        }
      }
    }, {
      test: /\.html$/,
      exclude: /node_modules/,
      use: [ {
        loader: 'file-loader',
        options: {
          name: '[name].[ext]'
        }
      }, 'extract-loader', {
        loader: 'html-loader',
        options: {
          minimize: true
        }
      } ]
    }, {
      test: /\.css$/,
      loaders: [ 'style-loader', 'css-loader']
    }, {
      test: /\.woff$/,
      exclude: /node_modules/,
      use: [ {
        loader: 'file-loader',
        options: {
          name: 'resources/font/[name].[ext]'
        }
      }]
    }, {
      test: /\.(svg|png)$/,
      exclude: /node_modules/,
      use: [ {
        loader: 'file-loader',
        options: {
          name: 'resources/img/[name].[ext]'
        }
      }]
    }]
  },
  plugins: [
    new MinifyPlugin(),
    new CopyWebpackPlugin( [
      { from: resolve( './src/static/img/' ), to: resolve( './dist/resources/img/' ) },
      { from: resolve( './src/CNAME' ), to: resolve( './dist/' ) },
    ] )
  ],
  output: {
    path: resolve( './dist/' ),
    filename: 'app.js'
  }
}
