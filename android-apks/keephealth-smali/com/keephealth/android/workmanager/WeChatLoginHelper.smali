.class public Lcom/keephealth/android/workmanager/WeChatLoginHelper;
.super Ljava/lang/Object;
.source "WeChatLoginHelper.java"


# static fields
.field public static final WECHAT_APP_ID:Ljava/lang/String; = "wxf21e807bfdbacb11"

.field private static context:Landroid/content/Context;

.field private static wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWxApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .registers 1

    .line 62
    sget-object v0, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->context:Landroid/content/Context;

    .line 26
    const-string v0, "wxf21e807bfdbacb11"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p0

    sput-object p0, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 28
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/keephealth/android/workmanager/WeChatLoginHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/keephealth/android/workmanager/WeChatLoginHelper$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static isWeixinAvilible()Z
    .registers 5

    .line 34
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2b

    move v2, v1

    .line 37
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 38
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 39
    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v0, 0x1

    return v0

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2b
    return v1
.end method

.method static synthetic lambda$init$0()V
    .registers 3

    .line 29
    sget-object v0, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    const-string v1, "wxf21e807bfdbacb11"

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    move-result v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerApp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5fae\u4fe1\u521d\u59cb\u5316"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static login()V
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "login: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->isWeixinAvilible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5fae\u4fe1\u767b\u5f55\u662f\u5426\u6709\u5305\u540d\u6743\u9650"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->isWeixinAvilible()Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    .line 51
    :cond_1f
    sget-object v0, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_34

    .line 52
    sget-object v0, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->context:Landroid/content/Context;

    const-string v1, "\u672a\u5b89\u88c5\u5fae\u4fe1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 55
    :cond_34
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    .line 56
    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 57
    const-string v1, "login_wechat"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 58
    sget-object v1, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method
