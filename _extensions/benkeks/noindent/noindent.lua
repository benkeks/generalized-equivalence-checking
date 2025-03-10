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



function headingbreak()

  if quarto.doc.isFormat('pdf')  then
    return pandoc.RawBlock('tex', "\\\\ ")
  else
    return pandoc.LineBreak()
  end

end


function isb(args)
  qualified_name = args[2] .. "." .. args[3]
  type = isb_types[args[1]] or "fact"
  if quarto.doc.isFormat('pdf')  then
    qualified_name_breakable =
      pandoc.RawInline("latex",
        string.gsub(
          string.gsub(qualified_name, "%.", "\\allowbreak."), "_", "\\allowbreak\\_"))
    return pandoc.Note {
      pandoc.Inlines {
        pandoc.RawInline("latex", "\\raggedright "),
        pandoc.Str(tostring(args[1])),
        pandoc.RawInline("latex", "~"),
        pandoc.Link(qualified_name_breakable,
          "https://benkeks.github.io/ltbt-spectroscopy-isabelle/AFP/Lineartime_Branchingtime_Spectrum_I/" ..
          args[2] .. ".html#" .. qualified_name .. "|" .. type)
      }
    }
  else
    return pandoc.Note {
      pandoc.Inlines {
        pandoc.Str(tostring(args[1] .. " ")),
        pandoc.Link(qualified_name,
          "https://benkeks.github.io/ltbt-spectroscopy-isabelle/AFP/Lineartime_Branchingtime_Spectrum_I/" ..
          args[2] .. ".html#" .. qualified_name .. "|" .. type)
      }
    }
  end
  
end

function code_link(args)
  sub_project = args[1]
  qualified_name = args[2]
  url_name = string.gsub(qualified_name, "%.", "/")
  return
    pandoc.Inlines {
      pandoc.Link(qualified_name,
        "https://github.com/benkeks/equivalence-fiddle/tree/main/" ..
        sub_project .. "/" .. url_name .. ".scala")
    }
end
