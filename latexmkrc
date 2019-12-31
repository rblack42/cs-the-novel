$pdf_mode = 1;
$pdf_previewer = 'open -a Skim';
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -shell-escape';
@generated_exts = (@generated_exts, 'synctex.gz');
