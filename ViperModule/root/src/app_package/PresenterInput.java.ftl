package ${packageName};
 
import android.app.Activity;
import android.support.annotation.Nullable;
import ${packageName}.IPresenter;
import java.io.Serializable;

public interface ${className}PresenterInput extends IPresenter, Serializable {

	// Set View reference to presenter
	void setView( @Nullable ${className}PresenterOutput view );
    
	// Set Interactor reference to presenter
    void setInteractor( @Nullable ${className}InteractorInput interactor );
	
	//Called after view data is initilized
	void onViewInitilized();

	//Called after view is created
    void onViewCreated();
	
	//Called just before the view is presented
	void onViewShow( final Activity activity );

	//Called just before the view gets hiden
    void onViewHide();
}
