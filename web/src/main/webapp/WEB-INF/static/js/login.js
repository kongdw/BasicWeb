/*
 * Core script to handle all login specific things
 */

var Login = function () {

    "use strict";

    /* * * * * * * * * * * *
     * Uniform
     * * * * * * * * * * * */
    var initUniform = function () {
        if ($.fn.uniform) {
            $(':radio.uniform, :checkbox.uniform').uniform();
        }
    }
    /* * * * * * * * * * * *
     * Sign In / Up Switcher
     * * * * * * * * * * * */
    var initSignInUpSwitcher = function () {
        // Click on "Don't have an account yet? Sign Up"-text
        $('.sign-up').click(function (e) {
            e.preventDefault(); // Prevent redirect to #

            // Hide login form
            $('.login-form').slideUp(350, function () {
                // Finished, so show register form
                $('.register-form').slideDown(350);
                $('.sign-up').hide();
            });
        });

        // Click on "Back"-button
        $('.back').click(function (e) {
            e.preventDefault(); // Prevent redirect to #

            // Hide register form
            $('.register-form').slideUp(350, function () {
                // Finished, so show login form
                $('.login-form').slideDown(350);
                $('.sign-up').show();
            });
        });
    }
    /* * * * * * * * * * * *
     * Forgot Password
     * * * * * * * * * * * */
    var initForgotPassword = function () {
        // Click on "Forgot Password?" link
        $('.forgot-password-link').click(function (e) {
            e.preventDefault(); // Prevent redirect to #

            $('.forgot-password-form').slideToggle(200);
            $('.inner-box .close').fadeToggle(200);
        });

        // Click on close-button
        $('.inner-box .close').click(function () {
            // Emulate click on forgot password link
            // to reduce redundancy
            $('.forgot-password-link').click();
        });
    }

    /* * * * * * * * * * * *
     * Validation Defaults
     * * * * * * * * * * * */
    var initValidationDefaults = function () {
        if ($.validator) {
            // Set default options
            $.extend($.validator.defaults, {
                errorElement: 'span', //default input error message container
                errorClass: 'help-block', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                highlight: function (element) { // hightlight error inputs
                    $(element).closest('.form-group').addClass('has-error'); // set error class to the control group
                },

                success: function (label) {
                    label.closest('.form-group').removeClass('has-error');
                    label.remove();
                },

                errorPlacement: function (error, element) {
                    error.insertAfter(element.closest('.input-icon'));
                },

                submitHandler: function (form) {
                    form.submit();
                }
            });
        }
    }

    /* * * * * * * * * * * *
     * Validation for Login
     * * * * * * * * * * * */
    var initLoginValidation = function () {
        $("#username").focus();
        $(".jcaptcha-btn").click(function () {
            var img = $(".jcaptcha-img");
            var imageSrc = img.attr("src");
            if (imageSrc.indexOf("?") > 0) {
                imageSrc = imageSrc.substr(0, imageSrc.indexOf("?"));
            }
            imageSrc = imageSrc + "?" + new Date().getTime();
            img.attr("src", imageSrc);
        });
        if ($.validator) {
            $('.login-form').validate({
                rules: {
                    username: {
                        required: true
                    },
                    password: {
                        required: true
                    },
                    jcaptchaCode: {
                        required: true,
                        remote: {
                            url: ctx + "/jcaptcha-validate",
                            type: "get",
                            dataType: "json",
                            data: {
                                fieldValue: function () {
                                    return $("#jcaptchaCode").val();　　　　//这个是取要验证码
                                },
                                fieldId: "jcaptchaCode"
                            },
                            dataFilter: function (data) {　　　　//判断控制器返回的内容
                                data = eval(data);
                                return data[1] == 1;
                            }
                        }
                    },
                    remember: {
                        required: false
                    }
                },

                messages: {
                    username: {
                        required: "用户名必须填写."
                    },
                    password: {
                        required: "密码必须填写."
                    },
                    jcaptchaCode: {
                        required: "验证码必须填写.",
                        remote: "验证码输入有误"
                    }
                }
            });

            $('.login-form input').keypress(function (e) {
                if (e.which == 13) {
                    if ($('.login-form').validate().form()) {
                        $('.login-form').submit();
                    }
                    return false;
                }
            });
        }
    }

    /* * * * * * * * * * * *
     * Validation for Forgot Password
     * * * * * * * * * * * */
    var initForgotPasswordValidation = function () {
        if ($.validator) {
            $('.forgot-password-form').validate({
                submitHandler: function (form) {
                    // Currently demo purposes only
                    //
                    // Here on form submit you should
                    // implement some ajax (@see: http://api.jquery.com/jQuery.ajax/)

                    $('.inner-box').slideUp(350, function () {
                        $('.forgot-password-form').hide();
                        $('.forgot-password-link').hide();
                        $('.inner-box .close').hide();

                        $('.forgot-password-done').show();

                        $('.inner-box').slideDown(350);
                    });

                    return false;
                }
            });
        }
    }

    /* * * * * * * * * * * *
     * Validation for Registering
     * * * * * * * * * * * */
    var initRegisterValidation = function () {
        if ($.validator) {
            $('.register-form').validate({
                invalidHandler: function (event, validator) {
                    // Your invalid handler goes here
                },

                submitHandler: function (form) {
                    window.location.href = "index.html";

                    // Maybe you want here something like:
                    // $(form).submit();
                }
            });
        }
    }

    return {

        // main function to initiate all plugins
        init: function () {
            initUniform(); // Styled checkboxes
            initSignInUpSwitcher();
            initForgotPassword(); // Handle forgot password specific things
            // Validations
            initValidationDefaults(); // Extending jQuery Validation defaults
            initLoginValidation(); // Validation for Login (Sign In)
            initForgotPasswordValidation(); // Validation for the Password-Forgotten-Widget
            initRegisterValidation(); // Validation for Registering (Sign Up)
        }

    };

}();