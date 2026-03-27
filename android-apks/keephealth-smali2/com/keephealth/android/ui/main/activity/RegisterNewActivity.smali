.class public Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "RegisterNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERVAL:J = 0x3e8L

.field private static final TOTAL_TIME:J = 0xea60L


# instance fields
.field private areaCode:Ljava/lang/String;

.field binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private countryCode:Ljava/lang/String;

.field private emailOrPhone:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private psd:Ljava/lang/String;

.field private register:Ljava/lang/String;

.field private three:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userPwd:Ljava/lang/String;

.field viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->areaCode:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->three:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Landroid/app/Dialog;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showNoReceiveDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 74
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->psd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->register:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->areaCode:Ljava/lang/String;

    return-object p0
.end method

.method private initMedal(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 8

    .line 342
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMedalDataDao()Lcom/keephealth/android/greendao/gen/MedalDataDao;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 344
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 346
    :cond_1c
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->setDefalutMedal()Ljava/util/List;

    move-result-object v1

    .line 348
    :cond_22
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMedals()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 349
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_68

    .line 351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/MedalResult;

    .line 352
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/MedalResult;->getMedalNum()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/MedalData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 353
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/MedalResult;->getMedalNum()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/MedalResult;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v4}, Lcom/keephealth/android/util/DateUtil;->parseServerTime(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    goto :goto_32

    .line 356
    :cond_68
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->deleteAll()V

    .line 357
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->insertInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic lambda$setEditTextInhibitInputSpaChat$0(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 6

    .line 196
    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 197
    const-string p0, ""

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$showWebViewDialog$2(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 283
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V
    .registers 5

    .line 195
    new-instance v0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda5;-><init>()V

    const/4 v1, 0x1

    .line 201
    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private showNoReceiveDialog()V
    .registers 14

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_bb

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->areaCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f10054a

    const v2, 0x7f100457

    if-eqz v0, :cond_62

    .line 230
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100327

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10019d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 232
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10019f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10019c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$5;

    invoke-direct {v11, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    new-instance v12, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$6;

    invoke-direct {v12, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$6;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    .line 230
    const-string v9, ""

    move-object v3, p0

    invoke-static/range {v3 .. v12}, Lcom/keephealth/android/util/DialogHelperNew;->showNoReceiveDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_c0

    .line 249
    :cond_62
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1005e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1005e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1005ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 252
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1005eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1005ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$7;

    invoke-direct {v11, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$7;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    new-instance v12, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$8;

    invoke-direct {v12, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$8;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    move-object v3, p0

    .line 249
    invoke-static/range {v3 .. v12}, Lcom/keephealth/android/util/DialogHelperNew;->showNoReceiveDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_c0

    :cond_bb
    if-eqz v0, :cond_c0

    .line 270
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_c0
    :goto_c0
    return-void
.end method

.method private showWebViewDialog()V
    .registers 7

    .line 276
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 277
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f11031e

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0907ed

    .line 278
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    const v3, 0x7f09009a

    .line 279
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09009e

    .line 283
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda7;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 285
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 286
    new-instance v3, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9;

    invoke-direct {v3, p0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 317
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 318
    const-string v5, "CN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b9

    const-string v5, "zh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6b

    goto :goto_b9

    .line 320
    :cond_6b
    const-string v5, "TW"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "HK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7c

    goto :goto_b6

    .line 322
    :cond_7c
    const-string v5, "fr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 323
    const-string v3, "file:///android_asset/privacypolicy_fr.html"

    goto :goto_bb

    .line 324
    :cond_87
    const-string v5, "es"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 325
    const-string v3, "file:///android_asset/privacypolicy_es.html"

    goto :goto_bb

    .line 326
    :cond_92
    const-string v5, "de"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 327
    const-string v3, "file:///android_asset/privacypolicy_de.html"

    goto :goto_bb

    .line 328
    :cond_9d
    const-string v5, "ja"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 329
    const-string v3, "file:///android_asset/privacypolicy_ja.html"

    goto :goto_bb

    .line 330
    :cond_a8
    const-string v5, "it"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 331
    const-string v3, "file:///android_asset/privacypolicy_it.html"

    goto :goto_bb

    .line 333
    :cond_b3
    const-string v3, "file:///android_asset/privacypolicyEh.html"

    goto :goto_bb

    .line 321
    :cond_b6
    :goto_b6
    const-string v3, "file:///android_asset/privacypolicy_tw.html"

    goto :goto_bb

    .line 319
    :cond_b9
    :goto_b9
    const-string v3, "file:///android_asset/privacypolicy.html"

    .line 335
    :goto_bb
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 337
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 338
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startCountdown()V
    .registers 9

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvSmsCode:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvCountDown:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    new-instance v0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$4;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;JJ)V

    .line 224
    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->userBeanData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 409
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 430
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->bindingAccount:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 452
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifyCode:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 478
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvNoGetYan:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$10;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->btnRegiest:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->registerAccount:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 537
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->skipYanzheng:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->imgClean:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$13;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$13;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->imgStatus:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvSmsCode:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    return-object v0
.end method

.method protected initView()V
    .registers 6

    .line 94
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 95
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->toBack()V

    .line 96
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f060163

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 99
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->btnRegiest:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "psd"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->psd:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "emailOrPhone"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "countryCode"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countryCode:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->info:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "areaCode"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->areaCode:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "three"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->three:Ljava/lang/String;

    if-eqz v0, :cond_a4

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->btnRegiest:Landroid/widget/Button;

    const v2, 0x7f1005d8

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_a4
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->areaCode:Ljava/lang/String;

    const-string v2, ""

    if-eqz v0, :cond_b0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 113
    :cond_b0
    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->areaCode:Ljava/lang/String;

    .line 115
    :cond_b2
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_115

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvSendEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/DataVaildUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    const v3, 0x7f1006fe

    if-eqz v0, :cond_f1

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvSendEmail:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n+86 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_115

    .line 120
    :cond_f1
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvSendEmail:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_115
    :goto_115
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_127

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countryCode:Ljava/lang/String;

    const-string v3, "---"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countryCode:Ljava/lang/String;

    .line 126
    :cond_127
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "yanzheng"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->title:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "register"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->register:Ljava/lang/String;

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->skipYanzheng:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_160

    .line 133
    :cond_157
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->skipYanzheng:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_160
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etUsername:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etUsername:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etPwd:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etSmsCode:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etSmsCode:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/keephealth/android/util/ObjectUtil;->setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etUsername:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method synthetic lambda$createObserver$3$com-keephealth-android-ui-main-activity-RegisterNewActivity(Lcom/keephealth/android/model/BaseBean;)V
    .registers 6

    .line 373
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->hideLoading()V

    .line 374
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UserBean;

    .line 376
    const-string v0, "LOGIN_TYPE"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 377
    const-string v0, "IS_LOGIN_STATE"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 378
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getRegisterTime()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    .line 379
    const-string v0, "familyUserType"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 380
    const-string v0, "USER_NAME"

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "USER_PASSWORD"

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "USER_TOKEN"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "USER_TOKEN_BASE"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->info:Ljava/lang/String;

    const-string v2, "info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 386
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_e9

    .line 388
    :cond_5c
    invoke-static {}, Lcom/keephealth/android/util/DateUtil;->todayYearMonthDay()[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setYear(I)V

    .line 389
    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/UserBean;->setMonth(I)V

    .line 390
    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/UserBean;->setDay(I)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setBirthday(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1, v2}, Lcom/keephealth/android/model/bean/UserBean;->setUnit(I)V

    const/16 v0, 0xaa

    .line 393
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setHeight(I)V

    const/high16 v0, 0x42880000    # 68.0f

    .line 394
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setHeightLb(F)V

    const/high16 v0, 0x42700000    # 60.0f

    .line 395
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    const/high16 v0, 0x43040000    # 132.0f

    .line 396
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setWeightLb(F)V

    const/16 v0, 0xa

    .line 397
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setWeightSt(I)V

    .line 398
    const-string v0, "USER_BASE"

    invoke-static {p1}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 400
    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 401
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession(I)Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteAll()V

    .line 403
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->setDatabase()V

    .line 404
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->initMedal(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 405
    const-class p1, Lcom/keephealth/android/ui/mine/activity/PersonUnitActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_e9
    return-void
.end method

.method synthetic lambda$createObserver$4$com-keephealth-android-ui-main-activity-RegisterNewActivity(Ljava/lang/Integer;)V
    .registers 4

    .line 410
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->hideLoading()V

    .line 411
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1f

    goto :goto_7c

    :cond_1f
    const/16 v0, 0x8

    .line 419
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_71

    :cond_37
    const/16 v0, 0x1e

    .line 421
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const p1, 0x7f1006ba

    .line 422
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_df

    :cond_4f
    const/4 v0, 0x3

    .line 423
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    const p1, 0x7f100701

    .line 424
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_df

    :cond_66
    const p1, 0x7f10079d

    .line 426
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_df

    :cond_71
    :goto_71
    const p1, 0x7f10070a

    .line 420
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_df

    .line 412
    :cond_7c
    :goto_7c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvSendEmail:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isNumeric(Ljava/lang/String;)Z

    move-result p1

    const v0, 0x7f1006ff

    if-eqz p1, :cond_b8

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-eqz p1, :cond_b8

    .line 414
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvSendEmail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n+86 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_dc

    .line 416
    :cond_b8
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvSendEmail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :goto_dc
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->startCountdown()V

    :goto_df
    return-void
.end method

.method synthetic lambda$createObserver$5$com-keephealth-android-ui-main-activity-RegisterNewActivity(Ljava/lang/String;)V
    .registers 3

    .line 431
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->hideLoading()V

    .line 432
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_34

    .line 442
    :cond_14
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_29

    .line 445
    :cond_25
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_63

    :cond_29
    :goto_29
    const p1, 0x7f10070a

    .line 443
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_63

    :cond_34
    :goto_34
    const p1, 0x7f1005dd

    .line 433
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    const/16 p1, 0x3f9

    .line 434
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    const/4 p1, 0x1

    .line 435
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    .line 436
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->info:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5e

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->info:Ljava/lang/String;

    const-string v0, "info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 437
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_63

    .line 439
    :cond_5e
    const-class p1, Lcom/keephealth/android/ui/mine/activity/PersonUnitActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_63
    return-void
.end method

.method synthetic lambda$createObserver$6$com-keephealth-android-ui-main-activity-RegisterNewActivity(Ljava/lang/String;)V
    .registers 6

    .line 453
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->hideLoading()V

    .line 454
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_3b

    .line 469
    :cond_14
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_30

    :cond_25
    const p1, 0x7f1002b4

    .line 472
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_83

    :cond_30
    :goto_30
    const p1, 0x7f10070a

    .line 470
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_83

    :cond_3b
    :goto_3b
    const/16 v1, 0x3f9

    .line 455
    invoke-static {v1}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    const/4 v1, 0x1

    .line 456
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    const v2, 0x7f1005dd

    .line 457
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 460
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "bing_time"

    invoke-static {p1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 461
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isBandingEmail:Z

    .line 463
    :cond_66
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->info:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7e

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->info:Ljava/lang/String;

    const-string v0, "info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 464
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_83

    .line 466
    :cond_7e
    const-class p1, Lcom/keephealth/android/ui/mine/activity/PersonUnitActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_83
    return-void
.end method

.method synthetic lambda$createObserver$7$com-keephealth-android-ui-main-activity-RegisterNewActivity(Ljava/lang/String;)V
    .registers 12

    .line 516
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->hideLoading()V

    .line 517
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 p1, 0x1

    .line 518
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    const/16 v0, 0x3f9

    .line 519
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    const v0, 0x7f1004e6

    .line 520
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showToast(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->areaCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 523
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->requestLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    .line 525
    :cond_31
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;

    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;

    const-string v9, ""

    const/4 v5, 0x1

    const-string v7, "+86"

    invoke-virtual/range {v4 .. v9}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->loginByPhone(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    .line 527
    :cond_40
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_77

    .line 529
    :cond_51
    const-string v0, "30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const p1, 0x7f1006ba

    .line 530
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_81

    .line 531
    :cond_64
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    const p1, 0x7f100701

    .line 532
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_81

    :cond_77
    :goto_77
    const p1, 0x7f10070a

    .line 528
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showToast(Ljava/lang/String;)V

    :cond_81
    :goto_81
    return-void
.end method

.method synthetic lambda$showWebViewDialog$1$com-keephealth-android-ui-main-activity-RegisterNewActivity(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 9

    .line 280
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 629
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 630
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    .line 631
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    .line 632
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->mDialog:Landroid/app/Dialog;

    .line 634
    :cond_d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_14

    .line 635
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 637
    :cond_14
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 362
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 367
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onResume()V

    return-void
.end method
