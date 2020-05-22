package com.xe.demo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xe.demo.common.annotation.Authority;
import com.xe.demo.common.annotation.ControllerLog;
import com.xe.demo.common.pojo.AjaxResult;
import com.xe.demo.common.pojo.PageAjax;
import com.xe.demo.common.utils.DateUtil;
import com.xe.demo.model.IArticle;
import com.xe.demo.model.IFile;
import com.xe.demo.service.TechService;

@Controller
@RequestMapping("/admin/tech/")
public class TechController extends BaseController{

	@Autowired
	private TechService techService;

	@Authority(opCode = "0201", opName = "文件管理界面")
	@RequestMapping("filePage")
	public String filePage() {
		return "tech/file";
	}

	@ControllerLog("查询文件列表")
	@RequestMapping("queryFilePage")
	@ResponseBody
	@Authority(opCode = "0201", opName = "查询文件列表")
	public PageAjax<IFile> queryFilePage(PageAjax<IFile> page, IFile file) {
		return techService.queryFilePage(page, file);
	}

	@Authority(opCode = "020101", opName = "添加文件页面")
	@RequestMapping("addFilePage")
	public String addFilePage(Map<String, Object> map) {
		return "tech/file_add";
	}

	@ControllerLog("添加文件")
	@RequestMapping("addFile")
	@ResponseBody
	@Authority(opCode = "020101", opName = "添加文件")
	public AjaxResult addFile(IFile file) {
		return techService.addFile(file);
	}

	@Authority(opCode = "020102", opName = "更新文件页面")
	@RequestMapping("updateFilePage/{id}")
	public String updateFilePage(@PathVariable("id") int id, Map<String, Object> map) {
		IFile file = techService.queryFileByID(id);
		map.put("file", file);
		return "tech/file_update";
	}

	@ControllerLog("修改文件")
	@RequestMapping("updateFile")
	@ResponseBody
	@Authority(opCode = "020102", opName = "修改文件")
	public AjaxResult updateFile(IFile file) {
		return techService.updateFile(file);
	}

	@ControllerLog("删除文件")
	@RequestMapping("delFile/{id}")
	@ResponseBody
	@Authority(opCode = "020103", opName = "删除文件")
	public AjaxResult delFile(@PathVariable("id") int id) {
		return techService.delFile(id);
	}

	//==================================================文章管理==================================================
	@Authority(opCode = "0202", opName = "文章管理界面")
	@RequestMapping("articlePage")
	public String articlePage(Map<String, Object> map) {
		return "tech/article";
	}

	@ControllerLog("查询文章列表")
	@RequestMapping("queryArticlePage")
	@ResponseBody
	@Authority(opCode = "0202", opName = "查询文章列表")
	public PageAjax<IArticle> queryArticlePage(PageAjax<IArticle> page, IArticle article) {
		return techService.queryPage(page, article);
	}

	@Authority(opCode = "020201", opName = "添加文章页面")
	@RequestMapping("addArticlePage")
	public String addArticlePage(Map<String, Object> map) {
		return "tech/article_add";
	}

	@ControllerLog("添加文章")
	@RequestMapping("addArticle")
	@ResponseBody
	@Authority(opCode = "020201", opName = "添加文章")
	public AjaxResult addArticle(IArticle article) {
		article.setPosttime(DateUtil.getCurDateTime());
		return techService.save(article);
	}

	@Authority(opCode = "020202", opName = "更新文章页面")
	@RequestMapping("updateArticlePage/{id}")
	public String updateArticlePage(@PathVariable("id") int id, Map<String, Object> map) {
		IArticle article = techService.queryByID(id);
		map.put("article", article);
		return "tech/article_update";
	}

	@ControllerLog("修改文章")
	@RequestMapping("updateArticle")
	@ResponseBody
	@Authority(opCode = "020202", opName = "修改文章")
	public AjaxResult updateArticle(IArticle article) {
		return techService.update(article);
	}

	@ControllerLog("删除文章")
	@RequestMapping("delArticle/{id}")
	@ResponseBody
	@Authority(opCode = "020203", opName = "删除文章")
	public AjaxResult delArticle(@PathVariable("id") int id) {
		return techService.deleteByID(id);
	}

	//==================================================文章管理==================================================
	@Authority(opCode = "0203", opName = "测试界面")
	@RequestMapping("testPage")
	public String testPage(Map<String, Object> map) {
		return "tech/article";
	}
}
