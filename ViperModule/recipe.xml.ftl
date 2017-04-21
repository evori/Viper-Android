<?xml version="1.0"?>
<recipe>

	<instantiate from="src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.java" />
				   
    <instantiate from="src/app_package/Interactor.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Interactor.java" />
	<instantiate from="src/app_package/InteractorInput.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}InteractorInput.java" />
	<instantiate from="src/app_package/InteractorOutput.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}InteractorOutput.java" />
				   
	<instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.java" />
	<instantiate from="src/app_package/PresenterInput.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}PresenterInput.java" />
	<instantiate from="src/app_package/PresenterOutput.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}PresenterOutput.java" />
				   
	<instantiate from="src/app_package/Router.java.ftl"
				   to="${escapeXmlAttribute(srcOut)}/${className}Router.java" />
	<instantiate from="src/app_package/RouterInput.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}RouterInput.java" />
				   
	<instantiate from="src/app_package/PresentationConfigurator.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}PresentationConfigurator.java" />

    
	<open file="${escapeXmlAttribute(srcOut)}/${className}Fragment.java" />
	<open file="${escapeXmlAttribute(srcOut)}/${className}Interactor.java" />
	<open file="${escapeXmlAttribute(srcOut)}/${className}Presenter.java" />
	<open file="${escapeXmlAttribute(srcOut)}/${className}Configurator.java" />
</recipe>
