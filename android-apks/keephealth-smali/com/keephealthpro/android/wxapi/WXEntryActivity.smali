.class public Lcom/keephealthpro/android/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getAccessToken(Ljava/lang/String;)V
    .registers 4

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.weixin.qq.com/sns/oauth2/access_token?appid=wxf21e807bfdbacb11&secret=f4955f3252ebb6d5dc50b89e00de40c1&code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&grant_type=authorization_code"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keephealthpro/android/wxapi/WXEntryActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/keephealthpro/android/wxapi/WXEntryActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealthpro/android/wxapi/WXEntryActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.weixin.qq.com/sns/userinfo?access_token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&openid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/keephealthpro/android/wxapi/WXEntryActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/keephealthpro/android/wxapi/WXEntryActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealthpro/android/wxapi/WXEntryActivity;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method synthetic lambda$getAccessToken$0$com-keephealthpro-android-wxapi-WXEntryActivity()V
    .registers 3

    .line 101
    const-string v0, "\u83b7\u53d6AccessToken\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    invoke-virtual {p0}, Lcom/keephealthpro/android/wxapi/WXEntryActivity;->finish()V

    return-void
.end method

.method synthetic lambda$getAccessToken$1$com-keephealthpro-android-wxapi-WXEntryActivity(Ljava/lang/String;)V
    .registers 4

    .line 79
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 81
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x1f40

    .line 82
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 84
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 85
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    :goto_2b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 92
    :cond_35
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    const-string p1, "access_token"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    const-string p1, "openid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/keephealthpro/android/wxapi/WXEntryActivity;->finish()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_58

    :catch_4c
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    new-instance p1, Lcom/keephealthpro/android/wxapi/WXEntryActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealthpro/android/wxapi/WXEntryActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealthpro/android/wxapi/WXEntryActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealthpro/android/wxapi/WXEntryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_58
    return-void
.end method

.method synthetic lambda$getUserInfo$2$com-keephealthpro-android-wxapi-WXEntryActivity()V
    .registers 3

    .line 146
    const-string v0, "\u83b7\u53d6\u7528\u6237\u4fe1\u606f\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    invoke-virtual {p0}, Lcom/keephealthpro/android/wxapi/WXEntryActivity;->finish()V

    return-void
.end method

.method synthetic lambda$getUserInfo$3$com-keephealthpro-android-wxapi-WXEntryActivity(Ljava/lang/String;)V
    .registers 6

    .line 116
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 118
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x1f40

    .line 119
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 120
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 121
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 122
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    :goto_2b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 129
    :cond_35
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    const-string p1, "nickname"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    const-string v1, "headimgurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "\u5fae\u4fe1\u767b\u5f55"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " -- "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/keephealthpro/android/wxapi/WXEntryActivity;->finish()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_70

    goto :goto_7c

    :catch_70
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    new-instance p1, Lcom/keephealthpro/android/wxapi/WXEntryActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/keephealthpro/android/wxapi/WXEntryActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealthpro/android/wxapi/WXEntryActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealthpro/android/wxapi/WXEntryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_7c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->getWxApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealthpro/android/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .registers 2

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .registers 4

    .line 38
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_47

    .line 39
    check-cast p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    .line 40
    iget v0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->errCode:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_44

    const/4 v1, -0x2

    if-eq v0, v1, :cond_40

    if-eqz v0, :cond_14

    goto :goto_47

    .line 43
    :cond_14
    iget-object p1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5fae\u4fe1\u767b\u5f55"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lcom/keephealthpro/android/WeChatBean;

    invoke-direct {v0}, Lcom/keephealthpro/android/WeChatBean;-><init>()V

    .line 48
    invoke-virtual {v0, p1}, Lcom/keephealthpro/android/WeChatBean;->setCode(Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/keephealth/android/model/bean/BaseMessage;

    const/16 v1, 0x40a

    invoke-direct {p1, v1, v0}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(ILjava/lang/Object;)V

    .line 50
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 51
    invoke-virtual {p0}, Lcom/keephealthpro/android/wxapi/WXEntryActivity;->finish()V

    goto :goto_47

    .line 55
    :cond_40
    invoke-virtual {p0}, Lcom/keephealthpro/android/wxapi/WXEntryActivity;->finish()V

    goto :goto_47

    .line 59
    :cond_44
    invoke-virtual {p0}, Lcom/keephealthpro/android/wxapi/WXEntryActivity;->finish()V

    :cond_47
    :goto_47
    return-void
.end method
