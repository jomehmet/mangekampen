package no.ciber.mangekampen.web;

import no.ciber.mangekampen.model.Deltaker;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/deltakers")
@Controller
@RooWebScaffold(path = "deltakers", formBackingObject = Deltaker.class)
@RooWebJson(jsonObject = Deltaker.class)
public class DeltakerController {
}
