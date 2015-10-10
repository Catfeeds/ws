package com.cplatform.security;

import org.apache.commons.lang.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SecurityTestCase {

	protected static final char[] CHARS_ZH = "���������������񶯰���Э��ռԭ˫����˾��ͬ������̻����Ź����ڳ���������ͷ�ü��궨ʵ����С�پ����������в�������Ƚ��鵱Ӱ����".toCharArray();

	protected static char[] RANDOM_CHARS;

	static {
		String s0 = RandomStringUtils.randomAlphabetic(256);
		String s1 = RandomStringUtils.randomNumeric(256);
		String s2 = RandomStringUtils.random(256, CHARS_ZH);
		RANDOM_CHARS = (s0 + s1 + s2).toCharArray();
	}

	private String charset = "UTF-8";

	/** ��־��¼�� */
	protected Logger logger = LoggerFactory.getLogger(getClass());

	public String generateRawText(int length) {
		String rawText = RandomStringUtils.random(length, RANDOM_CHARS);
		return rawText;
	}

	public String getCharset() {
		return charset;
	}

	public void setCharset(String charset) {
		this.charset = charset;
	}

}
