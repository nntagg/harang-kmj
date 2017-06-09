package schedule.model;

public class CommandFactory 
{
	private CommandFactory(){}
	
	
	private static CommandFactory instance = new CommandFactory();
		
	
	public static CommandFactory newInstance()
	{
		return instance;
	}
	
	public CommandInterface createCommand(String cmd)
	{
		
		if(cmd.equals("A_SCH_UPDATE"))
		{
			return new A_Sch_Update_Command();
		}
		else if(cmd.equals("A_SCH_POST"))
		{
			return new A_Sch_Post_Command();
		}
		else if(cmd.equals("Sch_LIST"))
		{
			return new Sch_List_Command();
		}
		
		
		else
		{
			return null;
		}
		
		
	}
}
