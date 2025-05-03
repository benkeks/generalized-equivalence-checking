isb_types = {
  locale = "locale",
  abbreviation = "const",
  definition = "const",
  fun = "const",
  datatype = "type",
  primrec = "const",
  inductive = "const"
}

function isb_session(theory)
  strong_spectro_theories = {
    Equivalence_Games = true, HML_Spectrum = true, Hennessy_Milner_Logic = true,
    LTS_Semantics = true, Labeled_Transition_Systems = true, Priced_HML = true,
    Priced_Spectrum = true, Strong_Equivalences = true, Weak_Equivalences = true
  }
  if strong_spectro_theories[theory] then
    return "https://benkeks.github.io/ltbt-spectroscopy-isabelle/AFP/Lineartime_Branchingtime_Spectrum_I/"
  else
    return "https://equivio.github.io/silent-step-spectroscopy/AFP/Weak_Spectroscopy/"
  end
end

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

function equivio()
  return pandoc.Link("equiv.io", "https://equiv.io")
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
        pandoc.RawInline("latex", "\\raggedright \\!"),
        pandoc.Image("isb", "img/isabelle.png", "Formalized in Isabelle", {height = "0.9em"}),
        pandoc.Str(" " .. tostring(args[1])),
        pandoc.RawInline("latex", "~"),
        pandoc.Link(qualified_name_breakable,
          isb_session(args[2]) ..
          args[2] .. ".html#" .. qualified_name .. "|" .. type)
      }
    }
  else
    return pandoc.Note {
      pandoc.Inlines {
        pandoc.Image("isb", "img/isabelle.png", "Formalized in Isabelle", {height = "0.9em"}),
        pandoc.Str(" " ..  tostring(args[1] .. " ")),
        pandoc.Link(qualified_name,
          isb_session(args[2]) ..
          args[2] .. ".html#" .. qualified_name .. "|" .. type)
      }
    }
  end
  
end

function code_link(args)
  sub_project = args[1]
  qualified_name = args[2]
  url_name = string.gsub(qualified_name, "%.", "/")
  if quarto.doc.isFormat('pdf') then 
    qualified_name = pandoc.RawInline("latex", string.gsub(qualified_name, "%.", ".\\allowbreak{}"))
  end
  return
    pandoc.Inlines {
      pandoc.Image("scala", "img/scalajs.png", "Implemented in Scala", {height = "0.8em"}),
      pandoc.Link(qualified_name,
        "https://github.com/benkeks/equivalence-fiddle/tree/main/" ..
        sub_project .. "/" .. url_name .. ".scala")
    }
end

function paragraph_heading(args)
  heading = args[1]
  spacing = "\u{202f}\u{202f}"
  if quarto.doc.isFormat('pdf')  then
    return pandoc.Inlines {
      pandoc.RawInline("latex", "\\medskip\\noindent"),
      pandoc.Strong(pandoc.Str(heading .. spacing))
    }
  else
    return pandoc.Inlines {
      pandoc.Strong(pandoc.Str(heading .. spacing))
    }
  end
end
