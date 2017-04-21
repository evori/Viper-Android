package ${packageName};
 
import android.support.annotation.Nullable;

import com.snaps23.printastic.ApplicationContext;
import com.snaps23.printastic.domain.interfaces.IRepoFactory;
import java.security.InvalidParameterException;
import javax.inject.Inject;


public class ${className}Interactor implements ${className}InteractorInput {

	//region private members
	private static final String LOG_TAG = ${className}Interactor.class.getSimpleName();
	
	@Inject IRepoFactory repoFactory;
	
	private ${className}InteractorOutput mPresenter;
	//endregion private members
	
	//region Construction
    public ${className}Interactor( @Nullable ${className}InteractorOutput presenter ) {

        mPresenter = presenter;
        ApplicationContext.ApplicationContext().component().inject( this );
    }

    //endregion Construction

    //region get/set
	@Nullable
    protected ${className}InteractorOutput getPresenter() {

        return mPresenter;
    }
	
	@Nullable
	public IRepoFactory getRepoFactory(){ return repoFactory; }
	//region get/set
	
	
	//region protected methods
   
	//endregion protected methods

	//region IInteractor implementation
    @Override
    public void onDestroy() {

    }
    //endregion IInteractor implementation

	
	//region ${className}InteractorInput implementation

	//endregion ${className}InteractorInput implementation
	
}
