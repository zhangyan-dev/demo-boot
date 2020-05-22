package com.xe.demo.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.xe.demo.common.pojo.AjaxResult;
import com.xe.demo.common.utils.JsonConvertUtil;
import com.xe.demo.common.utils.UploadUtil;
import com.xe.demo.model.IFile;
import com.xe.demo.service.TechService;

@Controller
@RequestMapping("/upload/")
public class UploadController {
	/**访问地址*/
	@Value("${global.upload.path}")
	private String path;
	/**存放地址*/
	@Value("${global.upload.docBase}")
	private String docBase;
	@Autowired
	private UploadUtil uploadUtil;

	/**
	 * 上传图片
	 * @param file
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "uploadImg.do")
	@ResponseBody
	public AjaxResult uploadImg(HttpServletRequest request) {
		final Map<String, Object> result = new HashMap<String, Object>();
		String filepath = uploadUtil.upload(request, docBase, path);
		result.put("filepath", filepath);
		return new AjaxResult(1, "上传成功", result);
	}

	/**
	 * 上传文件(注意:前端需要传默认参数:name="files",或者加注解@RequestParam("files")指定参数名)
	 * @param request
	 * @param type
	 * @param file
	 * @return
	 */
	@RequestMapping(value = "uploadFile.do")
	@ResponseBody
	public AjaxResult uploadFile(MultipartFile[] files, HttpServletRequest request) {
		final Map<String, Object> result = new HashMap<String, Object>();
		// 判断file数组不能为空并且长度大于0
		if (files != null && files.length > 0) {
			// 循环获取file数组中得文件
			for (int i = 0; i < files.length; i++) {
				MultipartFile file = files[i];
				// 判断文件是否为空
				if (!file.isEmpty()) {
					String fileName = file.getOriginalFilename();
					// 文件后缀
					String suffixes = fileName.substring(fileName.lastIndexOf("."), fileName.length());
					// 重命名文件
					String nowName = uploadUtil.getNewName(suffixes);

					final ByteArrayOutputStream fileStream = new ByteArrayOutputStream();
					// 存放位置
					String savepath = uploadUtil.getFilePath(docBase, nowName);
					try {
						// 复制文件内容
						IOUtils.copy(file.getInputStream(), fileStream);
						// 复制文件
						FileUtils.copyInputStreamToFile(new ByteArrayInputStream(fileStream.toByteArray()), new File(savepath));
					} catch (Exception e) {
						return new AjaxResult(0, "上传失败", null);
					}
					result.put("nowname", nowName);
					result.put("filetype", suffixes);
					result.put("filesize", file.getSize());
					result.put("savepath", savepath);
					result.put("url", uploadUtil.getFilePath(path, nowName));
				} else {
					return new AjaxResult(0, "请选择文件上传", result);
				}
			}
		}
		return new AjaxResult(1, "上传成功", result);
	}

	/**
	 * 百度编辑器加载配置表/上传图片
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("ueditoUpload")
	public void ueditoUpload(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setHeader("Content-Type", "text/html");
		String action = request.getParameter("action");
		String jsonStr = null;
		if ("config".equals(action)) {
			InputStream jsonInStream = JsonConvertUtil.class.getClassLoader().getResourceAsStream("config.json");
			jsonStr = JsonConvertUtil.convertStream2Json(jsonInStream);
		} else if ("uploadimage".equals(action)) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("state", "SUCCESS");
			String url = uploadUtil.upload(request, docBase, path);
			map.put("url", url);
			map.put("title", "");
			map.put("original", "");
			jsonStr = new ObjectMapper().writeValueAsString(map);
		}
		response.getWriter().write(jsonStr);
	}

	@Autowired
	private TechService techService;
	
	/**
	 * 下载文件
	 * @param response
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("downFile.do")
	public String downFile(HttpServletResponse response, int id) throws Exception {
		IFile file = techService.queryFileByID(id);
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;

		// 文件路径
		String savePath = file.getSavepath();
		// 文件大小
		long fileSize = file.getFilesize();
		// 设置文件输出类型
		response.setContentType("application/octet-stream");
		// 设置文件输出名称
		response.setHeader("Content-disposition", "attachment; filename=" + new String(file.getFilename().getBytes("UTF-8"), "ISO8859-1"));
		// 获取文件的长度
		response.setHeader("Content-Length", String.valueOf(fileSize));
		// 获取输入流
		bis = new BufferedInputStream(new FileInputStream(savePath));
		// 获取输出流
		bos = new BufferedOutputStream(response.getOutputStream());
		byte[] buff = new byte[2048];
		int bytesRead;
		while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
			bos.write(buff, 0, bytesRead);
		}
		// 关闭流
		bis.close();
		bos.close();
		return null;
	}

}
