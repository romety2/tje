package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.List;

import com.example.servletjspdemo.domain.Pogrzeb;
import com.example.servletjspdemo.domain.Trumna;

public class SerwisPrzechowanychDanych {
	
	private List<Pogrzeb> listaPogrzebow = new ArrayList<Pogrzeb>();
	private List<Trumna> listaTrumien = new ArrayList<Trumna>();
	private long idPogrzebu = 0;
	private long idTrumny = 0;
	
	public void wstawPogrzeb(Pogrzeb pogrzeb){
		Pogrzeb nowyPogrzeb= new Pogrzeb(pogrzeb.getData(), pogrzeb.getCena(), pogrzeb.getOpis());
		nowyPogrzeb.setId(idPogrzebu);
		listaPogrzebow.add(nowyPogrzeb);
		idPogrzebu++;
	}

	public void wstawTrumne(Trumna trumna){
		Trumna nowaTrumna = new Trumna(trumna.getRodzaj(), trumna.getCena(), trumna.getIlosc());
		nowaTrumna.setId(idTrumny);
		listaTrumien.add(nowaTrumna);
		idTrumny++;
	}

	public void usunPogrzeb(Pogrzeb pogrzeb){
		int i = 0;
		for (Pogrzeb pomPogrz : dajWszystkiePogrzeby()) {
			if(pomPogrz.getId() == pogrzeb.getId())
				break;
			i++;
		}
		listaPogrzebow.remove(i);
	}

	public void usunTrumne(Trumna trumna){
		int i = 0;
		for (Trumna pomTrumna : dajWszystkieTrumny()) {
			if(pomTrumna.getId() == trumna.getId())
				break;
			i++;
		}
		listaTrumien.remove(i);
	}

	public List<Pogrzeb> dajWszystkiePogrzeby(){
		return listaPogrzebow;
	}

	public List<Trumna> dajWszystkieTrumny(){
		return listaTrumien;
	}

}
