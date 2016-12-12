package models;
import java.util.Date;
import java.util.List;


public class Pedidos {

		private static final long serialVersionUID = 1L;

		@Id
	    public Long id;
	    
	    @Constraints.Required
	    public String name;
	    public String tipo;
	    
	    public long cantidad;
		
		public long precio;
	    
	    @ManyToOne
	    public Restaurant restaurant;
	    
	    

	    public static Find<Long,Pedidos> find =new Find<Long,Pedidos>(){};
		public static List<Pedidos> listadoPedidos() {
			// TODO Auto-generated method stub
			
			return find.all();
		}

	}



