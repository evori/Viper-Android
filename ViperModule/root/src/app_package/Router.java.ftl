package ${packageName};

import com.snaps23.printastic.ApplicationContext;
import com.squareup.otto.Bus;

import javax.inject.Inject;
 
public class ${className}Router implements ${className}RouterInput {


    @Inject
    Bus eventBus;

    public ${className}Router(){

        ApplicationContext.ApplicationContext().component().inject( this );
    }

    //region ${className}RouterInput implementation
	//endregion ${className}RouterInput implementation
}