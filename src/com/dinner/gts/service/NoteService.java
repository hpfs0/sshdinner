package com.dinner.gts.service;

import java.util.List;

import com.dinner.gts.dao.NoteDao;
import com.dinner.gts.dao.NoteDaoImpl;
import com.dinner.gts.model.Note;

public class NoteService {

	private NoteDao noteDao = new NoteDaoImpl();

	/**
	 * 留言信息保存
	 * @param note
	 * @return 留言信息是否保存成功
	 */
	public boolean putServiceNote(Note note) {
		if (null != noteDao && null != note) {
			return noteDao.putNote(note);
		} else {
			return false;
		}
	}
	
	/**
	 * 获取留言信息列表
	 * @param currentPage 当前页码
	 * @return 留言信息列表
	 */
	public List<Note>  getServiceNote(){
		return noteDao.getNote();
	}
}
