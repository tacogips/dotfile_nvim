vim.g.previm_open_cmd = "firefox"

-- run `:PrevimUpdateAssets` to update
-- run `:PrevimWipeCache` to remove all caches
-- TODO(tacogips) mathjax doesn't work
local cmd = vim.cmd
cmd([[
let g:previm_extra_libraries = [
\  {
\    'name': 'katex',
\    'files': [
\      {
\        'type': 'css',
\        'path': '_/js/extra/texmath.min.css',
\        'url': 'https://cdn.jsdelivr.net/npm/markdown-it-texmath/css/texmath.min.css',
\      },
\      {
\        'type': 'css',
\        'path': '_/css/extra/katex.min.css',
\        'url': 'https://cdn.jsdelivr.net/npm/katex@latest/dist/katex.min.css',
\        'code': [
\          'renderMathInElement(document.body)',
\        ],
\      },
\      {
\        'type': 'js',
\        'path': '_/js/extra/katex-auto-render.min.js',
\        'url': 'https://cdn.jsdelivr.net/npm/katex@latest/dist/contrib/auto-render.min.js',
\        'code': [
\          'renderMathInElement(document.body)',
\        ],
\      },
\      {
\        'type': 'js',
\        'path': '_/js/extra/katex.min.js',
\        'url': 'https://cdn.jsdelivr.net/npm/katex@latest/dist/katex.min.js',
\        'code': [
\          'document.querySelectorAll(''pre code.language-katex'').forEach(elem => {',
\          '  const html = katex.renderToString(elem.innerText, {',
\          '    displayMode: true,',
\          '    output: ''html'',',
\          '    throwOnError: false,',
\          '  })',
\          '  const span = document.createElement(''span'')',
\          '  span.innerHTML = html',
\          '  elem.parentNode.replaceWith(span)',
\          '})',
\          'document.querySelectorAll(''.inlkatex'').forEach(elem => {',
\          '  const html = katex.renderToString(elem.innerText, {',
\          '    output: ''html'',',
\          '    throwOnError: false,',
\          '  })',
\          '  const span = document.createElement(''span'')',
\          '  span.innerHTML = html',
\          '  elem.replaceWith(span)',
\          '})',
\        ],
\      },
\    ],
\  },
\ {
\   'name':'asciimath2tex',
\   'files':[
\ 	   {
\        'type': 'js',
\        'path': '_/js/extra/asciimath2tex.js',
\        'url': 'https://unpkg.com/asciimath2tex@1.2.1/dist/asciimath2tex.umd.js',
\        'code': [
\          'const parser = new AsciiMathParser();',
\          'document.querySelectorAll(''pre code.language-asciimath'').forEach(elem => {',
\          '  const parsedTex = parser.parse(elem.innerText) ',
\          '  const html = katex.renderToString(parsedTex, {',
\          '    displayMode: true,',
\          '    output: ''html'',',
\          '    throwOnError: false,',
\          '  })',
\          '  const span = document.createElement(''span'')',
\          '  span.innerHTML = html',
\          '  elem.parentNode.replaceWith(span)',
\          '})',
\        ],
\      },
\    ]
\ },
\ {
\   'name':'mathjax',
\   'files':[
\      {
\        'type': 'js',
\        'path': '_/js/extra/polyfill.min.js',
\        'url': 'https://polyfill.io/v3/polyfill.min.js?features=es6',
\      },
\ 	   {
\        'type': 'js',
\        'path': '_/js/extra/mathjaxstartup.js',
\        'url': 'https://cdn.jsdelivr.net/npm/mathjax@3/es5/startup.js',
\        'code': [
\           'window.MathJax = {  ',
\               'asciimath:{',
\                 'inlineMath: [ [''$'',''$''] ]',
\               '},',
\           'loader: {load: [''input/asciimath'', ''output/chtml'']}}',
\        ],
\      },
\    ]
\ },
\]
]])
