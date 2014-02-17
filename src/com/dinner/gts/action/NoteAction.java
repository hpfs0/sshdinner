package com.dinner.gts.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.dinner.gts.common.CommonConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Note;
import com.dinner.gts.service.NoteService;
import com.opensymphony.xwork2.ActionSupport;

public class NoteAction extends ActionSupport {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 6992774989452237885L;

	private NoteService noteService;

	public String execute() {
		// error信息初始化
		this.clearErrorsAndMessages();
		// 留言结果初始化
		String putResult = CommonConst.COMMON_NOTE_NG;

		try {
			Note inputNote = new Note();
			getAllParam(inputNote);
			noteService = new NoteService();
			noteService.putServiceNote(inputNote);
			// 留言成功
			putResult = CommonConst.COMMON_NOTE_OK;
		} catch (Exception e) {
			// 留言失败
			putResult = CommonConst.COMMON_NOTE_NG;
		} finally {
			try {
				CommonUtil.getHttpServletResponse().getWriter().write(putResult);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	public String findNote(){
		HttpServletRequest request = CommonUtil.getHttpServletRequest();
		List<Note> noteList = new ArrayList<Note>();
		noteService = new NoteService();
		noteList = noteService.getServiceNote();
		request.setAttribute("noteList", noteList);
		return SUCCESS;
	}
	
	
	/**
	 * 将用户输入的留言信息封装至实体
	 * 
	 * @param note 待封住的实体
	 */
	public void getAllParam(Note note) {
		HttpServletRequest req = CommonUtil.getHttpServletRequest();
		// 留言ID
		note.setNoteId(CommonUtil.getId(CommonConst.COMMON_ID_NOTE));
		// 标题
		note.setNoteTopic(req.getParameter("title"));
		// 留言内容
		note.setNoteContent(req.getParameter("body"));
		// 留言者登录帐号ID
		// note.setNoteLoginId(req.getParameter("loginId"));
		note.setNoteLoginId("gaofeng");
		// 真实姓名
		note.setNoteRealName(req.getParameter("name"));
		// 电子邮件
		note.setNoteMail(req.getParameter("email"));
		// 会员QQ
		note.setNoteQq(req.getParameter("qq"));
		// 个人主页地址
		note.setNotePersonalHomePage(req.getParameter("homepage"));
		// 当前心情
		note.setNoteMood(req.getParameter("mood"));
		// 悄悄话
		note.setNoteSecret(1);
		// 留言时间
		note.setNoteTime(new Date());
		// 更新时间
		note.setUpdateTime(new Date());
	}
}
