package br.com.projCardapio.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.projCardapio.model.Cardapio;

@Entity
@Table (name="tb_cardapio")
@NamedQuery (name= Cardapio.CONS_CARDAPIO, 
			query="Select c from Cardapio c where c.id = :id")

public class Cardapio {
	
	public static final String CONS_CARDAPIO = "cardapio.consulta";
	
	@Id
	@GeneratedValue
	private int id;
	@Temporal(TemporalType.DATE)
	private Date data;
	private String descPrato;
	private String descCarneA;
	private String descCarneB;
	private String descSaladaA;
	private String descSaladaB;
	private String descSuco;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public String getDescPrato() {
		return descPrato;
	}
	public void setDescPrato(String descPrato) {
		this.descPrato = descPrato;
	}
	public String getDescCarneA() {
		return descCarneA;
	}
	public void setDescCarneA(String descCarneA) {
		this.descCarneA = descCarneA;
	}
	public String getDescSaladaA() {
		return descSaladaA;
	}
	public void setDescSaladaA(String descSaladaA) {
		this.descSaladaA = descSaladaA;
	}
	public String getDescCarneB() {
		return descCarneB;
	}
	public void setDescCarneB(String descCarneB) {
		this.descCarneB = descCarneB;
	}
	public String getDescSaladaB() {
		return descSaladaB;
	}
	public void setDescSaladaB(String descSaladaB) {
		this.descSaladaB = descSaladaB;
	}
	public String getDescSuco() {
		return descSuco;
	}
	public void setDescSuco(String descSuco) {
		this.descSuco = descSuco;
	}
	
	
}
