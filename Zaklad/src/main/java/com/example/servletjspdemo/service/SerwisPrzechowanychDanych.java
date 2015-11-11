package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.List;

import com.example.servletjspdemo.domain.Pogrzeb;
import com.example.servletjspdemo.domain.Trumna;

public class SerwisPrzechowanychDanych {
	
	private List<Pogrzeb> ListaPogrzebow = new ArrayList<Pogrzeb>();
	private List<Trumna> ListaTrumien = new ArrayList<Trumna>();
	
	public void wstawPogrzeb(Pogrzeb pogrzeb){
		Pogrzeb nowyPogrzeb= new Pogrzeb(pogrzeb.getData(), pogrzeb.getCena(), pogrzeb.getOpis());
		ListaPogrzebow.add(nowyPogrzeb);
	}

	public void wstawTrumne(Trumna trumna){
		Trumna nowaTrumna = new Trumna(trumna.getRodzaj(), trumna.getCena(), trumna.getIlosc());
		ListaTrumien.add(nowaTrumna);
	}
	
	public List<Pogrzeb> dajWszystkiePogrzeby(){
		return ListaPogrzebow;
	}

	public List<Trumna> dajWszystkieTrumny(){
		return ListaTrumien;
	}

}
