.class public Lcom/keephealth/android/ui/main/activity/LoginNewActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "LoginNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityLoginBinding;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERVAL:J = 0x3e8L

.field private static final MSG_ACTION_FACEBOOK_COMPLETE:I = 0x2

.field private static final MSG_ACTION_WECHAT_COMPLETE:I = 0x1

.field private static final TOTAL_TIME:J = 0xea60L


# instance fields
.field private agreeXieyi:Z

.field private agreeXieyiLogin:Z

.field binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private from:Ljava/lang/String;

.field private isFront:Z

.field private loginType:I

.field private loginTypePC:I

.field private mDialog:Landroid/app/Dialog;

.field private userName:Ljava/lang/String;

.field private userPwd:Ljava/lang/String;

.field viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 131
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x1

    .line 145
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I

    const/4 v0, 0x0

    .line 725
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->isFront:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)I
    .registers 1

    .line 131
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;I)I
    .registers 2

    .line 131
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->agreeXieyiLogin:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Z)Z
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->agreeXieyiLogin:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->goToRegisterFirst()V

    return-void
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showRemindSkipDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->agreeXieyi:Z

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Z)Z
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->agreeXieyi:Z

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Landroid/os/CountDownTimer;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;I)I
    .registers 2

    .line 131
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginType:I

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private getAccessToken(Ljava/lang/String;)V
    .registers 4

    .line 507
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

    .line 512
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 548
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private goToRegisterFirst()V
    .registers 4

    .line 687
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 689
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 690
    const-string v2, "emailOrPhone"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_1c
    const-string v0, "register"

    invoke-virtual {v1, v0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v0, "title"

    const-string v2, "login"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-class v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private initMedal(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 8

    .line 658
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMedalDataDao()Lcom/keephealth/android/greendao/gen/MedalDataDao;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 660
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 662
    :cond_1c
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->setDefalutMedal()Ljava/util/List;

    move-result-object v1

    .line 664
    :cond_22
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMedals()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 665
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_68

    .line 667
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/MedalResult;

    .line 668
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/MedalResult;->getMedalNum()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/MedalData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 669
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

    .line 672
    :cond_68
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->deleteAll()V

    .line 673
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->insertInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method private isWeixinAvilible()Z
    .registers 6

    .line 579
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 580
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_27

    move v2, v1

    .line 582
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 583
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 584
    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v0, 0x1

    return v0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_27
    return v1
.end method

.method static synthetic lambda$initView$0(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 6

    .line 213
    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 214
    const-string p0, ""

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$setEditTextInhibitInputSpaChat$12(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 6

    .line 746
    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 747
    const-string p0, ""

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$showRemindDialog$11(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$showRemindSkipDialog$9(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method private setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V
    .registers 5

    .line 745
    new-instance v0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    .line 751
    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private showPrivacyChinaDialog()V
    .registers 7

    .line 317
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    .line 318
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0199

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090632

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090791

    .line 321
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 322
    new-instance v3, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda14;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090226

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 327
    new-instance v3, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0906e4

    .line 340
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 341
    new-instance v3, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda15;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    invoke-static {}, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->getInstance()Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 355
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->setTextChinaLink()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 356
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 358
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_99

    const/16 v1, 0x50

    .line 360
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 361
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 362
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 363
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x3c

    .line 364
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 365
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 367
    :cond_99
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_ad

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_a6

    goto :goto_ad

    .line 368
    :cond_a6
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_ad

    .line 369
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_ad
    :goto_ad
    return-void
.end method

.method private showPrivacyDialog()V
    .registers 8

    .line 374
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    .line 375
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090135

    .line 376
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 377
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100797

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0906f6

    .line 378
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/MyTextView;

    .line 379
    invoke-static {}, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->getInstance()Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/MyTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 380
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->setTextLink()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/views/MyTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const v1, 0x7f0906f8

    .line 382
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 383
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f090632

    .line 384
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 385
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    new-instance v2, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0906e4

    .line 390
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 391
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10011f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    new-instance v2, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda13;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 401
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 403
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 404
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 405
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 406
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 407
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 409
    :cond_c9
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showRemindDialog()V
    .registers 5

    const v0, 0x7f100699

    .line 678
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    new-instance v2, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda6;-><init>()V

    const/4 v3, 0x1

    invoke-static {p0, v0, v3, v1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->showLoginDialog(Landroid/app/Activity;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method private showRemindSkipDialog()V
    .registers 9

    .line 553
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100747

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100549

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100548

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda8;-><init>()V

    move-object v2, p0

    .line 553
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method private showWebViewDialog()V
    .registers 3

    .line 304
    const-string v0, "PRIVACY_VERSION"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_16

    .line 306
    sget v0, Lcom/keephealth/android/app/AppApplication;->foreign:I

    if-nez v0, :cond_13

    .line 308
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showPrivacyDialog()V

    goto :goto_16

    .line 311
    :cond_13
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showPrivacyChinaDialog()V

    :cond_16
    :goto_16
    return-void
.end method

.method private startCountdown()V
    .registers 9

    .line 1070
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvGetVerificationCode:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvCountDown:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1074
    new-instance v0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$18;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$18;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;JJ)V

    .line 1085
    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$18;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 965
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->userBeanData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1044
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->codeFailed:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1057
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 130
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityLoginBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityLoginBinding;
    .registers 2

    .line 149
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityLoginBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    return-object v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 4

    .line 490
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 491
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x3fa

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x40a

    if-eq v0, v1, :cond_10

    goto :goto_27

    .line 496
    :cond_10
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealthpro/android/WeChatBean;

    .line 497
    invoke-virtual {p1}, Lcom/keephealthpro/android/WeChatBean;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 498
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getAccessToken(Ljava/lang/String;)V

    goto :goto_27

    .line 493
    :cond_1e
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etPwd:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_27
    return-void
.end method

.method public initListener()V
    .registers 3

    .line 756
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 757
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvSmsAndPassword:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnCheck:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$9;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgStatus:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$10;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgClean:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$11;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnlogin:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvRegister:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$13;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$13;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvForgetPwd:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$14;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$14;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvSkip:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$15;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$15;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->otherLogin:Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;->tvLoginWechat:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$16;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$16;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvGetVerificationCode:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 7

    .line 155
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 156
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    .line 158
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x0

    .line 160
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isLoginSuccess:Z

    .line 161
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isLoginRegisterSuccess:Z

    .line 162
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bgView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v3, 0x7f060163

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 164
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v3, 0x7f0d010a

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnlogin:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 168
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "from"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->from:Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "emailOrPhone"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 171
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v3, v3, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_83
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V

    .line 175
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etPwd:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V

    .line 176
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->from:Ljava/lang/String;

    if-eqz v1, :cond_cc

    .line 177
    const-string v3, "WelcomeActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 178
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_cc

    .line 181
    :cond_ae
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_cc
    :goto_cc
    sget v1, Lcom/keephealth/android/app/AppApplication;->foreign:I

    const v3, 0x7f10032c

    if-nez v1, :cond_101

    .line 193
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->llConfirmationProtocol:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->otherLogin:Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;->tvLoginWechat:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->otherLogin:Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;->tvLoginFacebook:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->otherLogin:Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;->rlView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_141

    .line 200
    :cond_101
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-nez v1, :cond_111

    .line 201
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_11f

    .line 203
    :cond_111
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    const v3, 0x7f100627

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 205
    :goto_11f
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->llConfirmationProtocol:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->otherLogin:Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;->tvLoginWechat:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->otherLogin:Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;->tvLoginFacebook:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->otherLogin:Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;->rlView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 211
    :goto_141
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v3, v3, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvGetVerificationCode:Landroid/widget/TextView;

    invoke-static {v1, p0, v3}, Lcom/keephealth/android/util/view/ChangeViewUtils;->changeGetVerifyCode(Landroid/widget/EditText;Landroid/content/Context;Landroid/widget/TextView;)Z

    .line 212
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/text/InputFilter;

    new-instance v5, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda0;-><init>()V

    aput-object v5, v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    const-string v0, "LOGIN_TYPE"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_18d

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    const-string v1, "USER_NAME"

    const-string v3, ""

    invoke-static {p0, v1, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_18d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnCheck:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showWebViewDialog()V

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvXieyi:Landroid/widget/TextView;

    invoke-static {}, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->getInstance()Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 287
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvXieyi:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->setTextChinaLink()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const v0, 0x7f090226

    .line 288
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 289
    new-instance v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$createObserver$13$com-keephealth-android-ui-main-activity-LoginNewActivity(Lcom/keephealth/android/model/BaseBean;)V
    .registers 10

    .line 966
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->hideLoading()V

    .line 967
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UserBean;

    const/4 v0, 0x1

    .line 969
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IS_LOGIN_STATE"

    invoke-static {p0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 970
    const-string v1, "LOGIN_TYPE"

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginType:I

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 971
    const-string v1, "USER_NAME"

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v1, "USER_PASSWORD"

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v1, "USER_TOKEN"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v1, "USER_TOKEN_BASE"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "BLOOD_DATA"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 976
    const-string v1, "USER_BASE"

    invoke-static {p1}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 977
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getRegisterTime()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    .line 978
    const-string v1, "familyUserType"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 979
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 980
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 981
    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 982
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession(I)Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-result-object v1

    .line 983
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteAll()V

    .line 984
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->setDatabase()V

    .line 985
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->initMedal(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 986
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_9f

    .line 987
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->syncDeviceData()V

    .line 988
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    move-result-object v1

    if-eqz v1, :cond_9f

    .line 990
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v3

    iput v3, v1, Lcom/keephealth/android/model/bean/DeviceState;->unit:I

    .line 991
    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    .line 994
    :cond_9f
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->isFirstLogin()Z

    move-result v1

    const-string v3, "main"

    const-string v4, "title"

    const-string v5, "three"

    const-string v6, "-"

    if-nez v1, :cond_17d

    .line 995
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getBirthday()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e2

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e2

    .line 996
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 997
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/keephealth/android/model/bean/UserBean;->setYear(I)V

    .line 998
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/keephealth/android/model/bean/UserBean;->setMonth(I)V

    const/4 v2, 0x2

    .line 999
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/UserBean;->setDay(I)V

    goto :goto_11f

    .line 1001
    :cond_e2
    invoke-static {}, Lcom/keephealth/android/util/DateUtil;->todayYearMonthDay()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x14

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/UserBean;->setYear(I)V

    .line 1002
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setMonth(I)V

    .line 1003
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setDay(I)V

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/UserBean;->setBirthday(Ljava/lang/String;)V

    .line 1006
    :goto_11f
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeightLb(F)V

    .line 1007
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->cm2inchs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/UserBean;->setHeightLb(F)V

    .line 1009
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "LAST_SYNCH_TIME"

    invoke-static {v1, v6, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1010
    sput-boolean v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateData:Z

    .line 1011
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_172

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_172

    .line 1012
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1013
    invoke-virtual {p1, v5, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v0, "info"

    invoke-virtual {p1, v0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-class v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_1ff

    .line 1018
    :cond_172
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isLoginSuccess:Z

    .line 1019
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isClickSkipYanZheng:Z

    .line 1020
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1ff

    .line 1024
    :cond_17d
    invoke-static {}, Lcom/keephealth/android/util/DateUtil;->todayYearMonthDay()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x14

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/UserBean;->setYear(I)V

    .line 1025
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setMonth(I)V

    .line 1026
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setDay(I)V

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setBirthday(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p1, v2}, Lcom/keephealth/android/model/bean/UserBean;->setUnit(I)V

    const/16 v0, 0xaa

    .line 1029
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setHeight(I)V

    const/high16 v0, 0x42860000    # 67.0f

    .line 1030
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setHeightLb(F)V

    const/high16 v0, 0x42700000    # 60.0f

    .line 1031
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    const/high16 v0, 0x43040000    # 132.0f

    .line 1032
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setWeightLb(F)V

    const/16 v0, 0xa

    .line 1033
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setWeightSt(I)V

    .line 1034
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1035
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ff

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1ff

    .line 1036
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1037
    invoke-virtual {p1, v5, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-class v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1ff
    :goto_1ff
    return-void
.end method

.method synthetic lambda$createObserver$14$com-keephealth-android-ui-main-activity-LoginNewActivity(Ljava/lang/Integer;)V
    .registers 4

    .line 1045
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->hideLoading()V

    .line 1046
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_34

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_34

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1a

    goto :goto_34

    .line 1048
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_29

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_37

    :cond_29
    const v0, 0x7f10070a

    .line 1049
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_37

    .line 1047
    :cond_34
    :goto_34
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showRemindDialog()V

    .line 1051
    :cond_37
    :goto_37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_4d

    .line 1052
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method synthetic lambda$createObserver$15$com-keephealth-android-ui-main-activity-LoginNewActivity(Ljava/lang/Integer;)V
    .registers 4

    .line 1058
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->hideLoading()V

    .line 1059
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1f

    goto :goto_2a

    :cond_1f
    const p1, 0x7f10079d

    .line 1063
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_5a

    .line 1060
    :cond_2a
    :goto_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f1006ff

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1061
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->startCountdown()V

    :goto_5a
    return-void
.end method

.method synthetic lambda$getAccessToken$5$com-keephealth-android-ui-main-activity-LoginNewActivity()V
    .registers 4

    .line 534
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->isFront:Z

    if-eqz v0, :cond_7

    .line 535
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showLoadingFalse()V

    .line 537
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->requestLoginByWechat(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getAccessToken$6$com-keephealth-android-ui-main-activity-LoginNewActivity()V
    .registers 3

    .line 544
    const-string v0, "\u83b7\u53d6AccessToken\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->finish()V

    return-void
.end method

.method synthetic lambda$getAccessToken$7$com-keephealth-android-ui-main-activity-LoginNewActivity(Ljava/lang/String;)V
    .registers 4

    .line 514
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 516
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x1f40

    .line 517
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 518
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 519
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 520
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    :goto_2b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 524
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 527
    :cond_35
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 528
    const-string p1, "access_token"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 529
    const-string v1, "openid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;

    .line 531
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;

    const/4 p1, 0x2

    .line 532
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginType:I

    .line 533
    new-instance p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_66

    :catch_5a
    move-exception p1

    .line 542
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 543
    new-instance p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_66
    return-void
.end method

.method synthetic lambda$showPrivacyChinaDialog$1$com-keephealth-android-ui-main-activity-LoginNewActivity(Landroid/view/View;)V
    .registers 3

    .line 323
    const-string p1, "PRIVACY_VERSION"

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 324
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method synthetic lambda$showPrivacyChinaDialog$2$com-keephealth-android-ui-main-activity-LoginNewActivity(Landroid/view/View;)V
    .registers 3

    .line 342
    iget-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->agreeXieyi:Z

    if-nez p1, :cond_13

    .line 343
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 346
    :cond_13
    const-string p1, "PRIVACY_VERSION"

    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 347
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 348
    const-string p1, "yyyy-MM-dd"

    invoke-static {p1}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PRIVACY_TIME"

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 350
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->agreeXieyiLogin:Z

    .line 351
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgChoose:Landroid/widget/ImageView;

    const v0, 0x7f0d0337

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$showPrivacyDialog$3$com-keephealth-android-ui-main-activity-LoginNewActivity(Landroid/view/View;)V
    .registers 3

    .line 387
    const-string p1, "PRIVACY_VERSION"

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 388
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method synthetic lambda$showPrivacyDialog$4$com-keephealth-android-ui-main-activity-LoginNewActivity(Landroid/view/View;)V
    .registers 3

    .line 393
    const-string p1, "PRIVACY_VERSION"

    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 394
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 395
    const-string p1, "yyyy-MM-dd"

    invoke-static {p1}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PRIVACY_TIME"

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$showRemindDialog$10$com-keephealth-android-ui-main-activity-LoginNewActivity(Landroid/view/View;)V
    .registers 2

    .line 679
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->goToRegisterFirst()V

    return-void
.end method

.method synthetic lambda$showRemindSkipDialog$8$com-keephealth-android-ui-main-activity-LoginNewActivity(Landroid/view/View;)V
    .registers 7

    .line 555
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->createDefaultUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    .line 556
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 558
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v1

    iput v1, v0, Lcom/keephealth/android/model/bean/DeviceState;->unit:I

    .line 559
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    .line 562
    :cond_13
    const-string v0, "USER_TOKEN"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "USER_TOKEN_BASE"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v0, "IS_TO_LOGIN"

    const-string v2, "2"

    invoke-static {p0, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "IS_LOGIN_STATE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 567
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "LAST_SYNCH_TIME"

    invoke-static {v0, v4, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    sput-boolean v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateData:Z

    .line 569
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 570
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->setDatabase()V

    .line 571
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    const-string p1, "USER_NAME"

    invoke-static {p0, p1, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 485
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 7

    .line 1090
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onBackPressed()V

    .line 1091
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->createDefaultUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 1092
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1094
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v2

    iput v2, v1, Lcom/keephealth/android/model/bean/DeviceState;->unit:I

    .line 1095
    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    .line 1098
    :cond_16
    const-string v1, "USER_TOKEN"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v1, "USER_TOKEN_BASE"

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v1, "IS_TO_LOGIN"

    const-string v3, "2"

    invoke-static {p0, v1, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v1, "IS_LOGIN_STATE"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1103
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "LAST_SYNCH_TIME"

    invoke-static {v1, v5, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1104
    sput-boolean v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateData:Z

    .line 1105
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 1106
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->setDatabase()V

    .line 1107
    const-string v0, "USER_NAME"

    invoke-static {p0, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 1112
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    .line 1113
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_a

    .line 1114
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_a
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 735
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onPause()V

    const/4 v0, 0x0

    .line 736
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->isFront:Z

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 729
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onResume()V

    const/4 v0, 0x1

    .line 730
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->isFront:Z

    return-void
.end method

.method public setTextChinaLink()Landroid/text/SpannableStringBuilder;
    .registers 12

    .line 448
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10031e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1004ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100794

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 452
    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x1

    aput-object v3, v5, v7

    move v7, v6

    :goto_30
    if-ge v7, v4, :cond_4a

    .line 453
    aget-object v8, v5, v7

    .line 454
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_47

    .line 456
    new-instance v10, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;

    invoke-direct {v10, p0, v8, v2, v3}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v9

    .line 456
    invoke-virtual {v1, v10, v9, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 480
    :cond_4a
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public setTextLink()Landroid/text/SpannableStringBuilder;
    .registers 12

    .line 413
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100795

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100354

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100352

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 417
    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x1

    aput-object v3, v5, v7

    move v7, v6

    :goto_30
    if-ge v7, v4, :cond_4a

    .line 418
    aget-object v8, v5, v7

    .line 419
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_47

    .line 421
    new-instance v10, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$6;

    invoke-direct {v10, p0, v8, v2, v3}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$6;-><init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v9

    .line 421
    invoke-virtual {v1, v10, v9, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 445
    :cond_4a
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
