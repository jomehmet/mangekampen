// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package no.ciber.mangekampen.web;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import no.ciber.mangekampen.model.Deltakelse;
import no.ciber.mangekampen.model.Ovelse;
import no.ciber.mangekampen.web.OvelseController;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect OvelseController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String OvelseController.create(@Valid Ovelse ovelse, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ovelse);
            return "ovelses/create";
        }
        uiModel.asMap().clear();
        ovelse.persist();
        return "redirect:/ovelses/" + encodeUrlPathSegment(ovelse.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String OvelseController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Ovelse());
        return "ovelses/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String OvelseController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("ovelse", Ovelse.findOvelse(id));
        uiModel.addAttribute("itemId", id);
        return "ovelses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String OvelseController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("ovelses", Ovelse.findOvelseEntries(firstResult, sizeNo));
            float nrOfPages = (float) Ovelse.countOvelses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("ovelses", Ovelse.findAllOvelses());
        }
        addDateTimeFormatPatterns(uiModel);
        return "ovelses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String OvelseController.update(@Valid Ovelse ovelse, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ovelse);
            return "ovelses/update";
        }
        uiModel.asMap().clear();
        ovelse.merge();
        return "redirect:/ovelses/" + encodeUrlPathSegment(ovelse.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String OvelseController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Ovelse.findOvelse(id));
        return "ovelses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String OvelseController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Ovelse ovelse = Ovelse.findOvelse(id);
        ovelse.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/ovelses";
    }
    
    void OvelseController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("ovelse_dato_date_format", "mm/dd/yy");
    }
    
    void OvelseController.populateEditForm(Model uiModel, Ovelse ovelse) {
        uiModel.addAttribute("ovelse", ovelse);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("deltakelses", Deltakelse.findAllDeltakelses());
    }
    
    String OvelseController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
