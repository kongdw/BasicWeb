
package k0n9.common.web.jcaptcha;

import com.octo.captcha.service.image.DefaultManageableImageCaptchaService;

/**
 * @author David Kong
 * <p>Date: 13-3-22 下午3:38
 * @version 1.0
 */
public class EsManageableImageCaptchaService extends DefaultManageableImageCaptchaService {

    public EsManageableImageCaptchaService(com.octo.captcha.service.captchastore.CaptchaStore captchaStore, com.octo.captcha.engine.CaptchaEngine captchaEngine, int minGuarantedStorageDelayInSeconds, int maxCaptchaStoreSize, int captchaStoreLoadBeforeGarbageCollection) {
        super(captchaStore, captchaEngine, minGuarantedStorageDelayInSeconds, maxCaptchaStoreSize, captchaStoreLoadBeforeGarbageCollection);
    }

    public boolean hasCapcha(String id, String userCaptchaResponse) {
        return store.getCaptcha(id).validateResponse(userCaptchaResponse);
    }
}
