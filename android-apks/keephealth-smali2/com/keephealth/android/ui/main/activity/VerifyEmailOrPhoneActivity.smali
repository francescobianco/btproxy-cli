.class public Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "VerifyEmailOrPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERVAL:J = 0x3e8L

.field private static final TOTAL_TIME:J = 0xea60L


# instance fields
.field areaCode:Ljava/lang/String;

.field binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field email:Ljava/lang/String;

.field from:Ljava/lang/String;

.field mDialog:Landroid/app/Dialog;

.field pwd:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:I

.field viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->from:Ljava/lang/String;

    const/4 v1, 0x0

    .line 56
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    .line 57
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->title:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->pwd:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->areaCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showNoReceiveDialog()V

    return-void
.end method

.method private showNoReceiveDialog()V
    .registers 14

    .line 457
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    const v1, 0x7f10054a

    const v2, 0x7f100457

    if-eqz v0, :cond_6a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6a

    const/4 v3, 0x4

    if-ne v0, v3, :cond_11

    goto :goto_6a

    .line 477
    :cond_11
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 478
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1005e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1005e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1005ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 480
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1005eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1005ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$10;

    invoke-direct {v11, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$10;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    new-instance v12, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$11;

    invoke-direct {v12, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$11;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    move-object v3, p0

    .line 477
    invoke-static/range {v3 .. v12}, Lcom/keephealth/android/util/DialogHelperNew;->showNoReceiveDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_b9

    .line 458
    :cond_6a
    :goto_6a
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 459
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100327

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10019d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 460
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10019f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 461
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10019c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$8;

    invoke-direct {v11, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$8;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    new-instance v12, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$9;

    invoke-direct {v12, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$9;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    .line 458
    const-string v9, ""

    move-object v3, p0

    invoke-static/range {v3 .. v12}, Lcom/keephealth/android/util/DialogHelperNew;->showNoReceiveDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->mDialog:Landroid/app/Dialog;

    :goto_b9
    return-void
.end method

.method private startCountdown()V
    .registers 9

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSmsCode:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvCountDown:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    new-instance v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$6;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$6;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;JJ)V

    .line 325
    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 331
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 355
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifyCode:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 400
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->bindingAccount:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 445
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvNoGetYan:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$7;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    return-object v0
.end method

.method public initListener()V
    .registers 3

    .line 140
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etSmsCode:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSmsCode:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->imgClean:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 7

    .line 71
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 72
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    .line 73
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->toBack()V

    .line 74
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->pwd:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->from:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    .line 78
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->title:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "areaCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->areaCode:Ljava/lang/String;

    .line 80
    const-string v1, ""

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->areaCode:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 81
    :cond_74
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->areaCode:Ljava/lang/String;

    .line 83
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u9875\u9762\u7c7b\u578b"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    const v1, 0x7f1006fe

    const v3, 0x7f100257

    const/16 v4, 0x8

    if-eqz v0, :cond_1b9

    const/4 v5, 0x1

    if-eq v0, v5, :cond_16a

    const/4 v1, 0x2

    const v3, 0x7f1005d8

    if-eq v0, v1, :cond_13a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_da

    const/4 v1, 0x5

    if-eq v0, v1, :cond_aa

    goto/16 :goto_207

    .line 125
    :cond_aa
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->rlEditTextName:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    const v1, 0x7f1006c2

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_207

    .line 118
    :cond_da
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->rlEditTextName:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    const v1, 0x7f1006bf

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_207

    .line 111
    :cond_10a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    const v1, 0x7f1006c1

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->rlEditTextName:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_207

    .line 104
    :cond_13a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    const v1, 0x7f1006c0

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->rlEditTextName:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_207

    .line 95
    :cond_16a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n+86 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_1a6
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_207

    .line 86
    :cond_1b9
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f5

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_1f5
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 132
    :goto_207
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_218

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvEmailOrPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_218
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSmsCode:Landroid/widget/TextView;

    invoke-static {v0, p0, v1}, Lcom/keephealth/android/util/view/ChangeViewUtils;->changeGetVerifyCode(Landroid/widget/EditText;Landroid/content/Context;Landroid/widget/TextView;)Z

    return-void
.end method

.method synthetic lambda$createObserver$0$com-keephealth-android-ui-main-activity-VerifyEmailOrPhoneActivity(Ljava/lang/Integer;)V
    .registers 4

    .line 332
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->hideLoading()V

    .line 333
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1f

    goto :goto_6e

    .line 342
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_33

    const p1, 0x7f1006ba

    .line 343
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_eb

    .line 344
    :cond_33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_46

    const p1, 0x7f100701

    .line 345
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_eb

    .line 346
    :cond_46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_62

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_56

    goto :goto_62

    :cond_56
    const p1, 0x7f10079d

    .line 349
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_eb

    :cond_62
    :goto_62
    const p1, 0x7f10070a

    .line 347
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_eb

    .line 334
    :cond_6e
    :goto_6e
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isNumeric(Ljava/lang/String;)Z

    move-result p1

    const v0, 0x7f1006ff

    if-eqz p1, :cond_ba

    .line 336
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n+86 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e8

    .line 338
    :cond_ba
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :goto_e8
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->startCountdown()V

    :goto_eb
    return-void
.end method

.method synthetic lambda$createObserver$1$com-keephealth-android-ui-main-activity-VerifyEmailOrPhoneActivity(Ljava/lang/String;)V
    .registers 6

    .line 356
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->hideLoading()V

    .line 357
    const-string v0, "2"

    const-string v1, "1"

    if-eqz p1, :cond_62

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 358
    const-string v0, "30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const p1, 0x7f1006ba

    .line 359
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_61

    .line 360
    :cond_28
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const p1, 0x7f100701

    .line 361
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_61

    .line 362
    :cond_3b
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_57

    :cond_4c
    const p1, 0x7f10079d

    .line 365
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_61

    :cond_57
    :goto_57
    const p1, 0x7f10070a

    .line 363
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    :goto_61
    return-void

    :cond_62
    const/16 v2, 0x3f9

    .line 369
    invoke-static {v2}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    .line 371
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    .line 372
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_9e

    .line 373
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    .line 375
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "bing_time"

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/UserBean;->setEmailVerified(Z)V

    .line 377
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/keephealth/android/model/bean/UserBean;->setEmail(Ljava/lang/String;)V

    .line 378
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isBandingEmail:Z

    const p1, 0x7f100625

    .line 379
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_b6

    .line 380
    :cond_9e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    const p1, 0x7f1006bd

    .line 381
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/UserBean;->setPhoneVerified(Z)V

    .line 383
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/keephealth/android/model/bean/UserBean;->setPhone(Ljava/lang/String;)V

    .line 385
    :cond_b6
    :goto_b6
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 387
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->from:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e4

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->from:Ljava/lang/String;

    const-string v0, "account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e4

    .line 389
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    const-string v0, "from"

    const-string v1, "success"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 392
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->finish()V

    goto :goto_101

    .line 393
    :cond_e4
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->from:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_fc

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->from:Ljava/lang/String;

    const-string v0, "main"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fc

    .line 394
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_101

    .line 396
    :cond_fc
    const-class p1, Lcom/keephealth/android/ui/mine/activity/PersonUnitActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_101
    return-void
.end method

.method synthetic lambda$createObserver$2$com-keephealth-android-ui-main-activity-VerifyEmailOrPhoneActivity(Ljava/lang/String;)V
    .registers 6

    .line 401
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->hideLoading()V

    .line 402
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_59

    .line 434
    :cond_14
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_4d

    .line 436
    :cond_25
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const p1, 0x7f100701

    .line 437
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_fe

    .line 438
    :cond_39
    const-string v0, "30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fe

    const p1, 0x7f1006ba

    .line 439
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_fe

    :cond_4d
    :goto_4d
    const p1, 0x7f10070a

    .line 435
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_fe

    :cond_59
    :goto_59
    const/16 v1, 0x3f9

    .line 403
    invoke-static {v1}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    const/4 v1, 0x1

    .line 404
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    .line 406
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    .line 407
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, ""

    const-string v3, " "

    if-eqz p1, :cond_90

    .line 408
    invoke-virtual {v2, v1}, Lcom/keephealth/android/model/bean/UserBean;->setEmailVerified(Z)V

    .line 409
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/keephealth/android/model/bean/UserBean;->setEmail(Ljava/lang/String;)V

    .line 410
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isBandingEmail:Z

    goto :goto_aa

    .line 412
    :cond_90
    invoke-virtual {v2, v1}, Lcom/keephealth/android/model/bean/UserBean;->setPhoneVerified(Z)V

    .line 413
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/keephealth/android/model/bean/UserBean;->setPhone(Ljava/lang/String;)V

    .line 415
    :goto_aa
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 416
    iget p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_ef

    const/4 v0, 0x5

    if-eq p1, v0, :cond_ef

    if-eqz p1, :cond_ef

    if-ne p1, v1, :cond_be

    goto :goto_ef

    :cond_be
    const/4 v0, 0x2

    if-eq p1, v0, :cond_d0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c5

    goto :goto_da

    :cond_c5
    const p1, 0x7f1006bb

    .line 425
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_da

    :cond_d0
    const p1, 0x7f100624

    .line 422
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V

    .line 428
    :goto_da
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    const-string v0, "from"

    const-string v1, "success"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 431
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->finish()V

    goto :goto_fe

    :cond_ef
    :goto_ef
    const p1, 0x7f1005dd

    .line 417
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 418
    const-class p1, Lcom/keephealth/android/ui/mine/activity/AccoutActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_fe
    :goto_fe
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 500
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    .line 501
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_a

    .line 502
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_a
    return-void
.end method
