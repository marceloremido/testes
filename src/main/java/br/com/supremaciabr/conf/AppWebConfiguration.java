package br.com.supremaciabr.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import br.com.supremaciabr.controller.adm.AdmController;
import br.com.supremaciabr.controller.index.HomeController;
import br.com.supremaciabr.controller.qtdmembros.QtdMembrosController;
import br.com.supremaciabr.controller.regras.RegrasController;
import br.com.supremaciabr.controller.videos.VideosController;
import br.com.supremaciabr.daos.RegrasDAO;
import br.com.supremaciabr.daos.VideoDAO;


@EnableWebMvc
@ComponentScan(basePackageClasses={HomeController.class,
									     VideoDAO.class,
									     RegrasDAO.class,
									     AdmController.class,
									     RegrasController.class,
									     VideosController.class,
									     QtdMembrosController.class,
									     RegrasController.class})



public class AppWebConfiguration extends WebMvcConfigurerAdapter{
	
	
	@Bean
	public InternalResourceViewResolver internalResourceViewResolver(){
		
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
            registry.addResourceHandler("/resources/**")
                    .addResourceLocations("/resources/");
    }

}
