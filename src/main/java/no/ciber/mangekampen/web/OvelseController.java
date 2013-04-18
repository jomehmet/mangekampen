package no.ciber.mangekampen.web;

import no.ciber.mangekampen.model.Ovelse;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ovelses")
@Controller
@RooWebScaffold(path = "ovelses", formBackingObject = Ovelse.class)
@RooWebJson(jsonObject = Ovelse.class)
public class OvelseController {
}
