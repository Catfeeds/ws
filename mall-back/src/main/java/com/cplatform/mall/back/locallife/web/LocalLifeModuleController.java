package com.cplatform.mall.back.locallife.web;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.cplatform.dbhelp.page.Page;
import com.cplatform.mall.back.cont.mms.util.TimeUtil;
import com.cplatform.mall.back.locallife.dao.PageModuleDao;
import com.cplatform.mall.back.locallife.dao.PageModuleDataDao;
import com.cplatform.mall.back.locallife.entity.ModuleDataTemplet;
import com.cplatform.mall.back.locallife.entity.PageModule;
import com.cplatform.mall.back.locallife.entity.PageModuleData;
import com.cplatform.mall.back.locallife.service.LocalLifeModuleService;
import com.cplatform.mall.back.model.SessionUser;
import com.cplatform.mall.back.sys.dao.SysRegionDao;
import com.cplatform.mall.back.utils.AppConfig;
import com.cplatform.mall.back.utils.JsonRespWrapper;
import com.cplatform.mall.back.utils.LogUtils;
import com.cplatform.mall.back.websys.service.BsFileService;

/**
 * Title. <br>
 * 模块管理控制类 Description.
 * <p/>
 * Copyright: Copyright (c) 13-6-9
 * <p/>
 * Company: 北京宽连十方数字技术有限公司
 * <p/>
 * Author: mudeng@c-platform.com
 * <p/>
 * Version: 1.0
 * <p/>
 */

@Controller
@RequestMapping("/locallife/module/")
public class LocalLifeModuleController {

	@Autowired
	private LocalLifeModuleService service;

	@Autowired
	AppConfig appConfig;
	
	@Autowired
	private  LogUtils logUtils;
	
	@Autowired
	PageModuleDao dao;

	@Autowired
	PageModuleDataDao dataDao;

	@Autowired
	BsFileService bsFileService;
	
	@Autowired
	private SysRegionDao sysRegionDao;

	/**
	 * 模块列表
	 * @param info
	 * @param page
	 * @param session
	 * @param model
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping(value = "list")
	public String list(@ModelAttribute("PageModule") PageModule pageModule,
	        @RequestParam(value = "page", required = false, defaultValue = "1") int page, HttpSession session, Model model){
		try {
			Page<PageModule> pageModulePage = service.getPageModulePage(pageModule, page, Page.DEFAULT_PAGESIZE);
			
			List<PageModule> listPageModule = pageModulePage.getData();
			String position = "";
			for (int i = 0; i < listPageModule.size(); i++) {
				PageModule pageModuleTemp = listPageModule.get(i);
				String [] regionCodes = pageModuleTemp.getRegionCode().split(",");
				for(int j=0;j<regionCodes.length;j++){
					if(j == 0){
						position += sysRegionDao.findByRegionCode(regionCodes[j]).getRegionName();
					}else{
						position += ","+sysRegionDao.findByRegionCode(regionCodes[j]).getRegionName();
					}
					
				}
				pageModuleTemp.setRegionName(position);
				position = "";
			}
			
			model.addAttribute("pageData", pageModulePage);
		} catch (Exception e) {
			
		}
		return "locallife/module/list";
	}
	
	/**
	 * 模块数据列表
	 * @param pageModuleData
	 * @param moduleId
	 * @param page
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "dataList")
	public String dataList(@ModelAttribute("PageModuleData") PageModuleData pageModuleData,@RequestParam(value = "moduleId") Long moduleId,
			@RequestParam(value = "page", required = false, defaultValue = "1") int page, HttpSession session,HttpServletRequest request, Model model){
		try {
			SessionUser sessionUser = (SessionUser) request.getSession().getAttribute(SessionUser.SESSION_USER_KEY);
			pageModuleData.setModuleId(moduleId);
			Page<PageModuleData> pageModulePage = service.getPageModuleDataPage(pageModuleData, page, Page.DEFAULT_PAGESIZE);
			List<PageModuleData> listPageModuleData = pageModulePage.getData();
			String position = "";
			for (int i = 0; i < listPageModuleData.size(); i++) {
				PageModuleData PageModuleDataTemp = listPageModuleData.get(i);
				String [] regionCodes = PageModuleDataTemp.getRegionCode().split(",");
				for(int j=0;j<regionCodes.length;j++){
					if(j == 0){
						position += sysRegionDao.findByRegionCode(regionCodes[j]).getRegionName();
					}else{
						position += ","+sysRegionDao.findByRegionCode(regionCodes[j]).getRegionName();
					}
					
				}
				PageModuleDataTemp.setRegionName(position);
				position = "";
			}
			
			model.addAttribute("pageData", pageModulePage);
			model.addAttribute("pageData", pageModulePage);
			model.addAttribute("moduleId", moduleId);
			model.addAttribute("regionCode", sessionUser.getSysUnit().getAreaCode());
		} catch (Exception e) {
			
		}
		return "locallife/module/dataList";
	}
	
	

	/**
	 * 预添加模块信息
	 * 
	 * @param session
	 * @param model
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String addGet(HttpServletRequest request,HttpSession session, Model model) {
	try {
		SessionUser sessionUser = (SessionUser) request.getSession().getAttribute(SessionUser.SESSION_USER_KEY);
		PageModule info = new PageModule();
		List<ModuleDataTemplet> templetList = service.getModuleDataTempletList();
		model.addAttribute("templetList", templetList);
		model.addAttribute("info", info);
		model.addAttribute("method", "add");
		model.addAttribute("regionCode", sessionUser.getSysUnit().getAreaCode());
	} catch (Exception e) {
		
	}
		return "locallife/module/add";
	}
	
	/**
	 * 预添加模板数据信息
	 * @param moduleId
	 * @param request
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "dataAdd", method = RequestMethod.GET)
	public String dataAddGet(@RequestParam(value = "moduleId") Long moduleId,HttpServletRequest request,HttpSession session, Model model) {
		PageModuleData info = new PageModuleData();
		JSONObject dataJson = null;
		JSONObject json = null;
		SessionUser sessionUser = (SessionUser) request.getSession().getAttribute(SessionUser.SESSION_USER_KEY);
		try {
			String str = bsFileService.readFile(appConfig.getLocallifeDir()+service.getFilePath(moduleId).get("conf_path"));
			json = JSONObject.fromObject(str.substring(1, str.length()));
			info = new PageModuleData();
			dataJson = service.getDataJson(info, json);
			info.setModuleId(moduleId);
			info.setStartTime("");
			info.setEndTime("");
		} catch (Exception e) {
//			e.printStackTrace();
		}
		model.addAttribute("info", info);
		model.addAttribute("method", "add");
		model.addAttribute("json", json);
		model.addAttribute("dataJson", dataJson);
		model.addAttribute("regionCode", sessionUser.getSysUnit().getAreaCode());
		return "locallife/module/dataAdd";
	}

	/**
	 * 添加模块信息
	 * 
	 * @param uploadFile
	 * @param sysTempLateInfo
	 * @param request
	 * @param session
	 * @param result
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "add", method = RequestMethod.POST)
	@ResponseBody
	public Object addPost(@ModelAttribute("pageModule") PageModule pageModule, HttpServletRequest request,
	        HttpSession session) {
	try {
			SessionUser sessionUser = (SessionUser) request.getSession().getAttribute(SessionUser.SESSION_USER_KEY);
			pageModule.setCreateTime(TimeUtil.now());
			pageModule.setCreateUser(sessionUser.getId());
			dao.save(pageModule);
			logUtils.logAdd("本地生活管理", "添加模板，模板ID"+pageModule.getId());
	} catch (Exception e) {
		logUtils.logAdd("本地生活管理", "添加模板失败，模板ID"+pageModule.getId());
	}
		String backUrl = request.getParameter("backUrl");
		//"/locallife/module/list"
		return JsonRespWrapper.success("添加成功", backUrl);
	}
	
	/**
	 * 添加模块信息数据
	 * @param uploadFile
	 * @param pageModuleData
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "dataAdd", method = RequestMethod.POST)
	@ResponseBody
	public Object dataAddPost(MultipartFile uploadFile,@ModelAttribute("pageModuleData") PageModuleData pageModuleData, MultipartHttpServletRequest fileRequest,HttpServletRequest request,
			HttpSession session) {
		try {
//			if (null == uploadFile) {
//			// 提示用户必须要上传文件
//			return JsonRespWrapper.successAlert("未选择图片文件或者图片文件为空，请重新选择！");// 弹出提示
//		}
//			List<MultipartFile> files = fileRequest.getFiles("uploadFile");  
			String str = bsFileService.readFile(appConfig.getLocallifeDir()+service.getFilePath(pageModuleData.getModuleId()).get("conf_path"));
			JSONObject json = JSONObject.fromObject(str.substring(1, str.length()));
			service.savePageModuleData(pageModuleData,fileRequest, request,json);
			logUtils.logAdd("本地生活管理", "添加模板，模板ID"+pageModuleData.getId());
		} catch (Exception e) {
			logUtils.logAdd("本地生活管理", "添加模板失败，模板ID"+pageModuleData.getId());
		}
		String backUrl = request.getParameter("backUrl");
		//"/locallife/module/dataList?moduleId="+pageModuleData.getModuleId()
		return JsonRespWrapper.success("添加成功", backUrl);
	}

	/**
	 * 编辑模块信息
	 * 
	 * @param id
	 * @param session
	 * @param model
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping(value = "edit", method = RequestMethod.GET)
	public String editGet(@RequestParam(value = "id") Long id,HttpServletRequest request, HttpSession session, Model model){
		try {
			SessionUser sessionUser = (SessionUser) request.getSession().getAttribute(SessionUser.SESSION_USER_KEY);
			PageModule pageModule = this.service.findById(id);
			String [] regionCodes = pageModule.getRegionCode().split(",");
			String position = "";
			for(int j=0;j<regionCodes.length;j++){
				if(j == 0){
					position += sysRegionDao.findByRegionCode(regionCodes[j]).getRegionName();
				}else{
					position += ","+sysRegionDao.findByRegionCode(regionCodes[j]).getRegionName();
				}
				
			}
			pageModule.setRegionName(position);
			List<ModuleDataTemplet> templetList = service.getModuleDataTempletList();
			model.addAttribute("templetList", templetList);
			model.addAttribute("info", pageModule);
			model.addAttribute("method", "edit");
			model.addAttribute("regionCode", sessionUser.getSysUnit().getAreaCode());
		} catch (Exception e) {
			
		}
		return "locallife/module/add";
	}
	
	/**
	 * 编辑模块数据信息
	 * @param id
	 * @param request
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "dataEdit", method = RequestMethod.GET)
	public String dataEditGet(@RequestParam(value = "id") Long id, HttpServletRequest request,HttpSession session, Model model){
		PageModuleData info = new PageModuleData();
		JSONObject json = null;
		JSONObject dataJson = null;
		SessionUser sessionUser = (SessionUser) request.getSession().getAttribute(SessionUser.SESSION_USER_KEY);
		try {
			info = dataDao.findOne(id);
			String [] regionCodes = info.getRegionCode().split(",");
			String position = "";
			for(int j=0;j<regionCodes.length;j++){
				if(j == 0){
					position += sysRegionDao.findByRegionCode(regionCodes[j]).getRegionName();
				}else{
					position += ","+sysRegionDao.findByRegionCode(regionCodes[j]).getRegionName();
				}
				
			}
			info.setRegionName(position);
			String str = bsFileService.readFile(appConfig.getLocallifeDir()+service.getFilePath(info.getModuleId()).get("conf_path"));
			json = JSONObject.fromObject(str.substring(1, str.length()));
			dataJson = service.getDataJson(info, json);
			info.setModuleId(info.getModuleId());
		} catch (Exception e) {
//			e.printStackTrace();
		}
		model.addAttribute("info", info);
		model.addAttribute("json", json);
		model.addAttribute("dataJson", dataJson);
		model.addAttribute("method", "edit");
		model.addAttribute("regionCode", sessionUser.getSysUnit().getAreaCode());
		return "locallife/module/dataAdd";
	}
	
	/**
	 * 查看模块数据信息
	 * @param id
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "dataView", method = RequestMethod.GET)
	public String dataView(@RequestParam(value = "id") Long id, HttpSession session, Model model){
		PageModuleData info = new PageModuleData();
		JSONObject json = null;
		JSONObject dataJson = null;
		try {
			info = service.findPageModuleDataById(id);
			String [] regionCodes = info.getRegionCode().split(",");
			String position = "";
			for(int j=0;j<regionCodes.length;j++){
				if(j == 0){
					position += sysRegionDao.findByRegionCode(regionCodes[j]).getRegionName();
				}else{
					position += ","+sysRegionDao.findByRegionCode(regionCodes[j]).getRegionName();
				}
				
			}
			info.setRegionName(position);
			String str = bsFileService.readFile(appConfig.getLocallifeDir()+service.getFilePath(info.getModuleId()).get("conf_path"));
			json = JSONObject.fromObject(str.substring(1, str.length()));
			dataJson = service.getDataJson(info, json);
			info.setModuleId(info.getModuleId());
		} catch (Exception e) {
//			e.printStackTrace();
		}
		model.addAttribute("info", info);
		model.addAttribute("json", json);
		model.addAttribute("dataJson", dataJson);
		return "locallife/module/dataView";
	}
	/**
	 * 预审核模块数据信息
	 * @param id
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "dataAudit", method = RequestMethod.GET)
	public String dataAuditGet(@RequestParam(value = "id") Long id, HttpSession session, Model model){
		try {
			PageModuleData info = dataDao.findOne(id);
			model.addAttribute("info", info);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "locallife/module/dataAudit";
	}

	/**
	 * 编辑模块信息
	 * 
	 * @param uploadFile
	 * @param sysTempLateInfo
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "edit", method = RequestMethod.POST)
	@ResponseBody
	public Object editPost(@ModelAttribute("pageModule") PageModule pageModule, HttpServletRequest request)
	        {
	try {
		SessionUser sessionUser = (SessionUser) request.getSession().getAttribute(SessionUser.SESSION_USER_KEY);
		PageModule pageModuleTemp = service.findById(pageModule.getId());
			pageModule.setCreateTime(pageModuleTemp.getCreateTime());
			pageModule.setCreateUser(pageModuleTemp.getCreateUser());
			pageModule.setUpdateTime(TimeUtil.now());
			pageModule.setUpdateUser(sessionUser.getId());
			dao.save(pageModule);
			logUtils.logModify("操作成功", "");
			} catch (Exception e) {
				logUtils.logModify("操作失败", "");
			}
		String backUrl = request.getParameter("backUrl");
		//"/locallife/module/list"
		return JsonRespWrapper.success("修改成功",backUrl);
	}
	
	/**
	 * 审核模块数据信息
	 * @param pageModuleData
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "dataAudit", method = RequestMethod.POST)
	@ResponseBody
	public Object dataAuditPost(@ModelAttribute("pageModuleData") PageModuleData pageModuleData, HttpServletRequest request)
	{
		PageModuleData pageModuleDataTemp = dataDao.findOne(pageModuleData.getId());
		pageModuleDataTemp.setStatus(pageModuleData.getStatus());
		pageModuleDataTemp.setAuditAdvice(pageModuleData.getAuditAdvice());
		try {
			service.auditPageModuleData(pageModuleDataTemp, request);
			logUtils.logModify("修改操作成功", "");
		} catch (Exception e) {
			logUtils.logModify("修改操作失败",e.getMessage());
		}
		String backUrl = request.getParameter("backUrl");
		//"/locallife/module/dataList?moduleId="+pageModuleDataTemp.getModuleId()
		return JsonRespWrapper.success("审核成功", backUrl);
	}
	
	/**
	 * 编辑模块数据信息
	 * @param uploadFile
	 * @param pageModuleData
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "dataEdit", method = RequestMethod.POST)
	@ResponseBody
	public Object dataEditPost(MultipartFile uploadFile, @ModelAttribute("pageModuleData") PageModuleData pageModuleData,MultipartHttpServletRequest fileRequest, HttpServletRequest request)
	{
		try {
//			List<MultipartFile> files = fileRequest.getFiles("uploadFile");  
			String str = bsFileService.readFile(appConfig.getLocallifeDir()+service.getFilePath(pageModuleData.getModuleId()).get("conf_path"));
			JSONObject json = JSONObject.fromObject(str.substring(1, str.length()));
			service.updatePageModuleData(pageModuleData,fileRequest, request,json);
			logUtils.logModify("修改操作成功", "");
		} catch (Exception e) {
			logUtils.logModify("修改操作失败", e.getMessage());
		}
		String backUrl = request.getParameter("backUrl");
		//"/locallife/module/dataList?moduleId="+pageModuleData.getModuleId()
		return JsonRespWrapper.success("修改成功", backUrl);
	}

	/**
	 * 删除模块信息
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "del")
	
	@ResponseBody
	public Object del(@RequestParam(value = "id") Long id) {
		try {
			List<PageModuleData> listPageModuleData = service.getPageModuleDataList(id);
			if(listPageModuleData.size() > 0){
				return JsonRespWrapper.successAlert("模块下已经有数据，模块不能被删除！");// 弹出提示
			}
			dao.delete(id);
			logUtils.logDelete("删除模块", "删除成功，模块编号"+id);
		} catch (Exception e) {
			logUtils.logDelete("删除模块", "模块编号"+id);
		}
		return JsonRespWrapper.success("删除成功！", "/locallife/module/list");
	}
	
	/**
	 * 删除模块数据信息
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "dataDel")
	@ResponseBody
	public Object dataDel(@RequestParam(value = "id") Long id) {
		PageModuleData pageModuleData = dataDao.findOne(id);
		try {
			dataDao.delete(id);
			logUtils.logDelete("删除模块", "删除成功，模块编号"+id);
		} catch (Exception e) {
			logUtils.logDelete("删除模块", "模块编号"+id);
		}
		return JsonRespWrapper.success("删除成功！", "/locallife/module/dataList?moduleId="+pageModuleData.getModuleId());
	}
}
