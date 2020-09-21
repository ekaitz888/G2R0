package reto0;

public class sala {

	private String ID_Sala;
	private String SalaNum;
	private String piso;
	sala(){
		setID_Sala("");
		setSalaNum("");
		setPiso("");
		
	}
	
	sala(String ID_Sala, String SalaNum, String piso){
		setID_Sala(ID_Sala);
		setSalaNum(SalaNum);
		setPiso(piso);
	}
	
	public String toString() {
		return ID_Sala + "    "+ SalaNum + "    "+ piso;
	}
	
	public String LogtoString() {
		return   ID_Sala + " "+ SalaNum + " "+ piso;
	}

	public String getID_Sala() {
		return ID_Sala;
	}

	public void setID_Sala(String iD_Sala) {
		ID_Sala = iD_Sala;
	}

	public String getSalaNum() {
		return SalaNum;
	}

	public void setSalaNum(String salaNum) {
		SalaNum = salaNum;
	}

	public String getPiso() {
		return piso;
	}

	public void setPiso(String piso) {
		this.piso = piso;
	}
	
}
