.class public Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "RegisterFirstActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private agreeXieyiLogin:Z

.field binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

.field private commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field countryCode:Ljava/lang/String;

.field private countryInfo:Ljava/lang/String;

.field private courtrys:Ljava/lang/String;

.field private emailOrPhone:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private info:Ljava/lang/String;

.field private final permissionsLocation:[Ljava/lang/String;

.field private register:Ljava/lang/String;

.field three:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field type:Ljava/lang/String;

.field viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 65
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x2

    .line 72
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->permissionsLocation:[Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)Ljava/lang/String;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->courtrys:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->courtrys:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)Ljava/lang/String;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->agreeXieyiLogin:Z

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;Z)Z
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->agreeXieyiLogin:Z

    return p1
.end method

.method static synthetic lambda$setEditTextInhibitInputSpaChat$0(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 6

    .line 293
    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 294
    const-string p0, ""

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$showRemindDialog$3(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method private setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V
    .registers 5

    .line 292
    new-instance v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    .line 298
    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private showRemindDialog()V
    .registers 5

    const v0, 0x7f100700

    .line 475
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V

    new-instance v2, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$$ExternalSyntheticLambda2;-><init>()V

    const/4 v3, 0x1

    invoke-static {p0, v0, v3, v1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->showLoginDialog(Landroid/app/Activity;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 1

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;
    .registers 2

    .line 83
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    return-object v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 4

    .line 486
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 487
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x3f8

    if-ne v0, v1, :cond_2e

    .line 488
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/CountryBean;

    if-eqz p1, :cond_2e

    .line 489
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 490
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvChooseZero:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryBean;->getNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryCode:Ljava/lang/String;

    :cond_2e
    return-void
.end method

.method public initListener()V
    .registers 3

    .line 303
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->relaCountry:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$6;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$7;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 340
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$8;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 368
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->btnNext:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->imgClean:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$10;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->imgStatus:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifyEmailOrPhone:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 99
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 101
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    .line 102
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "three"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->three:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->title:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->info:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "register"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->register:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "emailOrPhone"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->emailOrPhone:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->type:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->toBack()V

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->three:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->three:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->three:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_76
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->emailOrPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->emailOrPhone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_87
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->three:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d8

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->three:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1005d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    sget v0, Lcom/keephealth/android/app/AppApplication;->foreign:I

    if-eqz v0, :cond_c5

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-nez v0, :cond_b2

    goto :goto_c5

    .line 120
    :cond_b2
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvTitle2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1005e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12b

    .line 118
    :cond_c5
    :goto_c5
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvTitle2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12b

    .line 123
    :cond_d8
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_119

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->title:Ljava/lang/String;

    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_119

    .line 126
    :cond_fd
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->title:Ljava/lang/String;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10079a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_119
    :goto_119
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvTitle2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1004e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_12b
    sget v0, Lcom/keephealth/android/app/AppApplication;->foreign:I

    const v1, 0x7f10032c

    if-nez v0, :cond_147

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->llAgreement:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_16d

    .line 138
    :cond_147
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-eqz v0, :cond_15a

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    const v2, 0x7f100627

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_165

    .line 141
    :cond_15a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 143
    :goto_165
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->llAgreement:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    :goto_16d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_199

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->type:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_199

    .line 150
    :cond_18b
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    const v1, 0x7f1006c2

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 153
    :cond_199
    :goto_199
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etPwd:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V

    .line 196
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 197
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 198
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryCode:Ljava/lang/String;

    .line 199
    invoke-static {p0, v0}, Lcom/keephealth/android/util/AreaCodeUtils;->getCountryNameByCountryCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvChooseZero:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/keephealth/android/util/ObjectUtil;->setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etPwd:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/keephealth/android/util/ObjectUtil;->setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvXieyi:Landroid/widget/TextView;

    invoke-static {}, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->getInstance()Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvXieyi:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->setTextChinaLink()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const v0, 0x7f090226

    .line 236
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 237
    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initListener$1$com-keephealth-android-ui-main-activity-RegisterFirstActivity(Ljava/lang/Integer;)V
    .registers 7

    .line 436
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->hideLoading()V

    .line 437
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_4f

    .line 459
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x1e

    if-eq v0, v1, :cond_20

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_d3

    .line 460
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->title:Ljava/lang/String;

    if-eqz v0, :cond_31

    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 461
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->showRemindDialog()V

    goto/16 :goto_d3

    .line 463
    :cond_31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_43

    const p1, 0x7f1006ba

    .line 464
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_d3

    :cond_43
    const p1, 0x7f100701

    .line 466
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_d3

    .line 439
    :cond_4f
    :goto_4f
    sget v0, Lcom/keephealth/android/app/AppApplication;->foreign:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_67

    .line 440
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->agreeXieyiLogin:Z

    if-nez v0, :cond_67

    .line 441
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 445
    :cond_67
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "emailOrPhone"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "psd"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v2, "countryCode"

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v2, "title"

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v2, "register"

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->register:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v2, "info"

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->info:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v2, "three"

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->three:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_cc

    .line 454
    const-string p1, "areaCode"

    const-string v1, "+86"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    :cond_cc
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 457
    invoke-virtual {p0, p1, p1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->overridePendingTransition(II)V

    :cond_d3
    :goto_d3
    return-void
.end method

.method synthetic lambda$showRemindDialog$2$com-keephealth-android-ui-main-activity-RegisterFirstActivity(Landroid/view/View;)V
    .registers 4

    .line 476
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 477
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "emailOrPhone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-class v0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public setTextChinaLink()Landroid/text/SpannableStringBuilder;
    .registers 12

    .line 251
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10031e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1004ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100794

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 255
    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x1

    aput-object v3, v5, v7

    move v7, v6

    :goto_30
    if-ge v7, v4, :cond_4a

    .line 256
    aget-object v8, v5, v7

    .line 257
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_47

    .line 259
    new-instance v10, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$5;

    invoke-direct {v10, p0, v8, v2, v3}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v9

    .line 259
    invoke-virtual {v1, v10, v9, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 284
    :cond_4a
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
