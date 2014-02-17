package com.dinner.gts.dao;

import java.util.List;

import com.dinner.gts.model.Note;

public interface NoteDao {

    /**
     * 留言表的INSERT操作
     * 
     * @param note 留言信息
     * @return insert操作成功与否
     */
	public boolean putNote(Note note);
	
	/**
	 * 取得Note表中信息
	 * @param currentPage 当前页码
	 * @return note记录
	 */
	public List<Note> getNote();
}
