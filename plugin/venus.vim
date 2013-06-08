if !has('python')
  echo "Error: Required vim compiled with +python"
  finish
endif

function! RunCurrentFileInVenus()

python << EOF
import vim
output = vim.command("!clear && venus run -t % -n")
EOF

endfunction

command! -nargs=0 VenusRun call RunCurrentFileInVenus()
