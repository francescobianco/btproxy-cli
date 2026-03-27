.class public Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "UpdatePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERVAL:J = 0x3e8L

.field private static final TOTAL_TIME:J = 0xea60L


# instance fields
.field private autoLogin:Z

.field binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private email:Ljava/lang/String;

.field private isEmail:Z

.field private phone:Ljava/lang/String;

.field userBean:Lcom/keephealth/android/model/bean/UserBean;

.field private userPwd:Ljava/lang/String;

.field viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->autoLogin:Z

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->isEmail:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->phone:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->email:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->handleTextChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->phone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->email:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->isEmail:Z

    return p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Z)Z
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->isEmail:Z

    return p1
.end method

.method private handleTextChanged()V
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_32

    .line 345
    :cond_26
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->autoLogin:Z

    if-nez v0, :cond_3b

    .line 346
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->imgClean:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3b

    .line 343
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->imgClean:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etPwd:Landroid/widget/EditText;

    .line 350
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etPwd:Landroid/widget/EditText;

    .line 351
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_98

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etSmsCode:Landroid/widget/EditText;

    .line 352
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_85

    goto :goto_98

    .line 356
    :cond_85
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->btnUpdate:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->btnUpdate:Landroid/widget/Button;

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_a9

    .line 353
    :cond_98
    :goto_98
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 354
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->btnUpdate:Landroid/widget/Button;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_a9
    return-void
.end method

.method static synthetic lambda$setEditTextInhibitInputSpaChat$0(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 6

    .line 148
    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 149
    const-string p0, ""

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V
    .registers 5

    .line 147
    new-instance v0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    .line 153
    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private startCountdown()V
    .registers 9

    .line 366
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->tvSmsCode:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->tvCountDown:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    new-instance v0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$9;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$9;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;JJ)V

    .line 381
    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$9;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 414
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->userBeanData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 430
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->updatePassword:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 441
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->verifyEmailOrPhone:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 451
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->verifyEmailOrPhoneUser:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 60
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    return-object v0
.end method

.method public initListener()V
    .registers 3

    .line 158
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etSmsCode:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->imgStatus:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->imgClean:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->btnUpdate:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->tvSmsCode:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->verifyPhoneOrEmail:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;-><init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 8

    .line 78
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 79
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    .line 80
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->toBack()V

    .line 81
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->email:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->phone:Ljava/lang/String;

    .line 86
    sget v1, Lcom/keephealth/android/app/AppApplication;->foreign:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_74

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-nez v1, :cond_4a

    goto :goto_74

    .line 90
    :cond_4a
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    const v4, 0x7f100627

    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->phone:Ljava/lang/String;

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_89

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->email:Ljava/lang/String;

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_89

    .line 92
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->verifyPhoneOrEmail:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_89

    .line 87
    :cond_74
    :goto_74
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    const v4, 0x7f10032c

    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->verifyPhoneOrEmail:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_89
    :goto_89
    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_100

    .line 96
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1004fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 97
    const-string v0, "USER_BASE"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_bc

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b1

    goto :goto_bc

    .line 101
    :cond_b1
    const-class v1, Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/UserBean;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    goto :goto_c6

    .line 99
    :cond_bc
    :goto_bc
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 103
    :goto_c6
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    if-eqz v0, :cond_d7

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_d7
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->imgClean:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iput-boolean v4, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->autoLogin:Z

    goto :goto_117

    .line 119
    :cond_e8
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->imgClean:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iput-boolean v3, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->autoLogin:Z

    goto :goto_117

    .line 125
    :cond_100
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->imgClean:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iput-boolean v3, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->autoLogin:Z

    .line 130
    :goto_117
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etPwd:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_145

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_15f

    .line 137
    :cond_145
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15f

    .line 138
    iput-boolean v3, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->isEmail:Z

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 143
    :cond_15f
    :goto_15f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->tvSmsCode:Landroid/widget/TextView;

    invoke-static {v0, p0, v1}, Lcom/keephealth/android/util/view/ChangeViewUtils;->changeGetVerifyCode(Landroid/widget/EditText;Landroid/content/Context;Landroid/widget/TextView;)Z

    return-void
.end method

.method synthetic lambda$createObserver$1$com-keephealth-android-ui-main-activity-UpdatePasswordActivity(Ljava/lang/Integer;)V
    .registers 4

    .line 396
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->hideLoading()V

    .line 397
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    goto :goto_34

    .line 407
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_20

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2a

    :cond_20
    const p1, 0x7f10070a

    .line 408
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V

    .line 410
    :cond_2a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->tvSmsCode:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_b3

    .line 398
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b0

    .line 399
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isNumeric(Ljava/lang/String;)Z

    move-result p1

    const v0, 0x7f1006ff

    if-eqz p1, :cond_86

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n+86 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b0

    .line 402
    :cond_86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    :cond_b0
    :goto_b0
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->startCountdown()V

    :goto_b3
    return-void
.end method

.method synthetic lambda$createObserver$2$com-keephealth-android-ui-main-activity-UpdatePasswordActivity(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 4

    .line 415
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->hideLoading()V

    if-eqz p1, :cond_41

    .line 417
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->autoLogin:Z

    if-eqz v0, :cond_2b

    .line 419
    const-string v0, "USER_TOKEN"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "USER_PASSWORD"

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, "USER_TOKEN_BASE"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, "USER_BASE"

    invoke-static {p1}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    :cond_2b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1006b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    const/16 p1, 0x3fa

    .line 425
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 426
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->finish()V

    :cond_41
    return-void
.end method

.method synthetic lambda$createObserver$3$com-keephealth-android-ui-main-activity-UpdatePasswordActivity(Ljava/lang/Integer;)V
    .registers 4

    .line 431
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->hideLoading()V

    .line 432
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_44

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_13

    goto :goto_44

    .line 434
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_39

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_39

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_2a

    goto :goto_39

    .line 437
    :cond_2a
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10078c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_4e

    :cond_39
    :goto_39
    const p1, 0x7f1005c5

    .line 435
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_4e

    :cond_44
    :goto_44
    const p1, 0x7f10070a

    .line 433
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V

    :goto_4e
    return-void
.end method

.method synthetic lambda$createObserver$4$com-keephealth-android-ui-main-activity-UpdatePasswordActivity(Ljava/lang/Integer;)V
    .registers 3

    .line 442
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_12

    .line 444
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    goto :goto_12

    .line 447
    :cond_f
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->hideLoading()V

    :goto_12
    return-void
.end method

.method synthetic lambda$createObserver$5$com-keephealth-android-ui-main-activity-UpdatePasswordActivity(Ljava/lang/Integer;)V
    .registers 3

    .line 452
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_18

    .line 453
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->sendCode(Ljava/lang/String;)V

    goto :goto_3e

    .line 454
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    .line 455
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->sendPhoneVerifyCode(Ljava/lang/String;)V

    goto :goto_3e

    .line 457
    :cond_31
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->hideLoading()V

    const p1, 0x7f1005c5

    .line 458
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 465
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    .line 466
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_a

    .line 467
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_a
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 386
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 390
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onResume()V

    return-void
.end method
