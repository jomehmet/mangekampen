package no.ciber.mangekampen.web;

import no.ciber.mangekampen.model.Sesong;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/sesongs")
@Controller
@RooWebScaffold(path = "sesongs", formBackingObject = Sesong.class)
public class SesongController {
}
