package no.ciber.mangekampen.web;

import no.ciber.mangekampen.model.Deltakelse;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/deltakelses")
@Controller
@RooWebScaffold(path = "deltakelses", formBackingObject = Deltakelse.class)
public class DeltakelseController {
}
