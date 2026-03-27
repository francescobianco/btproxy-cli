.class public Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "NoticeOldActivity.java"


# static fields
.field public static final CLASS_SMS_MANAGER:Ljava/lang/String; = "com.android.internal.telephony.SmsApplication"

.field public static final METHOD_SET_DEFAULT:Ljava/lang/String; = "setDefaultApplication"

.field private static final REQUEST_CON_PERMISSION:I = 0x14

.field private static final REQUEST_MSG_PERMISSION:I = 0x13

.field private static final REQUEST_NOTICE_PERMISSION_CODE:I = 0x12

.field private static final REQUEST_PHONE_PERMISSION:I = 0x11


# instance fields
.field private appNotice:Lcom/keephealth/android/model/bean/AppNotice;

.field btnNext:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a8
    .end annotation
.end field

.field private config:Lcom/keephealth/android/model/bean/DeviceConfig;

.field itCall:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090252
    .end annotation
.end field

.field itEmial:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025e
    .end annotation
.end field

.field itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025f
    .end annotation
.end field

.field itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090263
    .end annotation
.end field

.field itKakao:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090266
    .end annotation
.end field

.field itLine:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09026a
    .end annotation
.end field

.field itLinked:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09026b
    .end annotation
.end field

.field itMessage:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090270
    .end annotation
.end field

.field itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090271
    .end annotation
.end field

.field itNoNotice:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090274
    .end annotation
.end field

.field itOther:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090275
    .end annotation
.end field

.field itQQ:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090277
    .end annotation
.end field

.field itSkype:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027d
    .end annotation
.end field

.field itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090282
    .end annotation
.end field

.field itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090287
    .end annotation
.end field

.field itVK:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090288
    .end annotation
.end field

.field itViber:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090289
    .end annotation
.end field

.field itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028c
    .end annotation
.end field

.field itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028e
    .end annotation
.end field

.field llCall:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090360
    .end annotation
.end field

.field llEmail:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090370
    .end annotation
.end field

.field llFacebook:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090371
    .end annotation
.end field

.field llInstagram:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09037a
    .end annotation
.end field

.field llKakao:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09037d
    .end annotation
.end field

.field llLine:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090383
    .end annotation
.end field

.field llLinked:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090384
    .end annotation
.end field

.field llMessage:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09038b
    .end annotation
.end field

.field llMessenger:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09038c
    .end annotation
.end field

.field llOther:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090394
    .end annotation
.end field

.field llQQ:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090397
    .end annotation
.end field

.field llSkype:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09039e
    .end annotation
.end field

.field llTelegram:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903a8
    .end annotation
.end field

.field llTwitter:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ae
    .end annotation
.end field

.field llVK:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903af
    .end annotation
.end field

.field llViber:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903b0
    .end annotation
.end field

.field llWeChat:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903b6
    .end annotation
.end field

.field llWhatsApp:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903b8
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private permissionsCall:[Ljava/lang/String;

.field private permissionsCon:[Ljava/lang/String;

.field private permissionsMsg:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 43
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 646
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_SMS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsMsg:[Ljava/lang/String;

    .line 647
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)Landroid/app/Dialog;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)[Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsMsg:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)[Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)[Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestNotice()V

    return-void
.end method

.method private isNotificationEnabled()Z
    .registers 3

    .line 704
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 705
    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 707
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

    .line 560
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsMsg:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_47

    aget-object v3, v0, v2

    .line 561
    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 562
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda32;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda32;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda34;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda34;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    move-object v2, p0

    .line 562
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_47

    .line 574
    :cond_41
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->finish()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_47
    :goto_47
    return-void
.end method

.method private requestNotice()V
    .registers 9

    .line 580
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->isNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_39

    .line 581
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 582
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    move-object v2, p0

    .line 581
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_40

    .line 590
    :cond_39
    const-string v0, "FF332"

    const-string v1, "\u76d1\u542c\u624b\u73af\u5e7f\u64ad..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c006d

    return v0
.end method

.method public initView()V
    .registers 8

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100746

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x27

    .line 139
    invoke-static {p0, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    .line 140
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_153

    .line 142
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSms()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2d

    .line 143
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_32

    .line 145
    :cond_2d
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    :goto_32
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 148
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llCall:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_43

    .line 150
    :cond_3e
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llCall:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    :goto_43
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 153
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llEmail:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_54

    .line 155
    :cond_4f
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llEmail:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    :goto_54
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isQq()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 158
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_65

    .line 160
    :cond_60
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    :goto_65
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isFacebook()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 163
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llFacebook:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_76

    .line 165
    :cond_71
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llFacebook:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    :goto_76
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWechat()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 168
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llWeChat:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_87

    .line 170
    :cond_82
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llWeChat:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    :goto_87
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTwitter()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 173
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llTwitter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_98

    .line 175
    :cond_93
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llTwitter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    :goto_98
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWhatsapp()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 178
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llWhatsApp:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a9

    .line 180
    :cond_a4
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llWhatsApp:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    :goto_a9
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isInstagram()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 183
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llInstagram:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ba

    .line 185
    :cond_b5
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llInstagram:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    :goto_ba
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isLinkedin()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 188
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llLinked:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_cb

    .line 190
    :cond_c6
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llLinked:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    :goto_cb
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessenger()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 193
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llMessenger:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_dc

    .line 195
    :cond_d7
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llMessenger:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    :goto_dc
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSkype()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 198
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llSkype:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ed

    .line 200
    :cond_e8
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llSkype:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    :goto_ed
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isLine()Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 203
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llLine:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_fe

    .line 205
    :cond_f9
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llLine:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    :goto_fe
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isVk()Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 208
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llVK:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10f

    .line 210
    :cond_10a
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llVK:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    :goto_10f
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isKakaotalk()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 213
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llKakao:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_120

    .line 215
    :cond_11b
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llKakao:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    :goto_120
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isViber()Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 218
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llViber:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_131

    .line 220
    :cond_12c
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llViber:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    :goto_131
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTelegram()Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 223
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llTelegram:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_142

    .line 225
    :cond_13d
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llTelegram:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    :goto_142
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isOtherApp()Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llOther:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_153

    .line 230
    :cond_14e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llOther:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    :cond_153
    :goto_153
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMessage:Z

    .line 235
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    .line 236
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itNoNotice:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v4, v4, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 237
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itNoNotice:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v4, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda22;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda22;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 294
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 295
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda16;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 306
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->qq:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->facebook:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->instagram:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 309
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->line:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->linked:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->skype:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 312
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->twitter:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 313
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->vk:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 314
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->wechat:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->whatsApp:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->messager:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 317
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->kakao:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->viber:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 320
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->telegram:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 321
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/AppNotice;->otherApp:Z

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda25;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda26;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 332
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda27;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 337
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda28;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 342
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda29;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 347
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda30;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 352
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda31;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda33;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 362
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda39;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 367
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda40;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda40;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 372
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda41;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda41;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 377
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda42;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 382
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda43;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda43;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 387
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda44;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 392
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 397
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 402
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    if-eqz v0, :cond_326

    .line 403
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f0d0328

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 404
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 405
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 406
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 407
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 408
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 409
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 410
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 411
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 412
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 413
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 414
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 415
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 416
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 417
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 418
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 419
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 420
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    goto :goto_383

    .line 422
    :cond_326
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f0d0329

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 423
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 424
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 425
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 426
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 427
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 428
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 429
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 430
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 431
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 432
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 433
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 434
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 435
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 436
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 437
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 438
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 439
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 441
    :goto_383
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 442
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 443
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 444
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 445
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 446
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 447
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 448
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 449
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda13;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 450
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda14;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 451
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda15;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 452
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda17;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 453
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda18;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 454
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda19;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 455
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda20;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 456
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda21;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 457
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda23;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 458
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda24;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 459
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_441

    goto :goto_448

    .line 461
    :cond_441
    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-static {p0, v2, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 469
    :goto_448
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const-string v5, "android.permission.READ_CALL_LOG"

    const/4 v6, 0x2

    if-lt v2, v4, :cond_464

    const/4 v2, 0x4

    .line 470
    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v1

    aput-object v5, v2, v3

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    aput-object v0, v2, v6

    const/4 v0, 0x3

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v2, v0

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;

    goto :goto_46c

    .line 472
    :cond_464
    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v1

    aput-object v5, v2, v3

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;

    .line 474
    :goto_46c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a0

    .line 475
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10075c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100768

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/keephealth/android/util/DialogHelperNew;->showNoticeOpenDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    .line 519
    :cond_4a0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->btnNext:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 15

    .line 238
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 239
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 240
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v3, p1, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 241
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v0, p1, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v1, p1, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 243
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v2, p1, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 244
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v4, p1, Lcom/keephealth/android/model/bean/DeviceState;->unit:I

    .line 245
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 v5, p1, 0x1

    .line 246
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v6, p1, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 247
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v7, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 248
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v8, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 249
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v9, p1, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 250
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v10

    .line 252
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v11

    .line 251
    invoke-static/range {v0 .. v11}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceState(IIIIIIIIIIII)[B

    move-result-object p1

    .line 253
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    if-eqz p2, :cond_c4

    .line 255
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    const p2, 0x7f0d0328

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 256
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 257
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 258
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 259
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 260
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 261
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 262
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 263
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 264
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 266
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 267
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 268
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 269
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 270
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 271
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 272
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    goto :goto_121

    .line 274
    :cond_c4
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    const p2, 0x7f0d0329

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 275
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 276
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 277
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 278
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 279
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 280
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 281
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 282
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 283
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 284
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 285
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 286
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 287
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 288
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 289
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 290
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    .line 291
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setImageBack(I)V

    :goto_121
    return-void
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 296
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMessage:Z

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 298
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$10$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 358
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->twitter:Z

    .line 359
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 360
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$11$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 363
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->vk:Z

    .line 364
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 365
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$12$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 368
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->wechat:Z

    .line 369
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 370
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$13$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 373
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->messager:Z

    .line 374
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 375
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$14$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 378
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    .line 379
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 380
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$15$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 383
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->kakao:Z

    .line 384
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 385
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$16$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 388
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->viber:Z

    .line 389
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 390
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$17$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 393
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->telegram:Z

    .line 394
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 395
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$18$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 398
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->otherApp:Z

    .line 399
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 400
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$19$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 302
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    .line 303
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 304
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$20$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 442
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$21$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$22$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 444
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$23$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$24$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$25$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$26$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$27$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$28$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$29$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$3$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 323
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->whatsApp:Z

    .line 324
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 325
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$30$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$31$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 453
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$32$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$33$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 455
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$34$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 456
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$35$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$36$com-keephealth-android-ui-device-activity-NoticeOldActivity()Z
    .registers 2

    .line 458
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$initView$4$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 328
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->instagram:Z

    .line 329
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 330
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$5$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 333
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->qq:Z

    .line 334
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 335
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$6$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 338
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->facebook:Z

    .line 339
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 340
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$7$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 343
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->line:Z

    .line 344
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 345
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$8$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 348
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->linked:Z

    .line 349
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 350
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$9$com-keephealth-android-ui-device-activity-NoticeOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 353
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/AppNotice;->skype:Z

    .line 354
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 355
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->appNotice:Lcom/keephealth/android/model/bean/AppNotice;

    invoke-static {p2, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$requestMsg$37$com-keephealth-android-ui-device-activity-NoticeOldActivity(Landroid/view/View;)V
    .registers 5

    .line 564
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 566
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x13

    .line 567
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestMsg$38$com-keephealth-android-ui-device-activity-NoticeOldActivity(Landroid/view/View;)V
    .registers 2

    .line 569
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 570
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->finish()V

    return-void
.end method

.method synthetic lambda$requestNotice$39$com-keephealth-android-ui-device-activity-NoticeOldActivity(Landroid/view/View;)V
    .registers 3

    .line 583
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 584
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$requestNotice$40$com-keephealth-android-ui-device-activity-NoticeOldActivity(Landroid/view/View;)V
    .registers 2

    .line 586
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 587
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->finish()V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$41$com-keephealth-android-ui-device-activity-NoticeOldActivity(Landroid/view/View;)V
    .registers 5

    .line 669
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 671
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x11

    .line 672
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$42$com-keephealth-android-ui-device-activity-NoticeOldActivity(Landroid/view/View;)V
    .registers 2

    .line 674
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 675
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->finish()V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$43$com-keephealth-android-ui-device-activity-NoticeOldActivity(Landroid/view/View;)V
    .registers 5

    .line 687
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 689
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x14

    .line 690
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$44$com-keephealth-android-ui-device-activity-NoticeOldActivity(Landroid/view/View;)V
    .registers 2

    .line 692
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 693
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 610
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x12

    if-ne p1, p2, :cond_c

    .line 612
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestNotice()V

    goto/16 :goto_77

    :cond_c
    const/16 p2, 0x13

    const/16 p3, 0x11

    const/16 v0, 0x14

    if-ne p1, p2, :cond_42

    .line 614
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsMsg:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 615
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsMsg:[Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 617
    :cond_22
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 618
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, p3, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 620
    :cond_30
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 621
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 623
    :cond_3e
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestNotice()V

    goto :goto_77

    :cond_42
    if-ne p1, p3, :cond_64

    .line 628
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_52

    .line 629
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, p3, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 631
    :cond_52
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 632
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 634
    :cond_60
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestNotice()V

    goto :goto_77

    :cond_64
    if-ne p1, v0, :cond_77

    .line 638
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_74

    .line 639
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_77

    .line 641
    :cond_74
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestNotice()V

    :cond_77
    :goto_77
    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 12

    const/16 v0, 0x13

    if-ne p1, v0, :cond_9

    .line 658
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestMsg()V

    goto/16 :goto_a4

    :cond_9
    const/16 v0, 0x11

    const v1, 0x7f1004a1

    const v2, 0x7f1004a7

    const v3, 0x7f1004a8

    const/4 v4, 0x0

    if-ne p1, v0, :cond_63

    .line 660
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;

    array-length v0, p1

    :goto_1a
    if-ge v4, v0, :cond_a4

    aget-object v5, p1, v4

    .line 661
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_2d

    .line 662
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_60

    .line 666
    :cond_2d
    invoke-static {p0, v5}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 667
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 668
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda35;

    invoke-direct {v8, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda35;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    new-instance v9, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda36;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda36;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    move-object v4, p0

    .line 667
    invoke-static/range {v4 .. v9}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_a4

    .line 679
    :cond_5d
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->finish()V

    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_63
    const/16 v0, 0x14

    if-ne p1, v0, :cond_a4

    .line 683
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    array-length v0, p1

    :goto_6a
    if-ge v4, v0, :cond_a4

    aget-object v5, p1, v4

    .line 684
    invoke-static {p0, v5}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9e

    .line 685
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 686
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda37;

    invoke-direct {v8, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda37;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    new-instance v9, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda38;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$$ExternalSyntheticLambda38;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    move-object v4, p0

    .line 685
    invoke-static/range {v4 .. v9}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_a4

    .line 697
    :cond_9e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->finish()V

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

    .line 554
    :cond_d
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestNotice()V

    goto :goto_42

    .line 543
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 544
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_42

    .line 546
    :cond_1f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 547
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_42

    .line 549
    :cond_2d
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestNotice()V

    goto :goto_42

    .line 536
    :cond_31
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 537
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_42

    .line 539
    :cond_3f
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestNotice()V

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

    .line 603
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_17

    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_17
    return-void
.end method
