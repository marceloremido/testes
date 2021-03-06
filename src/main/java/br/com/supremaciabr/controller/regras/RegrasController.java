package br.com.supremaciabr.controller.regras;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import br.com.supremaciabr.daos.RegrasDAO;
import br.com.supremaciabr.model.Regimento;

@Controller
public class RegrasController {
	
	@Autowired RegrasDAO regraDao;
	
	@RequestMapping("cadastraRegras")
	public String cadastraRegras(Regimento regra){
		regraDao.criaRegra(regra);
		return "redirect:balanosman";
	}

	@RequestMapping("editaRegras")
	public String editaRegras(Regimento regra){
		regraDao.editaRegra(regra);
		return "redirect:balanosman";
	}

	@RequestMapping("removeRegra")
	public String removeRegra(Integer idRegra){
		regraDao.removeRegra(idRegra);
		return "redirect:balanosman";
	}
	

}
