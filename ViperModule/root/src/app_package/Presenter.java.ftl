package ${packageName};
 
import android.app.Activity;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;

<#if applicationPackage??>
import ${applicationPackage}.ApplicationContext;
</#if>

import java.io.Serializable;


public class ${className}Presenter implements ${className}PresenterInput, ${className}InteractorOutput, Serializable {

	private transient static final String LOG_TAG = ${className}Presenter.class.getSimpleName();
	
	//region private members
	private final String mParameter1;
	private final String mParameter2;
	
	private transient ${className}PresenterOutput mView;
    private transient ${className}InteractorInput mInteractor;
    private transient ${className}RouterInput mRouter;
	//endregion private members
	
	//region Construction
    public ${className}Presenter( final String parameter1, final String parameter2 ){

	
		mParameter1 = parameter1;
		mParameter2 = parameter2;
    }
    //endregion Construction
	
	//region get/set
	@Nullable
    protected ${className}PresenterOutput getView(){

        return mView;
    }

    public void setView( @Nullable final ${className}PresenterOutput view ) {

        mView = view;
    }

	@Nullable
    protected ${className}InteractorInput getInteractor(){

        return mInteractor;
    }

    public void setInteractor( @Nullable ${className}InteractorInput interactor ) {

        mInteractor = interactor;
    }

	@Nullable
    protected ${className}RouterInput getRouter(){

        return mRouter;
    }

    public void setRouter( @Nullable ${className}RouterInput router ) {

        mRouter = router;
    }
	//region get/set
	
	
	//region protected methods
    String getString( @StringRes int stringResourceId ){

        return ApplicationContext.ApplicationContext().getResources().getString( stringResourceId );
    }
	//endregion protected methods

	
    //region IPresenter implementation
    @Override
    public void onDestroy() {

        if( getInteractor() != null )
            getInteractor().onDestroy();
    }
    //endregion IPresenter implementation
	
	
	//region ${className}PresenterInput implementation
	@Override
    public void onViewInitilized() {

    }

    @Override
    public void onViewCreated() {

    }

    @Override
    public void onViewShow( Activity activity ) {

    }

    @Override
    public void onViewHide() {

    }
	//endregion ${className}PresenterInput implementation

	
    //region ${className}InteractorOutput implementation
	
	//endregion ${className}InteractorOutput implementation
	
}
