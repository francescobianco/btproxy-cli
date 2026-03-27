.class public final Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;
.super Ljava/lang/Object;
.source "ActivityVeriEmailBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnChangeEmail:Landroid/widget/Button;

.field public final btnGoVerify:Landroid/widget/Button;

.field public final etSmsCode:Landroid/widget/EditText;

.field public final ivEmailOrPhone:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvEmail:Landroid/widget/TextView;

.field public final tvEmailOrPhoneInstructions:Landroid/widget/TextView;

.field public final tvNoGetYan:Landroid/widget/TextView;

.field public final tvNoVerified:Landroid/widget/TextView;

.field public final tvNowTitle:Landroid/widget/TextView;

.field public final tvSmsCode:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/ImageView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 13

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->rootView:Landroid/widget/LinearLayout;

    .line 64
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->btnChangeEmail:Landroid/widget/Button;

    .line 65
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->btnGoVerify:Landroid/widget/Button;

    .line 66
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->etSmsCode:Landroid/widget/EditText;

    .line 67
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->ivEmailOrPhone:Landroid/widget/ImageView;

    .line 68
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 69
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvEmail:Landroid/widget/TextView;

    .line 70
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvEmailOrPhoneInstructions:Landroid/widget/TextView;

    .line 71
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvNoGetYan:Landroid/widget/TextView;

    .line 72
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvNoVerified:Landroid/widget/TextView;

    .line 73
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvNowTitle:Landroid/widget/TextView;

    .line 74
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvSmsCode:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;
    .registers 16

    const v0, 0x7f0900a0

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_8f

    const v0, 0x7f0900a4

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_8f

    const v0, 0x7f09016f

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_8f

    const v0, 0x7f0902ae

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_8f

    const v0, 0x7f0905f6

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 133
    invoke-static {v1}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v8

    const v0, 0x7f09065a

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_8f

    const v0, 0x7f09065c

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_8f

    const v0, 0x7f090757

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_8f

    const v0, 0x7f090698

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_8f

    const v0, 0x7f09069a

    .line 160
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_8f

    const v0, 0x7f0906d3

    .line 166
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_8f

    .line 171
    new-instance v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/ImageView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 175
    :cond_8f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;
    .registers 5

    const v0, 0x7f0c0097

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 93
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
