
function noindent()
 
  if quarto.doc.isFormat('pdf')  then
    return pandoc.RawBlock('tex', "\\noindent ")
  elseif quarto.doc.isFormat('html') then
    return pandoc.RawBlock('html', "")
  else
    return pandoc.Null()
  end

end


function shy()
 
  if quarto.doc.isFormat('pdf')  then
    return pandoc.RawBlock('tex', "\\-")
  elseif quarto.doc.isFormat('html') then
    return pandoc.RawBlock('html', "&shy;")
  else
    return pandoc.Null()
  end

end


function isb(args)
  qualified_name = args[2] .. "." .. args[3]
  return pandoc.Note {
    pandoc.Str(tostring(args[1] .. " ")),
    pandoc.Link(qualified_name,
      "https://benkeks.github.io/ltbt-spectorscopy-isabelle/AFP/Lineartime_Branchingtime_Spectrum_I/" .. args[2] .. ".html#" .. qualified_name .. "|" .. args[1])
  }
end