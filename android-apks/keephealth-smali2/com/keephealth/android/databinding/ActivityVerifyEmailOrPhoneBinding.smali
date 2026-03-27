.class public final Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;
.super Ljava/lang/Object;
.source "ActivityVerifyEmailOrPhoneBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnVerify:Landroid/widget/Button;

.field public final etSmsCode:Landroid/widget/EditText;

.field public final etUsername:Landroid/widget/EditText;

.field public final imgClean:Landroid/widget/ImageView;

.field public final rlEditTextName:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvCountDown:Landroid/widget/TextView;

.field public final tvEmailOrPhone:Landroid/widget/TextView;

.field public final tvNoGetYan:Landroid/widget/TextView;

.field public final tvSendVerify:Landroid/widget/TextView;

.field public final tvSmsCode:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 13

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->rootView:Landroid/widget/LinearLayout;

    .line 66
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    .line 67
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etSmsCode:Landroid/widget/EditText;

    .line 68
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    .line 69
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->imgClean:Landroid/widget/ImageView;

    .line 70
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->rlEditTextName:Landroid/widget/RelativeLayout;

    .line 71
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 72
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvCountDown:Landroid/widget/TextView;

    .line 73
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvEmailOrPhone:Landroid/widget/TextView;

    .line 74
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvNoGetYan:Landroid/widget/TextView;

    .line 75
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSendVerify:Landroid/widget/TextView;

    .line 76
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSmsCode:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;
    .registers 16

    const v0, 0x7f0900be

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_8f

    const v0, 0x7f09016f

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_8f

    const v0, 0x7f090178

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_8f

    const v0, 0x7f090204

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_8f

    const v0, 0x7f0904ea

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_8f

    const v0, 0x7f0905f6

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 141
    invoke-static {v1}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v9

    const v0, 0x7f090638

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_8f

    const v0, 0x7f09065b

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_8f

    const v0, 0x7f090757

    .line 156
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_8f

    const v0, 0x7f0906bb

    .line 162
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_8f

    const v0, 0x7f0906d3

    .line 168
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_8f

    .line 173
    new-instance v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 177
    :cond_8f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 178
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;
    .registers 5

    const v0, 0x7f0c0098

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
