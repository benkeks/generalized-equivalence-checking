isb_types = {
  locale = "locale",
  abbreviation = "const",
  definition = "const",
  datatype = "type",
  primrec = "const"
}

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
  type = isb_types[args[1]] or "fact"
  return pandoc.Note {
    pandoc.Str(tostring(args[1] .. " ")),
    pandoc.Link(qualified_name,
      "https://benkeks.github.io/ltbt-spectroscopy-isabelle/AFP/Lineartime_Branchingtime_Spectrum_I/" ..
      args[2] .. ".html#" .. qualified_name .. "|" .. type)
  }
end