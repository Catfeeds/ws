package com.cplatform.mall.dc.utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

/**
 * ����Excel������ <br>
 * <p>
 * Copyright: Copyright (c) 2013-12-26 ����6:51:22
 * <p>
 * Company: ���ݿ�����Ϣ�������޹�˾
 * <p>
 * 
 * @author zhuangxx@c-platform.com
 * @version 1.0.0
 */
public class ExportExcelUtils {

	/**
	 * @param fileName
	 *            EXCLE�ļ���
	 * @param headers
	 *            �����е�Ԫ����ʾ������
	 * @param fields
	 *            �ֶ���
	 * @param datas
	 *            ����
	 * @param response
	 *            HttpServletResponse
	 * @throws IOException
	 */
	public static void export(String fileName, String[] headers, String[] fields, List<Map<String, Object>> datas, HttpServletResponse response)
	        throws IOException {
		try {
			// ��֤����
			verifyParams(fileName, headers, fields, datas, response);

			// ����������
			HSSFWorkbook workbook = createWorkbook(headers, fields, datas);

			// ����EXCEL
			export(fileName, response, workbook);
		}
		catch (IOException e) {
			e.printStackTrace();
			throw e;
		}
	}

	/**
	 * @param fileName
	 *            EXCLE�ļ���
	 * @param fields
	 *            �ֶ���
	 * @param datas
	 *            ����
	 * @param response
	 *            HttpServletResponse
	 * @throws IOException
	 */
	public static void export(String fileName, String[] fields, List<Map<String, Object>> datas, HttpServletResponse response) throws IOException {
		try {
			// ��֤����
			verifyParams(fileName, fields, datas, response);

			// ����������
			HSSFWorkbook workbook = createWorkbook(fields, datas);

			// ����EXCEL
			export(fileName, response, workbook);
		}
		catch (IOException e) {
			e.printStackTrace();
			throw e;
		}

	}

	/**
	 * @param fileName
	 *            EXCLE�ļ���
	 * @param headers
	 *            �����е�Ԫ����ʾ������
	 * @param fields
	 *            �ֶ���
	 * @param datas
	 *            ����
	 * @param response
	 *            HttpServletResponse
	 */
	private static void verifyParams(String fileName, String[] headers, String[] fields, List<Map<String, Object>> datas, HttpServletResponse response) {
		if (fileName == null) {
			throw new IllegalArgumentException("������fileNameΪ�գ�");
		}

		if (headers == null || headers.length <= 0) {
			throw new IllegalArgumentException("������headersΪ�գ�");
		}

		if (fields == null || fields.length <= 0) {
			throw new IllegalArgumentException("������fieldsΪ�գ�");
		}

		if (datas == null) {
			throw new IllegalArgumentException("������datasΪ�գ�");
		}

		if (response == null) {
			throw new IllegalArgumentException("������responseΪ�գ�");
		}

		if (headers.length != fields.length) {
			throw new IllegalArgumentException("����headers��fields���ȱ���һ�£�");
		}

	}

	/**
	 * @param fileName
	 *            EXCLE�ļ���
	 * @param fields
	 *            �ֶ���
	 * @param datas
	 *            ����
	 * @param response
	 *            HttpServletResponse
	 */
	private static void verifyParams(String fileName, String[] fields, List<Map<String, Object>> datas, HttpServletResponse response) {
		if (fileName == null) {
			throw new IllegalArgumentException("������fileNameΪ�գ�");
		}

		if (fields == null || fields.length <= 0) {
			throw new IllegalArgumentException("������fieldsΪ�գ�");
		}

		if (datas == null) {
			throw new IllegalArgumentException("������datasΪ�գ�");
		}

		if (response == null) {
			throw new IllegalArgumentException("������responseΪ�գ�");
		}
	}

	/**
	 * ����������
	 * 
	 * @param headers
	 *            �����е�Ԫ����ʾ������
	 * @param fields
	 *            �ֶ���
	 * @param datas
	 *            ����
	 * @return ������
	 */
	private static HSSFWorkbook createWorkbook(String[] headers, String[] fields, List<Map<String, Object>> datas) {
		// ����������
		HSSFWorkbook workbook = new HSSFWorkbook();

		// �������
		HSSFSheet sheet = workbook.createSheet("Sheet1");

		// ����������
		HSSFRow header = sheet.createRow(0);
		for (int i = 0; i < headers.length; i++) {
			HSSFCell cell = header.createCell(i);
			cell.setCellValue(headers[i]);
		}

		// ����������
		for (int i = 0; i < datas.size(); i++) {
			HSSFRow row = sheet.createRow(i + 1);
			Map<String, Object> data = datas.get(i);
			for (int j = 0; j < fields.length; j++) {
				HSSFCell cell = row.createCell(j);
				cell.setCellValue(StringUtil.getString(data.get(fields[j])));
			}
		}
		return workbook;
	}

	/**
	 * ����������
	 * 
	 * @param fields
	 *            �ֶ���
	 * @param datas
	 *            ����
	 * @return ������
	 */
	private static HSSFWorkbook createWorkbook(String[] fields, List<Map<String, Object>> datas) {
		// ����������
		HSSFWorkbook workbook = new HSSFWorkbook();

		// �������
		HSSFSheet sheet = workbook.createSheet("Sheet1");

		// ����������
		for (int i = 0; i < datas.size(); i++) {
			HSSFRow row = sheet.createRow(i);
			Map<String, Object> data = datas.get(i);
			for (int j = 0; j < fields.length; j++) {
				HSSFCell cell = row.createCell(j);
				cell.setCellValue(StringUtil.getString(data.get(fields[j])));
			}
		}
		return workbook;
	}

	/**
	 * ����EXCEL
	 * 
	 * @param fileName
	 *            EXCLE�ļ���
	 * @param response
	 *            HttpServletResponse
	 * @param workbook
	 *            ������
	 * @throws FileNotFoundException
	 * @throws IOException
	 * @throws UnsupportedEncodingException
	 */
	private static void export(String fileName, HttpServletResponse response, HSSFWorkbook workbook) throws FileNotFoundException, IOException,
	        UnsupportedEncodingException {
		File file = null;
		FileOutputStream os = null;
		InputStream is = null;
		try {
			// ������ʱ�ļ�
			file = new File(System.getProperty("java.io.tmpdir"), RandomStringUtils.randomAlphabetic(32));

			// ���������
			os = new FileOutputStream(file);

			// ��workbookд�������
			workbook.write(os);

			// ��������
			os.flush();

			// ����������
			is = FileUtils.openInputStream(file);

			// ������Ӧͷ��Ϣ
			response.setContentType("application/vnd.ms-excel");
			response.addHeader("Pragma", "no-cache");
			response.addHeader("Cache-Control", "no-cache");
			response.setHeader("Content-Disposition", "attachment; filename=\"" + new String(fileName.getBytes("gb2312"), "ISO8859-1") + "\"");

			// ����
			IOUtils.copy(is, response.getOutputStream());
		}
		finally {
			// �ر������
			if (os != null) {
				os.close();
			}
		}
	}

	/**
	 * ������EXCEL�ļ�
	 * 
	 * @param fileName
	 *            EXCLE�ļ���
	 * @param datas
	 *            ����
	 * @param response
	 *            HttpServletResponse
	 */
	public static void export(String fileName, List<List<String>> datas, HttpServletResponse response) throws IOException {
		try {
			// ��֤����
			verifyParams(fileName, datas, response);

			// ����������
			HSSFWorkbook workbook = createWorkbook(datas);

			// ����EXCEL
			export(fileName, response, workbook);
		}
		catch (IOException e) {
			e.printStackTrace();
			throw e;
		}
	}

	/**
	 * ��֤����
	 * 
	 * @param fileName
	 *            EXCLE�ļ���
	 * @param datas
	 *            ����
	 * @param response
	 *            HttpServletResponse
	 */
	private static void verifyParams(String fileName, List<List<String>> datas, HttpServletResponse response) {
		if (fileName == null) {
			throw new IllegalArgumentException("������fileNameΪ�գ�");
		}

		if (datas == null) {
			throw new IllegalArgumentException("������datasΪ�գ�");
		}

		if (response == null) {
			throw new IllegalArgumentException("������responseΪ�գ�");
		}
	}

	/**
	 * ����������
	 * 
	 * @param datas
	 *            ����
	 * @return ������
	 */
	private static HSSFWorkbook createWorkbook(List<List<String>> datas) {
		// ����������
		HSSFWorkbook workbook = new HSSFWorkbook();

		// �������
		HSSFSheet sheet = workbook.createSheet("Sheet1");

		// ����������
		for (int i = 0; i < datas.size(); i++) {
			HSSFRow row = sheet.createRow(i);
			for (int j = 0; j < datas.get(i).size(); j++) {
				HSSFCell cell = row.createCell(j);
				cell.setCellValue(StringUtil.getString(datas.get(i).get(j)));
			}
		}
		return workbook;
	}
}
