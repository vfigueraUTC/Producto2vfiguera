package models;


public class Restaurant  {
	@Entity
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long id;
	  
		
	@Constraints.Required
	public String name;
	   
	}


