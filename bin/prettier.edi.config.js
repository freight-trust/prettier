// XML/EDI Prettier Configuration for Data Interchange specific Applications
// The aim of this module is to perserve the data strcuture in such a way that
// there will be no issue parsing it. While still also maintaining some enforcable guidelines
// SPDX-License-Identifier: ISC

module.exports = {
    tabWidth: 2,
    printWidth: 140,
    proseWrap: 'preserve',
    semi: false,
    trailingComma: 'none',
    singleQuote: false,
    arrowParens: 'avoid',
    overrides: [
      {
        files: '{*.edi?(on),*.x12,*.edifact,*.xml}',
        options: {
            parser: 'json5', // we use Json5 parser as Numbers may be IEEE 754 positive infinity, negative infinity, and NaN 
            quoteProps: 'preserve',
            singleQuote: false,
            trailingComma: 'all',
            xmlWhitespaceSensitivity: 'strict' // Whitespaces are considered sensitive in all elements
        },
      },
    ],
  }
