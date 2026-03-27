.class public Lcom/keephealth/android/ui/device/activity/NoticeActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "NoticeActivity.java"


# static fields
.field public static final CLASS_SMS_MANAGER:Ljava/lang/String; = "com.android.internal.telephony.SmsApplication"

.field public static final METHOD_SET_DEFAULT:Ljava/lang/String; = "setDefaultApplication"

.field private static final REQUEST_CON_PERMISSION:I = 0x14

.field private static final REQUEST_MSG_PERMISSION:I = 0x13

.field private static final REQUEST_NOTICE_PERMISSION_CODE:I = 0x12

.field private static final REQUEST_PHONE_PERMISSION:I = 0x11


# instance fields
.field private appNotice:Lcom/keephealth/android/model/bean/AppNotice;

.field assistCallPhoning:Lcom/keephealth/android/sevice/AssistWorkManager;

.field private btnNext:Landroid/widget/Button;

.field callHandler:Landroid/os/Handler;

.field private comeClass:Ljava/lang/String;

.field private config:Lcom/keephealth/android/model/bean/DeviceConfig;

.field private had_set:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private itAlibaba:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itBaiduditu:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itBaidutieba:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itBilibili:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itBosszhipin:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itCall:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itDazongdianping:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itDewu:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itDidachuxing:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itDidichuxing:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itDingding:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itDouban:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itDouyin:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itDouyinjisuban:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itEleme:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itFeizhulvxing:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itGaodeditu:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itHaluo:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itJiaoguan12123:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itJingdong:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itKeepHealth:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itKuaishou:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itKuaishoujisuban:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itLine:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itMaimai:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itMeituan:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itMeiyou:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itMomo:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itNoNotice:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itOther:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itPinduoduo:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itQQyouxiang:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itQiyeweixin:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itQunaerlvxing:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itRili:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itSoul:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itTantan:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itTaobao:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itTengxunditu:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itTengxunhuiyi:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itTielu12306:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itTongchenglvxing:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itVK:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itViber:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itWangyiyouxiangdashi:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itWangzherongyao:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itWeibo:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itXianyu:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itXiaohongshu:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itXiechenglvxing:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itZhifubao:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itZhihu:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itZhixinghuochepiao:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itZoom:Lcom/keephealth/android/views/ItemToggleLayout;

.field private itemToggleLayouts:[Lcom/keephealth/android/views/ItemToggleLayout;

.field private lin_compli:Landroid/widget/LinearLayout;

.field private llAlibaba:Landroid/widget/LinearLayout;

.field private llBaiduditu:Landroid/widget/LinearLayout;

.field private llBaidutieba:Landroid/widget/LinearLayout;

.field private llBilibili:Landroid/widget/LinearLayout;

.field private llBosszhipin:Landroid/widget/LinearLayout;

.field private llCall:Landroid/widget/LinearLayout;

.field private llDazongdianping:Landroid/widget/LinearLayout;

.field private llDewu:Landroid/widget/LinearLayout;

.field private llDidachuxing:Landroid/widget/LinearLayout;

.field private llDidichuxing:Landroid/widget/LinearLayout;

.field private llDingding:Landroid/widget/LinearLayout;

.field private llDouban:Landroid/widget/LinearLayout;

.field private llDouyin:Landroid/widget/LinearLayout;

.field private llDouyinjisuban:Landroid/widget/LinearLayout;

.field private llEleme:Landroid/widget/LinearLayout;

.field private llEmail:Landroid/widget/LinearLayout;

.field private llFacebook:Landroid/widget/LinearLayout;

.field private llFeizhulvxing:Landroid/widget/LinearLayout;

.field private llGaodeditu:Landroid/widget/LinearLayout;

.field private llGuonei:Landroid/widget/LinearLayout;

.field private llHaluo:Landroid/widget/LinearLayout;

.field private llInstagram:Landroid/widget/LinearLayout;

.field private llJiaoguan12123:Landroid/widget/LinearLayout;

.field private llJingdong:Landroid/widget/LinearLayout;

.field private llKakao:Landroid/widget/LinearLayout;

.field private llKeepHealth:Landroid/widget/LinearLayout;

.field private llKuaishou:Landroid/widget/LinearLayout;

.field private llKuaishoujisuban:Landroid/widget/LinearLayout;

.field private llLine:Landroid/widget/LinearLayout;

.field private llLinked:Landroid/widget/LinearLayout;

.field private llMaimai:Landroid/widget/LinearLayout;

.field private llMeituan:Landroid/widget/LinearLayout;

.field private llMeiyou:Landroid/widget/LinearLayout;

.field private llMessage:Landroid/widget/LinearLayout;

.field private llMessenger:Landroid/widget/LinearLayout;

.field private llMomo:Landroid/widget/LinearLayout;

.field private llOther:Landroid/widget/LinearLayout;

.field private llPinduoduo:Landroid/widget/LinearLayout;

.field private llQQ:Landroid/widget/LinearLayout;

.field private llQQyouxiang:Landroid/widget/LinearLayout;

.field private llQiyeweixin:Landroid/widget/LinearLayout;

.field private llQunaerlvxing:Landroid/widget/LinearLayout;

.field private llRili:Landroid/widget/LinearLayout;

.field private llSkype:Landroid/widget/LinearLayout;

.field private llSoul:Landroid/widget/LinearLayout;

.field private llTantan:Landroid/widget/LinearLayout;

.field private llTaobao:Landroid/widget/LinearLayout;

.field private llTelegram:Landroid/widget/LinearLayout;

.field private llTengxunditu:Landroid/widget/LinearLayout;

.field private llTengxunhuiyi:Landroid/widget/LinearLayout;

.field private llTielu12306:Landroid/widget/LinearLayout;

.field private llTongchenglvxing:Landroid/widget/LinearLayout;

.field private llTwitter:Landroid/widget/LinearLayout;

.field private llVK:Landroid/widget/LinearLayout;

.field private llViber:Landroid/widget/LinearLayout;

.field private llWangyiyouxiangdashi:Landroid/widget/LinearLayout;

.field private llWangzherongyao:Landroid/widget/LinearLayout;

.field private llWeChat:Landroid/widget/LinearLayout;

.field private llWeibo:Landroid/widget/LinearLayout;

.field private llWhatsApp:Landroid/widget/LinearLayout;

.field private llXianyu:Landroid/widget/LinearLayout;

.field private llXiaohongshu:Landroid/widget/LinearLayout;

.field private llXiechenglvxing:Landroid/widget/LinearLayout;

.field private llZhifubao:Landroid/widget/LinearLayout;

.field private llZhihu:Landroid/widget/LinearLayout;

.field private llZhixinghuochepiao:Landroid/widget/LinearLayout;

.field private llZoom:Landroid/widget/LinearLayout;

.field private mDialog:Landroid/app/Dialog;

.field private mDialog2:Landroid/app/Dialog;

.field private permissionsCall:[Ljava/lang/String;

.field private permissionsCon:[Ljava/lang/String;

.field private permissionsMsg:[Ljava/lang/String;

.field private receivePhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 61
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 1295
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_SMS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsMsg:[Ljava/lang/String;

    .line 1296
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)[Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsMsg:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)[Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)[Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestNotice()V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)Landroid/app/Dialog;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/device/activity/NoticeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->had_set:Ljava/lang/String;

    return-object p0
.end method

.method private isNotificationEnabled()Z
    .registers 3

    .line 1353
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1354
    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1356
    const-class v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private requestMsg()V
    .registers 9

    .line 1180
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsMsg:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_47

    aget-object v3, v0, v2

    .line 1181
    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 1182
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1183
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    move-object v2, p0

    .line 1182
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_47

    .line 1194
    :cond_41
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->finish()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_47
    :goto_47
    return-void
.end method

.method private requestNotice()V
    .registers 9

    .line 1200
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->isNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1201
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10075c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100768

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/activity/NoticeActivity$4;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/keephealth/android/util/DialogHelperNew;->showNoticeOpenDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_9c

    .line 1215
    :cond_33
    invoke-static {p0}, Lcom/keephealth/android/util/NotificationUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 1216
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog2:Landroid/app/Dialog;

    if-nez v0, :cond_70

    .line 1217
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10046b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1218
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda74;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda74;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda75;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda75;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    move-object v2, p0

    .line 1217
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog2:Landroid/app/Dialog;

    goto :goto_73

    .line 1236
    :cond_70
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1240
    :cond_73
    :goto_73
    :try_start_73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->callHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9c

    .line 1241
    new-instance v0, Lcom/keephealth/android/sevice/AssistWorkManager;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->callHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/AssistWorkManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->assistCallPhoning:Lcom/keephealth/android/sevice/AssistWorkManager;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_86} :catch_87

    goto :goto_9c

    :catch_87
    move-exception v0

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "e1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hfgffr2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    :goto_9c
    return-void
.end method

.method private setNoticeOpen()V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x16

    .line 1116
    :goto_3
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itemToggleLayouts:[Lcom/keephealth/android/views/ItemToggleLayout;

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 1117
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_14
    if-eqz v0, :cond_24

    .line 1122
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {v1, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNoticeNew(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    goto :goto_31

    .line 1124
    :cond_24
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {v1, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_31
    return-void
.end method

.method private setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/ItemToggleLayout;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1129
    new-instance v0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda76;

    invoke-direct {v0, p0, p2}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda76;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c006d

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 2

    .line 1139
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 1140
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    return-void
.end method

.method public initView()V
    .registers 12

    const v0, 0x7f090274

    .line 220
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itNoNotice:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090270

    .line 221
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090252

    .line 222
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090277

    .line 223
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09025f

    .line 224
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09028c

    .line 225
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09026b

    .line 226
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09027d

    .line 227
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090263

    .line 228
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090287

    .line 229
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09026a

    .line 230
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09028e

    .line 231
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090288

    .line 232
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090271

    .line 233
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09025e

    .line 234
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09038b

    .line 236
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMessage:Landroid/widget/LinearLayout;

    const v0, 0x7f090360

    .line 237
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llCall:Landroid/widget/LinearLayout;

    const v0, 0x7f090370

    .line 238
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llEmail:Landroid/widget/LinearLayout;

    const v0, 0x7f090397

    .line 239
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQQ:Landroid/widget/LinearLayout;

    const v0, 0x7f090371

    .line 240
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llFacebook:Landroid/widget/LinearLayout;

    const v0, 0x7f0903b6

    .line 241
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWeChat:Landroid/widget/LinearLayout;

    const v0, 0x7f0903ae

    .line 242
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTwitter:Landroid/widget/LinearLayout;

    const v0, 0x7f0903b8

    .line 243
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWhatsApp:Landroid/widget/LinearLayout;

    const v0, 0x7f09037a

    .line 244
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llInstagram:Landroid/widget/LinearLayout;

    const v0, 0x7f090384

    .line 245
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llLinked:Landroid/widget/LinearLayout;

    const v0, 0x7f09038c

    .line 246
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMessenger:Landroid/widget/LinearLayout;

    const v0, 0x7f09039e

    .line 247
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llSkype:Landroid/widget/LinearLayout;

    const v0, 0x7f090383

    .line 248
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llLine:Landroid/widget/LinearLayout;

    const v0, 0x7f0903af

    .line 249
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llVK:Landroid/widget/LinearLayout;

    const v0, 0x7f090275

    .line 251
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090394

    .line 252
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llOther:Landroid/widget/LinearLayout;

    const v0, 0x7f09037d

    .line 253
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKakao:Landroid/widget/LinearLayout;

    const v0, 0x7f090266

    .line 254
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903b0

    .line 255
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llViber:Landroid/widget/LinearLayout;

    const v0, 0x7f090289

    .line 256
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903a8

    .line 257
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTelegram:Landroid/widget/LinearLayout;

    const v0, 0x7f090282

    .line 258
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0900a8

    .line 259
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->btnNext:Landroid/widget/Button;

    const v0, 0x7f090330

    .line 260
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->lin_compli:Landroid/widget/LinearLayout;

    const v0, 0x7f0903b7

    .line 261
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWeibo:Landroid/widget/LinearLayout;

    const v0, 0x7f09028d

    .line 262
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWeibo:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09036a

    .line 263
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDingding:Landroid/widget/LinearLayout;

    const v0, 0x7f090257

    .line 264
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDingding:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09036c

    .line 265
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDouyin:Landroid/widget/LinearLayout;

    const v0, 0x7f09025b

    .line 266
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouyin:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09037f

    .line 267
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKuaishou:Landroid/widget/LinearLayout;

    const v0, 0x7f090268

    .line 268
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKuaishou:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09036d

    .line 269
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDouyinjisuban:Landroid/widget/LinearLayout;

    const v0, 0x7f09025c

    .line 270
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouyinjisuban:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903ba

    .line 271
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llXiaohongshu:Landroid/widget/LinearLayout;

    const v0, 0x7f090290

    .line 272
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXiaohongshu:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090388

    .line 273
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMeituan:Landroid/widget/LinearLayout;

    const v0, 0x7f09026d

    .line 274
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMeituan:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903bc

    .line 275
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZhifubao:Landroid/widget/LinearLayout;

    const v0, 0x7f090292

    .line 276
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhifubao:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090365

    .line 277
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDazongdianping:Landroid/widget/LinearLayout;

    const v0, 0x7f090253

    .line 278
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDazongdianping:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09038e

    .line 279
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMomo:Landroid/widget/LinearLayout;

    const v0, 0x7f090272

    .line 280
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMomo:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09035c

    .line 281
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBilibili:Landroid/widget/LinearLayout;

    const v0, 0x7f09024f

    .line 282
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBilibili:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09035d

    .line 283
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBosszhipin:Landroid/widget/LinearLayout;

    const v0, 0x7f090250

    .line 284
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBosszhipin:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090398

    .line 285
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQQyouxiang:Landroid/widget/LinearLayout;

    const v0, 0x7f090278

    .line 286
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQQyouxiang:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903a1

    .line 287
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llSoul:Landroid/widget/LinearLayout;

    const v0, 0x7f09027e

    .line 288
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itSoul:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903bf

    .line 289
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZoom:Landroid/widget/LinearLayout;

    const v0, 0x7f090295

    .line 290
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZoom:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09035b

    .line 291
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBaidutieba:Landroid/widget/LinearLayout;

    const v0, 0x7f09024e

    .line 292
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBaidutieba:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09036b

    .line 293
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDouban:Landroid/widget/LinearLayout;

    const v0, 0x7f09025a

    .line 294
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouban:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09036f

    .line 295
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llEleme:Landroid/widget/LinearLayout;

    const v0, 0x7f09025d

    .line 296
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itEleme:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090374

    .line 297
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llGaodeditu:Landroid/widget/LinearLayout;

    const v0, 0x7f090261

    .line 298
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itGaodeditu:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09037c

    .line 299
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llJingdong:Landroid/widget/LinearLayout;

    const v0, 0x7f090265

    .line 300
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itJingdong:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090380

    .line 301
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKuaishoujisuban:Landroid/widget/LinearLayout;

    const v0, 0x7f090269

    .line 302
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKuaishoujisuban:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090387

    .line 303
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMaimai:Landroid/widget/LinearLayout;

    const v0, 0x7f09026c

    .line 304
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMaimai:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090396

    .line 305
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llPinduoduo:Landroid/widget/LinearLayout;

    const v0, 0x7f090276

    .line 306
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itPinduoduo:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090399

    .line 307
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQiyeweixin:Landroid/widget/LinearLayout;

    const v0, 0x7f090279

    .line 308
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQiyeweixin:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09039d

    .line 309
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llRili:Landroid/widget/LinearLayout;

    const v0, 0x7f09027b

    .line 310
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itRili:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903a5

    .line 311
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTantan:Landroid/widget/LinearLayout;

    const v0, 0x7f090280

    .line 312
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTantan:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903a6

    .line 313
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTaobao:Landroid/widget/LinearLayout;

    const v0, 0x7f090281

    .line 314
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTaobao:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903ab

    .line 315
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTielu12306:Landroid/widget/LinearLayout;

    const v0, 0x7f090285

    .line 316
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTielu12306:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903b9

    .line 317
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llXianyu:Landroid/widget/LinearLayout;

    const v0, 0x7f09028f

    .line 318
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXianyu:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903bd

    .line 319
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZhihu:Landroid/widget/LinearLayout;

    const v0, 0x7f090293

    .line 320
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhihu:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090359

    .line 321
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llAlibaba:Landroid/widget/LinearLayout;

    const v0, 0x7f09024c

    .line 322
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itAlibaba:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090369

    .line 323
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDidichuxing:Landroid/widget/LinearLayout;

    const v0, 0x7f090256

    .line 324
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDidichuxing:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090389

    .line 325
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMeiyou:Landroid/widget/LinearLayout;

    const v0, 0x7f09026e

    .line 326
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMeiyou:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09037b

    .line 327
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llJiaoguan12123:Landroid/widget/LinearLayout;

    const v0, 0x7f090264

    .line 328
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itJiaoguan12123:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090366

    .line 329
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDewu:Landroid/widget/LinearLayout;

    const v0, 0x7f090254

    .line 330
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDewu:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903b4

    .line 331
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWangyiyouxiangdashi:Landroid/widget/LinearLayout;

    const v0, 0x7f09028a

    .line 332
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWangyiyouxiangdashi:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903b5

    .line 333
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWangzherongyao:Landroid/widget/LinearLayout;

    const v0, 0x7f09028b

    .line 334
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWangzherongyao:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903aa

    .line 335
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTengxunhuiyi:Landroid/widget/LinearLayout;

    const v0, 0x7f090284

    .line 336
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTengxunhuiyi:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09039a

    .line 337
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQunaerlvxing:Landroid/widget/LinearLayout;

    const v0, 0x7f09027a

    .line 338
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQunaerlvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903bb

    .line 339
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llXiechenglvxing:Landroid/widget/LinearLayout;

    const v0, 0x7f090291

    .line 340
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXiechenglvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903ad

    .line 341
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTongchenglvxing:Landroid/widget/LinearLayout;

    const v0, 0x7f090286

    .line 342
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTongchenglvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090372

    .line 343
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llFeizhulvxing:Landroid/widget/LinearLayout;

    const v0, 0x7f090260

    .line 344
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itFeizhulvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903be

    .line 345
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZhixinghuochepiao:Landroid/widget/LinearLayout;

    const v0, 0x7f090294

    .line 346
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhixinghuochepiao:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09035a

    .line 347
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBaiduditu:Landroid/widget/LinearLayout;

    const v0, 0x7f09024d

    .line 348
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBaiduditu:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0903a9

    .line 349
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTengxunditu:Landroid/widget/LinearLayout;

    const v0, 0x7f090283

    .line 350
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTengxunditu:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090376

    .line 351
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llHaluo:Landroid/widget/LinearLayout;

    const v0, 0x7f090262

    .line 352
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itHaluo:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090368

    .line 353
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDidachuxing:Landroid/widget/LinearLayout;

    const v0, 0x7f090255

    .line 354
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDidachuxing:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f09037e

    .line 355
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKeepHealth:Landroid/widget/LinearLayout;

    const v0, 0x7f090267

    .line 356
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKeepHealth:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090375

    .line 357
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llGuonei:Landroid/widget/LinearLayout;

    const/16 v0, 0x42

    .line 359
    new-array v0, v0, [Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v7, v0, v1

    const/4 v1, 0x6

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v7, v0, v1

    const/4 v1, 0x7

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v7, v0, v1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    const/16 v7, 0x8

    aput-object v1, v0, v7

    const/16 v1, 0x9

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0xa

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0xb

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0xc

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0xd

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0xe

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0xf

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0x10

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0x11

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKeepHealth:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0x12

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0x13

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWeibo:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0x14

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDingding:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0x15

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itRili:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0x16

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouyin:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0x17

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKuaishou:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0x18

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouyinjisuban:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    const/16 v1, 0x19

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXiaohongshu:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v8, v0, v1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMeituan:Lcom/keephealth/android/views/ItemToggleLayout;

    const/16 v8, 0x1a

    aput-object v1, v0, v8

    const/16 v1, 0x1b

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhifubao:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x1c

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDazongdianping:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x1d

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMomo:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x1e

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBilibili:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x1f

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBosszhipin:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x20

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQQyouxiang:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x21

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itSoul:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x22

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZoom:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x23

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBaidutieba:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x24

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouban:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x25

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itEleme:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x26

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itGaodeditu:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x27

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itJingdong:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x28

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKuaishoujisuban:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x29

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMaimai:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x2a

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itPinduoduo:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x2b

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQiyeweixin:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x2c

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTantan:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x2d

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTaobao:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x2e

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTielu12306:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x2f

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXianyu:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x30

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhihu:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x31

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itAlibaba:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x32

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDidichuxing:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x33

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMeiyou:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x34

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itJiaoguan12123:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x35

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDewu:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x36

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWangyiyouxiangdashi:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x37

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWangzherongyao:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x38

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTengxunhuiyi:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x39

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQunaerlvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x3a

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXiechenglvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x3b

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTongchenglvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x3c

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itFeizhulvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x3d

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhixinghuochepiao:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x3e

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBaiduditu:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x3f

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTengxunditu:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x40

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itHaluo:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    const/16 v1, 0x41

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDidachuxing:Lcom/keephealth/android/views/ItemToggleLayout;

    aput-object v9, v0, v1

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itemToggleLayouts:[Lcom/keephealth/android/views/ItemToggleLayout;

    .line 428
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f100746

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->handler:Landroid/os/Handler;

    .line 430
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->callHandler:Landroid/os/Handler;

    .line 431
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "receivePhone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->receivePhone:Ljava/lang/String;

    .line 432
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "comeClass"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->comeClass:Ljava/lang/String;

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b6

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->comeClass:Ljava/lang/String;

    const-string v1, "deviceFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b6

    .line 434
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->lin_compli:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7bb

    .line 436
    :cond_7b6
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->lin_compli:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    :goto_7bb
    invoke-static {p0, v5}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    .line 440
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_c2a

    .line 442
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSms()Z

    move-result v1

    if-eqz v1, :cond_7d3

    .line 443
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7d8

    .line 445
    :cond_7d3
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 447
    :goto_7d8
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_7e4

    .line 448
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llCall:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7e9

    .line 450
    :cond_7e4
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llCall:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    :goto_7e9
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isEmail()Z

    move-result v1

    if-eqz v1, :cond_7f5

    .line 453
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llEmail:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7fa

    .line 455
    :cond_7f5
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llEmail:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 457
    :goto_7fa
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isQq()Z

    move-result v1

    if-eqz v1, :cond_806

    .line 458
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_80b

    .line 460
    :cond_806
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    :goto_80b
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isFacebook()Z

    move-result v1

    if-eqz v1, :cond_817

    .line 463
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llFacebook:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_81c

    .line 465
    :cond_817
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llFacebook:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    :goto_81c
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWechat()Z

    move-result v1

    if-eqz v1, :cond_828

    .line 468
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWeChat:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_82d

    .line 470
    :cond_828
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWeChat:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 472
    :goto_82d
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTwitter()Z

    move-result v1

    if-eqz v1, :cond_839

    .line 473
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTwitter:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_83e

    .line 475
    :cond_839
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTwitter:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    :goto_83e
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWhatsapp()Z

    move-result v1

    if-eqz v1, :cond_84a

    .line 478
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWhatsApp:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_84f

    .line 480
    :cond_84a
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWhatsApp:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    :goto_84f
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isInstagram()Z

    move-result v1

    if-eqz v1, :cond_85b

    .line 483
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llInstagram:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_860

    .line 485
    :cond_85b
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llInstagram:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    :goto_860
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isLinkedin()Z

    move-result v1

    if-eqz v1, :cond_86c

    .line 488
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llLinked:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_871

    .line 490
    :cond_86c
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llLinked:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    :goto_871
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessenger()Z

    move-result v1

    if-eqz v1, :cond_87d

    .line 493
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMessenger:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_882

    .line 495
    :cond_87d
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMessenger:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    :goto_882
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSkype()Z

    move-result v1

    if-eqz v1, :cond_88e

    .line 498
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llSkype:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_893

    .line 500
    :cond_88e
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llSkype:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    :goto_893
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isLine()Z

    move-result v1

    if-eqz v1, :cond_89f

    .line 503
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llLine:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8a4

    .line 505
    :cond_89f
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llLine:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    :goto_8a4
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isVk()Z

    move-result v1

    if-eqz v1, :cond_8b0

    .line 508
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llVK:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8b5

    .line 510
    :cond_8b0
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llVK:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    :goto_8b5
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isKakaotalk()Z

    move-result v1

    if-eqz v1, :cond_8c1

    .line 513
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKakao:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8c6

    .line 515
    :cond_8c1
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKakao:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    :goto_8c6
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isViber()Z

    move-result v1

    if-eqz v1, :cond_8d2

    .line 518
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llViber:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8d7

    .line 520
    :cond_8d2
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llViber:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    :goto_8d7
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTelegram()Z

    move-result v1

    if-eqz v1, :cond_8e3

    .line 523
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTelegram:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8e8

    .line 525
    :cond_8e3
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTelegram:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    :goto_8e8
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeibo()Z

    move-result v1

    if-eqz v1, :cond_8f4

    .line 528
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWeibo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8f9

    .line 530
    :cond_8f4
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWeibo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    :goto_8f9
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDingding()Z

    move-result v1

    if-eqz v1, :cond_905

    .line 533
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDingding:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_90a

    .line 535
    :cond_905
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDingding:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    :goto_90a
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDouyin()Z

    move-result v1

    if-eqz v1, :cond_916

    .line 538
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDouyin:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_91b

    .line 540
    :cond_916
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDouyin:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 542
    :goto_91b
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isKuaishou()Z

    move-result v1

    if-eqz v1, :cond_927

    .line 543
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKuaishou:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_92c

    .line 545
    :cond_927
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKuaishou:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 547
    :goto_92c
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDouyinQuick()Z

    move-result v1

    if-eqz v1, :cond_938

    .line 548
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDouyinjisuban:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_93d

    .line 550
    :cond_938
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDouyinjisuban:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    :goto_93d
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isXiaohongshu()Z

    move-result v1

    if-eqz v1, :cond_949

    .line 553
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llXiaohongshu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_94e

    .line 555
    :cond_949
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llXiaohongshu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    :goto_94e
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isMeituan()Z

    move-result v1

    if-eqz v1, :cond_95a

    .line 558
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMeituan:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_95f

    .line 560
    :cond_95a
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMeituan:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    :goto_95f
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isAlipay()Z

    move-result v1

    if-eqz v1, :cond_96b

    .line 563
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZhifubao:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_970

    .line 565
    :cond_96b
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZhifubao:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 567
    :goto_970
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDianping()Z

    move-result v1

    if-eqz v1, :cond_97c

    .line 568
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDazongdianping:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_981

    .line 570
    :cond_97c
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDazongdianping:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    :goto_981
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isMomo()Z

    move-result v1

    if-eqz v1, :cond_98d

    .line 573
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMomo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_992

    .line 575
    :cond_98d
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMomo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 577
    :goto_992
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isBilibili()Z

    move-result v1

    if-eqz v1, :cond_99e

    .line 578
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBilibili:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9a3

    .line 580
    :cond_99e
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBilibili:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 582
    :goto_9a3
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isBoss()Z

    move-result v1

    if-eqz v1, :cond_9af

    .line 583
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBosszhipin:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9b4

    .line 585
    :cond_9af
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBosszhipin:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 587
    :goto_9b4
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isQqEmail()Z

    move-result v1

    if-eqz v1, :cond_9c0

    .line 588
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQQyouxiang:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9c5

    .line 590
    :cond_9c0
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQQyouxiang:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 592
    :goto_9c5
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSoul()Z

    move-result v1

    if-eqz v1, :cond_9d1

    .line 593
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llSoul:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9d6

    .line 595
    :cond_9d1
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llSoul:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 597
    :goto_9d6
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isZoom()Z

    move-result v1

    if-eqz v1, :cond_9e2

    .line 598
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZoom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9e7

    .line 600
    :cond_9e2
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZoom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 602
    :goto_9e7
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isBaiduTieBa()Z

    move-result v1

    if-eqz v1, :cond_9f3

    .line 603
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBaidutieba:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9f8

    .line 605
    :cond_9f3
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBaidutieba:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 607
    :goto_9f8
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDouban()Z

    move-result v1

    if-eqz v1, :cond_a04

    .line 608
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDouban:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a09

    .line 610
    :cond_a04
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDouban:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 612
    :goto_a09
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isEle()Z

    move-result v1

    if-eqz v1, :cond_a15

    .line 613
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llEleme:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a1a

    .line 615
    :cond_a15
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llEleme:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 617
    :goto_a1a
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isGaodeMap()Z

    move-result v1

    if-eqz v1, :cond_a26

    .line 618
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llGaodeditu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a2b

    .line 620
    :cond_a26
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llGaodeditu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 622
    :goto_a2b
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isJingdong()Z

    move-result v1

    if-eqz v1, :cond_a37

    .line 623
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llJingdong:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a3c

    .line 625
    :cond_a37
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llJingdong:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 627
    :goto_a3c
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isKuaishouQuick()Z

    move-result v1

    if-eqz v1, :cond_a48

    .line 628
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKuaishoujisuban:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a4d

    .line 630
    :cond_a48
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKuaishoujisuban:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 632
    :goto_a4d
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isMaimai()Z

    move-result v1

    if-eqz v1, :cond_a59

    .line 633
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMaimai:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a5e

    .line 635
    :cond_a59
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMaimai:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    :goto_a5e
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isPinduoduo()Z

    move-result v1

    if-eqz v1, :cond_a6a

    .line 638
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llPinduoduo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a6f

    .line 640
    :cond_a6a
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llPinduoduo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 642
    :goto_a6f
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWorkWechat()Z

    move-result v1

    if-eqz v1, :cond_a7b

    .line 643
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQiyeweixin:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a80

    .line 645
    :cond_a7b
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQiyeweixin:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 647
    :goto_a80
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isCalendar()Z

    move-result v1

    if-eqz v1, :cond_a8c

    .line 648
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llRili:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a91

    .line 650
    :cond_a8c
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llRili:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 652
    :goto_a91
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTantan()Z

    move-result v1

    if-eqz v1, :cond_a9d

    .line 653
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTantan:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_aa2

    .line 655
    :cond_a9d
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTantan:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 657
    :goto_aa2
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTaobao()Z

    move-result v1

    if-eqz v1, :cond_aae

    .line 658
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTaobao:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ab3

    .line 660
    :cond_aae
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTaobao:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 662
    :goto_ab3
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isRailway12306()Z

    move-result v1

    if-eqz v1, :cond_abf

    .line 663
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTielu12306:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ac4

    .line 665
    :cond_abf
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTielu12306:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 667
    :goto_ac4
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isXianyu()Z

    move-result v1

    if-eqz v1, :cond_ad0

    .line 668
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llXianyu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ad5

    .line 670
    :cond_ad0
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llXianyu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 672
    :goto_ad5
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isZhihu()Z

    move-result v1

    if-eqz v1, :cond_ae1

    .line 673
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZhihu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ae6

    .line 675
    :cond_ae1
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZhihu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 677
    :goto_ae6
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isAlibaba()Z

    move-result v1

    if-eqz v1, :cond_af2

    .line 678
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llAlibaba:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_af7

    .line 680
    :cond_af2
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llAlibaba:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 682
    :goto_af7
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDidiTravel()Z

    move-result v1

    if-eqz v1, :cond_b03

    .line 683
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDidichuxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b08

    .line 685
    :cond_b03
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDidichuxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 687
    :goto_b08
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isMeiyou()Z

    move-result v1

    if-eqz v1, :cond_b14

    .line 688
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMeiyou:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b19

    .line 690
    :cond_b14
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llMeiyou:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 692
    :goto_b19
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTraffic12123()Z

    move-result v1

    if-eqz v1, :cond_b25

    .line 693
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llJiaoguan12123:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b2a

    .line 695
    :cond_b25
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llJiaoguan12123:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 697
    :goto_b2a
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDewu()Z

    move-result v1

    if-eqz v1, :cond_b36

    .line 698
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDewu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b3b

    .line 700
    :cond_b36
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDewu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 702
    :goto_b3b
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWangyiEmail()Z

    move-result v1

    if-eqz v1, :cond_b47

    .line 703
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWangyiyouxiangdashi:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b4c

    .line 705
    :cond_b47
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWangyiyouxiangdashi:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 707
    :goto_b4c
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHonorOfKings()Z

    move-result v1

    if-eqz v1, :cond_b58

    .line 708
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWangzherongyao:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b5d

    .line 710
    :cond_b58
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llWangzherongyao:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 712
    :goto_b5d
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTencentMeeting()Z

    move-result v1

    if-eqz v1, :cond_b69

    .line 713
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTengxunhuiyi:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b6e

    .line 715
    :cond_b69
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTengxunhuiyi:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 717
    :goto_b6e
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isQunarTrip()Z

    move-result v1

    if-eqz v1, :cond_b7a

    .line 718
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQunaerlvxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b7f

    .line 720
    :cond_b7a
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llQunaerlvxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 722
    :goto_b7f
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isXiechengTrip()Z

    move-result v1

    if-eqz v1, :cond_b8b

    .line 723
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llXiechenglvxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b90

    .line 725
    :cond_b8b
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llXiechenglvxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 727
    :goto_b90
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTongchengTrip()Z

    move-result v1

    if-eqz v1, :cond_b9c

    .line 728
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTongchenglvxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ba1

    .line 730
    :cond_b9c
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTongchenglvxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 732
    :goto_ba1
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isFeizhuTrip()Z

    move-result v1

    if-eqz v1, :cond_bad

    .line 733
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llFeizhulvxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_bb2

    .line 735
    :cond_bad
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llFeizhulvxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 737
    :goto_bb2
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isZhixingTrainTickets()Z

    move-result v1

    if-eqz v1, :cond_bbe

    .line 738
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZhixinghuochepiao:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_bc3

    .line 740
    :cond_bbe
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llZhixinghuochepiao:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 742
    :goto_bc3
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isBaiduMap()Z

    move-result v1

    if-eqz v1, :cond_bcf

    .line 743
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBaiduditu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_bd4

    .line 745
    :cond_bcf
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llBaiduditu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 747
    :goto_bd4
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTencentMap()Z

    move-result v1

    if-eqz v1, :cond_be0

    .line 748
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTengxunditu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_be5

    .line 750
    :cond_be0
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llTengxunditu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 752
    :goto_be5
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHaluoTravel()Z

    move-result v1

    if-eqz v1, :cond_bf1

    .line 753
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llHaluo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_bf6

    .line 755
    :cond_bf1
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llHaluo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 757
    :goto_bf6
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDidaTravel()Z

    move-result v1

    if-eqz v1, :cond_c02

    .line 758
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDidachuxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c07

    .line 760
    :cond_c02
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llDidachuxing:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 762
    :goto_c07
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isKeepHealth()Z

    move-result v1

    if-eqz v1, :cond_c13

    .line 763
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKeepHealth:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c18

    .line 765
    :cond_c13
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llKeepHealth:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 767
    :goto_c18
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isOtherApp()Z

    move-result v0

    if-eqz v0, :cond_c24

    .line 768
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llOther:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c2f

    .line 770
    :cond_c24
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llOther:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c2f

    .line 773
    :cond_c2a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->llGuonei:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 775
    :goto_c2f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init_appNotice\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {v1, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FFD34"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMessage:Z

    .line 778
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "init_appNotice_isMessage\uff1a"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    .line 780
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itNoNotice:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v9, v9, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    invoke-virtual {v7, v9}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 781
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itNoNotice:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v9, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda66;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda66;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-virtual {v7, v9}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 809
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v7, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 810
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 811
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->qq:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 812
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->facebook:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 813
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->instagram:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 814
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->line:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 815
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->linked:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 816
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->skype:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 817
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->twitter:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 818
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->vk:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 819
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->wechat:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 820
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->whatsApp:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 821
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->messager:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 822
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 823
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->kakao:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 824
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->viber:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 825
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->telegram:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 826
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->otherApp:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 827
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWeibo:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isWeibo:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 828
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDingding:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isDingding:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 829
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouyin:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isDouyin:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 830
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKuaishou:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isKuaishou:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 831
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouyinjisuban:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isDouyinjisuban:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 832
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXiaohongshu:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isXiaohongshu:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 833
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMeituan:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isMeituan:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 834
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhifubao:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isZhifubao:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 835
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDazongdianping:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isDazongdianping:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 836
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMomo:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isMomo:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 837
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBosszhipin:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isBosszhipin:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 838
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQQyouxiang:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isQQyouxiang:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 839
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itSoul:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isSoul:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 840
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZoom:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isZoom:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 841
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBaidutieba:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isBaidutieba:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 842
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouban:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isDouban:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 843
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itEleme:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isEleme:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 844
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itGaodeditu:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isGaodeditu:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 845
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itJingdong:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isJingdong:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 846
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKuaishoujisuban:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isKuaishoujisuban:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 847
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMaimai:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isMaimai:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 848
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itPinduoduo:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isPinduoduo:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 849
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQiyeweixin:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isQiyeweixin:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 850
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itRili:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isRili:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 851
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTantan:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isTantan:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 852
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTaobao:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isTaobao:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 853
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTielu12306:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isTielu12306:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 854
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXianyu:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isXianyu:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 855
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhihu:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isZhihu:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 856
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itAlibaba:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isAlibaba:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 857
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDidichuxing:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isDidichuxing:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 858
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMeiyou:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isMeiyou:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 859
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itJiaoguan12123:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isJiaoguan12123:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 860
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDewu:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isDewu:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 861
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWangyiyouxiangdashi:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isWangyiyouxiangdashi:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 862
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWangzherongyao:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isWangzherongyao:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 863
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTengxunhuiyi:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isTengxunhuiyi:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 864
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQunaerlvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isQunaerlvxing:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 865
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXiechenglvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isXiechenglvxing:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 866
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTongchenglvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isTongchenglvxing:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 867
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itFeizhulvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isFeizhulvxing:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 868
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhixinghuochepiao:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isZhixinghuochepiao:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 869
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBaiduditu:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isBaiduditu:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 870
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTengxunditu:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isTengxunditu:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 871
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itHaluo:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isHaluo:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 872
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBilibili:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isBilibili:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 873
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDidachuxing:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isDidachuxing:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 874
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKeepHealth:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v7, v7, Lcom/keephealth/android/model/bean/AppNotice;->isKeepHealth:Z

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 877
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v7, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 882
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 883
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda20;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 889
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda32;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 890
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda45;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 891
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda57;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda57;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 892
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda69;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda69;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 893
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda71;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda71;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 894
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda72;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda72;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 895
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda73;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda73;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 896
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda77;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda77;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 897
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda78;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda78;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 898
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda79;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda79;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 899
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 900
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 901
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 902
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 903
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 904
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 905
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWeibo:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 906
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDingding:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 907
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouyin:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 908
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKuaishou:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 909
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouyinjisuban:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda13;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 910
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXiaohongshu:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda14;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 911
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMeituan:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda15;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 912
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhifubao:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda16;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 913
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDazongdianping:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda17;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 914
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMomo:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda18;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 915
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBilibili:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda19;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 916
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBosszhipin:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda21;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 917
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQQyouxiang:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda23;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 918
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itSoul:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda24;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 919
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZoom:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda25;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 920
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBaidutieba:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda26;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 921
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDouban:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda27;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 922
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itEleme:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda28;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 923
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itGaodeditu:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda29;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 924
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itJingdong:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda30;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 925
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKuaishoujisuban:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda31;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 926
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMaimai:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda34;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 927
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itPinduoduo:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda35;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 928
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQiyeweixin:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda36;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 929
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itRili:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda37;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 930
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTantan:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda38;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 931
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTaobao:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda39;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 932
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTielu12306:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda40;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 933
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXianyu:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda41;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 934
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhihu:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda42;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 935
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itAlibaba:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda43;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 936
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDidichuxing:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda46;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 937
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itMeiyou:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda47;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 938
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itJiaoguan12123:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda48;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 939
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDewu:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda49;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 940
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWangyiyouxiangdashi:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda50;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 941
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itWangzherongyao:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda51;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 942
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTengxunhuiyi:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda52;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 943
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itQunaerlvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda53;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 944
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itXiechenglvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda54;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 945
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTongchenglvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda56;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda56;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 946
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itFeizhulvxing:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda58;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 947
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itZhixinghuochepiao:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda59;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 948
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itBaiduditu:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda60;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 949
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itTengxunditu:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda61;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda61;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 950
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itHaluo:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda62;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda62;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 951
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itDidachuxing:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda63;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda63;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 952
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itKeepHealth:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda64;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda64;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout;Ljava/util/function/Consumer;)V

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config.isDisturbMode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gff333"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    if-eqz v0, :cond_1193

    .line 957
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itemToggleLayouts:[Lcom/keephealth/android/views/ItemToggleLayout;

    array-length v1, v0

    move v7, v2

    :goto_1186
    if-ge v7, v1, :cond_11a4

    aget-object v9, v0, v7

    const v10, 0x7f0d0328

    .line 958
    invoke-virtual {v9, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1186

    .line 961
    :cond_1193
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itemToggleLayouts:[Lcom/keephealth/android/views/ItemToggleLayout;

    array-length v1, v0

    move v7, v2

    :goto_1197
    if-ge v7, v1, :cond_11a4

    aget-object v9, v0, v7

    const v10, 0x7f0d0329

    .line 962
    invoke-virtual {v9, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1197

    .line 965
    :cond_11a4
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itemToggleLayouts:[Lcom/keephealth/android/views/ItemToggleLayout;

    array-length v1, v0

    move v7, v2

    :goto_11a8
    if-ge v7, v1, :cond_11b7

    aget-object v9, v0, v7

    .line 966
    new-instance v10, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda65;

    invoke-direct {v10, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda65;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-virtual {v9, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_11a8

    .line 969
    :cond_11b7
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_11c0

    goto :goto_11c7

    .line 971
    :cond_11c0
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-static {p0, v1, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 979
    :goto_11c7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, "android.permission.READ_CALL_LOG"

    if-lt v1, v8, :cond_11de

    .line 980
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v2

    aput-object v7, v1, v3

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    aput-object v0, v1, v4

    const-string v0, "android.permission.CALL_PHONE"

    aput-object v0, v1, v5

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;

    goto :goto_11e6

    .line 982
    :cond_11de
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v2

    aput-object v7, v1, v3

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;

    .line 984
    :goto_11e6
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1218

    .line 989
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/NoticeActivity$1;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda67;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda67;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    .line 988
    const-string v3, ""

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_128b

    .line 1016
    :cond_1218
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->isNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_124b

    .line 1017
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10075c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100768

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/keephealth/android/util/DialogHelperNew;->showNoticeOpenDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_128b

    .line 1031
    :cond_124b
    invoke-static {p0}, Lcom/keephealth/android/util/NotificationUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_128b

    .line 1032
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1288

    .line 1033
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10046b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1034
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda68;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda68;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda70;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda70;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    move-object v2, p0

    .line 1033
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_128b

    .line 1052
    :cond_1288
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1058
    :cond_128b
    :goto_128b
    const-string v0, "had_set"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->had_set:Ljava/lang/String;

    .line 1059
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->btnNext:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-NoticeActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 15

    .line 782
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 783
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 784
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v3, p1, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 785
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v0, p1, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 786
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v1, p1, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 787
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v2, p1, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 788
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v4, p1, Lcom/keephealth/android/model/bean/DeviceState;->unit:I

    .line 789
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 v5, p1, 0x1

    .line 790
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v6, p1, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 791
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v7, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 792
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v8, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 793
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v9, p1, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 794
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v10

    .line 796
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v11

    .line 795
    invoke-static/range {v0 .. v11}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceState(IIIIIIIIIIII)[B

    move-result-object p1

    .line 797
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 798
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isSwitchOn\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itemToggleLayouts:[Lcom/keephealth/android/views/ItemToggleLayout;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FFD34"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    if-eqz p2, :cond_92

    .line 800
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itemToggleLayouts:[Lcom/keephealth/android/views/ItemToggleLayout;

    array-length v0, p2

    :goto_85
    if-ge p1, v0, :cond_a2

    aget-object v1, p2, p1

    const v2, 0x7f0d0328

    .line 801
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_85

    .line 804
    :cond_92
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->itemToggleLayouts:[Lcom/keephealth/android/views/ItemToggleLayout;

    array-length v0, p2

    :goto_95
    if-ge p1, v0, :cond_a2

    aget-object v1, p2, p1

    const v2, 0x7f0d0329

    .line 805
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_95

    :cond_a2
    return-void
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-device-activity-NoticeActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 878
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMessage:Z

    .line 879
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 880
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setNoticeOpen()V

    return-void
.end method

.method synthetic lambda$initView$10$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 896
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->twitter:Z

    return-void
.end method

.method synthetic lambda$initView$11$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 897
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->vk:Z

    return-void
.end method

.method synthetic lambda$initView$12$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 898
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->wechat:Z

    return-void
.end method

.method synthetic lambda$initView$13$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 899
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->messager:Z

    return-void
.end method

.method synthetic lambda$initView$14$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 900
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    return-void
.end method

.method synthetic lambda$initView$15$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 901
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->kakao:Z

    return-void
.end method

.method synthetic lambda$initView$16$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 902
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->viber:Z

    return-void
.end method

.method synthetic lambda$initView$17$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 903
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->telegram:Z

    return-void
.end method

.method synthetic lambda$initView$18$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 904
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->otherApp:Z

    return-void
.end method

.method synthetic lambda$initView$19$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 905
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isWeibo:Z

    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-device-activity-NoticeActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 884
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    .line 885
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 886
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setNoticeOpen()V

    return-void
.end method

.method synthetic lambda$initView$20$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 906
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDingding:Z

    return-void
.end method

.method synthetic lambda$initView$21$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 907
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDouyin:Z

    return-void
.end method

.method synthetic lambda$initView$22$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 908
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isKuaishou:Z

    return-void
.end method

.method synthetic lambda$initView$23$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 909
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDouyinjisuban:Z

    return-void
.end method

.method synthetic lambda$initView$24$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 910
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isXiaohongshu:Z

    return-void
.end method

.method synthetic lambda$initView$25$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 911
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isMeituan:Z

    return-void
.end method

.method synthetic lambda$initView$26$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 912
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isZhifubao:Z

    return-void
.end method

.method synthetic lambda$initView$27$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 913
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDazongdianping:Z

    return-void
.end method

.method synthetic lambda$initView$28$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 914
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isMomo:Z

    return-void
.end method

.method synthetic lambda$initView$29$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 915
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isBilibili:Z

    return-void
.end method

.method synthetic lambda$initView$3$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 889
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->whatsApp:Z

    return-void
.end method

.method synthetic lambda$initView$30$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 916
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isBosszhipin:Z

    return-void
.end method

.method synthetic lambda$initView$31$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 917
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isQQyouxiang:Z

    return-void
.end method

.method synthetic lambda$initView$32$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 918
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isSoul:Z

    return-void
.end method

.method synthetic lambda$initView$33$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 919
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isZoom:Z

    return-void
.end method

.method synthetic lambda$initView$34$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 920
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isBaidutieba:Z

    return-void
.end method

.method synthetic lambda$initView$35$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 921
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDouban:Z

    return-void
.end method

.method synthetic lambda$initView$36$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 922
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isEleme:Z

    return-void
.end method

.method synthetic lambda$initView$37$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 923
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isGaodeditu:Z

    return-void
.end method

.method synthetic lambda$initView$38$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 924
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isJingdong:Z

    return-void
.end method

.method synthetic lambda$initView$39$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 925
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isKuaishoujisuban:Z

    return-void
.end method

.method synthetic lambda$initView$4$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 890
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->instagram:Z

    return-void
.end method

.method synthetic lambda$initView$40$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 926
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isMaimai:Z

    return-void
.end method

.method synthetic lambda$initView$41$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 927
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isPinduoduo:Z

    return-void
.end method

.method synthetic lambda$initView$42$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 928
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isQiyeweixin:Z

    return-void
.end method

.method synthetic lambda$initView$43$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 929
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isRili:Z

    return-void
.end method

.method synthetic lambda$initView$44$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 930
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTantan:Z

    return-void
.end method

.method synthetic lambda$initView$45$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 931
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTaobao:Z

    return-void
.end method

.method synthetic lambda$initView$46$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 932
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTielu12306:Z

    return-void
.end method

.method synthetic lambda$initView$47$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 933
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isXianyu:Z

    return-void
.end method

.method synthetic lambda$initView$48$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 934
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isZhihu:Z

    return-void
.end method

.method synthetic lambda$initView$49$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 935
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isAlibaba:Z

    return-void
.end method

.method synthetic lambda$initView$5$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 891
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->qq:Z

    return-void
.end method

.method synthetic lambda$initView$50$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 936
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDidichuxing:Z

    return-void
.end method

.method synthetic lambda$initView$51$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 937
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isMeiyou:Z

    return-void
.end method

.method synthetic lambda$initView$52$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 938
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isJiaoguan12123:Z

    return-void
.end method

.method synthetic lambda$initView$53$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 939
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDewu:Z

    return-void
.end method

.method synthetic lambda$initView$54$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 940
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isWangyiyouxiangdashi:Z

    return-void
.end method

.method synthetic lambda$initView$55$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 941
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isWangzherongyao:Z

    return-void
.end method

.method synthetic lambda$initView$56$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 942
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTengxunhuiyi:Z

    return-void
.end method

.method synthetic lambda$initView$57$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 943
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isQunaerlvxing:Z

    return-void
.end method

.method synthetic lambda$initView$58$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 944
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isXiechenglvxing:Z

    return-void
.end method

.method synthetic lambda$initView$59$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 945
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTongchenglvxing:Z

    return-void
.end method

.method synthetic lambda$initView$6$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 892
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->facebook:Z

    return-void
.end method

.method synthetic lambda$initView$60$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 946
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isFeizhulvxing:Z

    return-void
.end method

.method synthetic lambda$initView$61$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 947
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isZhixinghuochepiao:Z

    return-void
.end method

.method synthetic lambda$initView$62$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 948
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isBaiduditu:Z

    return-void
.end method

.method synthetic lambda$initView$63$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 949
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTengxunditu:Z

    return-void
.end method

.method synthetic lambda$initView$64$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 950
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isHaluo:Z

    return-void
.end method

.method synthetic lambda$initView$65$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 951
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDidachuxing:Z

    return-void
.end method

.method synthetic lambda$initView$66$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 952
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isKeepHealth:Z

    return-void
.end method

.method synthetic lambda$initView$67$com-keephealth-android-ui-device-activity-NoticeActivity()Z
    .registers 2

    .line 966
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$68$com-keephealth-android-ui-device-activity-NoticeActivity(Landroid/view/View;)V
    .registers 2

    .line 1007
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1008
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initView$69$com-keephealth-android-ui-device-activity-NoticeActivity(Landroid/view/View;)V
    .registers 5

    .line 1035
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1037
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_24

    const/high16 v0, 0x10000000

    .line 1038
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1039
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3d

    .line 1042
    :cond_24
    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    const-string v0, "app_package"

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "app_uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1046
    :goto_3d
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1047
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$initView$7$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 893
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->line:Z

    return-void
.end method

.method synthetic lambda$initView$70$com-keephealth-android-ui-device-activity-NoticeActivity(Landroid/view/View;)V
    .registers 2

    .line 1049
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$initView$8$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 894
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->linked:Z

    return-void
.end method

.method synthetic lambda$initView$9$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/lang/Boolean;)V
    .registers 3

    .line 895
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/AppNotice;->skype:Z

    return-void
.end method

.method synthetic lambda$requestMsg$72$com-keephealth-android-ui-device-activity-NoticeActivity(Landroid/view/View;)V
    .registers 5

    .line 1184
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1186
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x13

    .line 1187
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestMsg$73$com-keephealth-android-ui-device-activity-NoticeActivity(Landroid/view/View;)V
    .registers 2

    .line 1189
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1190
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$requestNotice$74$com-keephealth-android-ui-device-activity-NoticeActivity(Landroid/view/View;)V
    .registers 5

    .line 1219
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_24

    const/high16 v0, 0x10000000

    .line 1222
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1223
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3d

    .line 1226
    :cond_24
    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
    const-string v0, "app_package"

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1228
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "app_uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1230
    :goto_3d
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1231
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog2:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$requestNotice$75$com-keephealth-android-ui-device-activity-NoticeActivity(Landroid/view/View;)V
    .registers 2

    .line 1233
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog2:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$76$com-keephealth-android-ui-device-activity-NoticeActivity(Landroid/view/View;)V
    .registers 5

    .line 1318
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1320
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x11

    .line 1321
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$77$com-keephealth-android-ui-device-activity-NoticeActivity(Landroid/view/View;)V
    .registers 2

    .line 1323
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1324
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$78$com-keephealth-android-ui-device-activity-NoticeActivity(Landroid/view/View;)V
    .registers 5

    .line 1336
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1338
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x14

    .line 1339
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$79$com-keephealth-android-ui-device-activity-NoticeActivity(Landroid/view/View;)V
    .registers 2

    .line 1341
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1342
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$setOnToggleListener$71$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/util/function/Consumer;Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 4

    .line 1130
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1131
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 1132
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 1133
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setNoticeOpen()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1259
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x12

    if-ne p1, p2, :cond_c

    .line 1261
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestNotice()V

    goto/16 :goto_77

    :cond_c
    const/16 p2, 0x13

    const/16 p3, 0x11

    const/16 v0, 0x14

    if-ne p1, p2, :cond_42

    .line 1263
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsMsg:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 1264
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsMsg:[Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 1266
    :cond_22
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 1267
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, p3, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 1269
    :cond_30
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 1270
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 1272
    :cond_3e
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestNotice()V

    goto :goto_77

    :cond_42
    if-ne p1, p3, :cond_64

    .line 1277
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_52

    .line 1278
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, p3, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 1280
    :cond_52
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 1281
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 1283
    :cond_60
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestNotice()V

    goto :goto_77

    :cond_64
    if-ne p1, v0, :cond_77

    .line 1287
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_74

    .line 1288
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 1290
    :cond_74
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestNotice()V

    :cond_77
    :goto_77
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 1364
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 1365
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 1366
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1368
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog2:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    .line 1369
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 12

    const/16 v0, 0x13

    if-ne p1, v0, :cond_9

    .line 1307
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestMsg()V

    goto/16 :goto_a4

    :cond_9
    const/16 v0, 0x11

    const v1, 0x7f1004a1

    const v2, 0x7f1004a7

    const v3, 0x7f1004a8

    const/4 v4, 0x0

    if-ne p1, v0, :cond_63

    .line 1309
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;

    array-length v0, p1

    :goto_1a
    if-ge v4, v0, :cond_a4

    aget-object v5, p1, v4

    .line 1310
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_2d

    .line 1311
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_60

    .line 1315
    :cond_2d
    invoke-static {p0, v5}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 1316
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1317
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda22;

    invoke-direct {v8, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda22;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    new-instance v9, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda33;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda33;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    move-object v4, p0

    .line 1316
    invoke-static/range {v4 .. v9}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_a4

    .line 1328
    :cond_5d
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->finish()V

    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_63
    const/16 v0, 0x14

    if-ne p1, v0, :cond_a4

    .line 1332
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    array-length v0, p1

    :goto_6a
    if-ge v4, v0, :cond_a4

    aget-object v5, p1, v4

    .line 1333
    invoke-static {p0, v5}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9e

    .line 1334
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1335
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda44;

    invoke-direct {v8, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda44;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    new-instance v9, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda55;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda55;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    move-object v4, p0

    .line 1334
    invoke-static/range {v4 .. v9}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_a4

    .line 1346
    :cond_9e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->finish()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    :cond_a4
    :goto_a4
    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 5

    const/16 v0, 0x11

    const/16 v1, 0x14

    if-eq p1, v0, :cond_31

    const/16 v2, 0x13

    if-eq p1, v2, :cond_11

    if-eq p1, v1, :cond_d

    goto :goto_42

    .line 1174
    :cond_d
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestNotice()V

    goto :goto_42

    .line 1163
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 1164
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_42

    .line 1166
    :cond_1f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 1167
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_42

    .line 1169
    :cond_2d
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestNotice()V

    goto :goto_42

    .line 1156
    :cond_31
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 1157
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_42

    .line 1159
    :cond_3f
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestNotice()V

    :goto_42
    return-void
.end method

.method toSetNoti()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09079c
        }
    .end annotation

    const v0, 0x7f09079c

    const-wide/16 v1, 0x3e8

    .line 1252
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_17
    return-void
.end method
