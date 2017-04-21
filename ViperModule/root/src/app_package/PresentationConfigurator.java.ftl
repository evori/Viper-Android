package ${packageName};
 
import ${packageName}.${className}Fragment;
import ${packageName}.${className}Interactor;
import ${packageName}.${className}Presenter;
import ${packageName}.${className}PresenterInput;
import ${packageName}.${className}Router;

 public class ${className}PresentationConfigurator {
    
    
    public static ${className}PresenterInput configure${className}( ${className}Fragment view, final String parameter1, final String parameter2 ) {

        ${className}Presenter presenter = new ${className}Presenter( parameter1, parameter2 );
        presenter.setInteractor( new ${className}Interactor( presenter ) );
        presenter.setRouter( new ${className}Router() );
        presenter.setView( view );
        view.setPresenter( presenter );

        return presenter;
    }

    public static void configure${className}( ${className}Fragment view, ${className}Presenter presenter ) {

        presenter.setInteractor( new ${className}Interactor( presenter ) );
        presenter.setRouter( new ${className}Router() );
        presenter.setView( view );
        view.setPresenter( presenter );
    }
}
