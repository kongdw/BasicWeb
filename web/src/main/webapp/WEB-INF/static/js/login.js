var Login = function () {

    /* * * * * * * * * * * *
     * Uniform
     * * * * * * * * * * * */
    var initUniform = function() {
        if ($.fn.uniform) {
            $(':radio.uniform, :checkbox.uniform').uniform();
        }
    };

    var handleLogin = function () {

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

        $('.login-form').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
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
                            if (data[1] == 1) {
                                return true;
                            }
                            else {
                                return false;
                            }
                        }
                    }
                }
            },

            messages: {
                username: {
                    required: "请输入用户名"
                },
                password: {
                    required: "请输入密码"
                },
                jcaptchaCode:{
                    required: "请输入验证码",
                    remote:"验证码输入有误"
                }
            },

            invalidHandler: function (event, validator) { //display error alert on form submit
                $('.alert-danger', $('.login-form')).show();
            },

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
                form.submit(); // form validation success, call ajax form submit
            }
        });

        $('.login-form input').keypress(function (e) {
            if (e.which == 13) {
                if ($('.login-form').validate().form()) {
                    $('.login-form').submit(); //form validation success, call ajax form submit
                }
                return false;
            }
        });
    }

    return {
        //main function to initiate the module
        init: function () {
            initUniform();
            handleLogin();
        }

    };

}();