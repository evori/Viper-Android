package ${packageName};
 

public interface ${className}PresenterOutput  {

	void setPresenter( ${className}PresenterInput presenter );

	void showWaitDialog( final String message );

    void setTitle( final String title );

    void initInterface();	
}
