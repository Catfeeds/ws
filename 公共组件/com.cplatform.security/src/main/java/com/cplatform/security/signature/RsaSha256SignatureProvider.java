package com.cplatform.security.signature;

public class RsaSha256SignatureProvider extends AsymmetrySignatureProvider {

	public static final String ALGORITHM = "RSA";

	public static final String SIGNATURE_ALGORITHM = "SHA256withRSA";

	/**
	 * ��ȡ algorithm
	 * 
	 * @return algorithm
	 */
	@Override
	public String getAlgorithm() {
		return ALGORITHM;
	}

	/**
	 * ��ȡ signatureAlgorithm
	 * 
	 * @return signatureAlgorithm
	 */
	@Override
	public String getSignatureAlgorithm() {
		return SIGNATURE_ALGORITHM;
	}
}
