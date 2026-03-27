.class public final Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;
.super Ljava/lang/Object;
.source "ActivityRegisterNewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnRegiest:Landroid/widget/Button;

.field public final etPwd:Landroid/widget/EditText;

.field public final etSmsCode:Landroid/widget/EditText;

.field public final etUsername:Landroid/widget/EditText;

.field public final imgClean:Landroid/widget/ImageView;

.field public final imgStatus:Landroid/widget/ImageView;

.field public final linTop:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final skipYanzheng:Landroid/widget/TextView;

.field public final tagPassword:Landroid/widget/TextView;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvCountDown:Landroid/widget/TextView;

.field public final tvNoGetYan:Landroid/widget/TextView;

.field public final tvSendEmail:Landroid/widget/TextView;

.field public final tvSmsCode:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 16

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 75
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->btnRegiest:Landroid/widget/Button;

    .line 76
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etPwd:Landroid/widget/EditText;

    .line 77
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etSmsCode:Landroid/widget/EditText;

    .line 78
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etUsername:Landroid/widget/EditText;

    .line 79
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->imgClean:Landroid/widget/ImageView;

    .line 80
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->imgStatus:Landroid/widget/ImageView;

    .line 81
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->linTop:Landroid/widget/LinearLayout;

    .line 82
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->skipYanzheng:Landroid/widget/TextView;

    .line 83
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tagPassword:Landroid/widget/TextView;

    .line 84
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 85
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvCountDown:Landroid/widget/TextView;

    .line 86
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvNoGetYan:Landroid/widget/TextView;

    .line 87
    iput-object p14, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvSendEmail:Landroid/widget/TextView;

    .line 88
    iput-object p15, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->tvSmsCode:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;
    .registers 20

    move-object/from16 v0, p0

    const v1, 0x7f0900ac

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_b8

    const v1, 0x7f090176

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_b8

    const v1, 0x7f09016f

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_b8

    const v1, 0x7f090178

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_b8

    const v1, 0x7f090204

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_b8

    const v1, 0x7f09021b

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_b8

    const v1, 0x7f09033f

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_b8

    const v1, 0x7f090574

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_b8

    const v1, 0x7f0905b2

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_b8

    const v1, 0x7f0905f6

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b8

    .line 177
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v14

    const v1, 0x7f090638

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_b8

    const v1, 0x7f090757

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_b8

    const v1, 0x7f090776

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_b8

    const v1, 0x7f0906d3

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_b8

    .line 203
    new-instance v1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 207
    :cond_b8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;
    .registers 5

    const v0, 0x7f0c0079

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 107
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
