.class public final Lcom/keephealth/android/databinding/ActivityLoginBinding;
.super Ljava/lang/Object;
.source "ActivityLoginBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnCheck:Landroid/widget/Button;

.field public final btnlogin:Landroid/widget/Button;

.field public final etPwd:Landroid/widget/EditText;

.field public final etUsername:Landroid/widget/EditText;

.field public final imgChoose:Landroid/widget/ImageView;

.field public final imgClean:Landroid/widget/ImageView;

.field public final imgStatus:Landroid/widget/ImageView;

.field public final llConfirmationProtocol:Landroid/widget/LinearLayout;

.field public final llLogin:Landroid/widget/LinearLayout;

.field public final llViewEnd:Landroid/widget/LinearLayout;

.field public final otherLogin:Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvCountDown:Landroid/widget/TextView;

.field public final tvForgetPwd:Landroid/widget/TextView;

.field public final tvGetVerificationCode:Landroid/widget/TextView;

.field public final tvLogin:Landroid/widget/TextView;

.field public final tvRegister:Landroid/widget/TextView;

.field public final tvSkip:Landroid/widget/TextView;

.field public final tvSmsAndPassword:Landroid/widget/TextView;

.field public final tvXieyi:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 24

    move-object v0, p0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnCheck:Landroid/widget/Button;

    move-object v1, p3

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnlogin:Landroid/widget/Button;

    move-object v1, p4

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etPwd:Landroid/widget/EditText;

    move-object v1, p5

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    move-object v1, p6

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgChoose:Landroid/widget/ImageView;

    move-object v1, p7

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgClean:Landroid/widget/ImageView;

    move-object v1, p8

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgStatus:Landroid/widget/ImageView;

    move-object v1, p9

    .line 102
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->llConfirmationProtocol:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 103
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->llLogin:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 104
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->llViewEnd:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 105
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->otherLogin:Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;

    move-object v1, p13

    .line 106
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-object/from16 v1, p14

    .line 107
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvCountDown:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 108
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvForgetPwd:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 109
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvGetVerificationCode:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 110
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvLogin:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 111
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvRegister:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 112
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvSkip:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 113
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvSmsAndPassword:Landroid/widget/TextView;

    move-object/from16 v1, p21

    .line 114
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvXieyi:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityLoginBinding;
    .registers 26

    move-object/from16 v0, p0

    const v1, 0x7f0900a1

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_106

    const v1, 0x7f0900c9

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_106

    const v1, 0x7f090176

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_106

    const v1, 0x7f090178

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_106

    const v1, 0x7f090226

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_106

    const v1, 0x7f090204

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_106

    const v1, 0x7f09021b

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_106

    const v1, 0x7f090362

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_106

    const v1, 0x7f090385

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_106

    const v1, 0x7f0903b2

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_106

    const v1, 0x7f090451

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_106

    .line 209
    invoke-static {v2}, Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;

    move-result-object v15

    const v1, 0x7f0905f6

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_106

    .line 216
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v16

    const v1, 0x7f090638

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_106

    const v1, 0x7f090663

    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_106

    const v1, 0x7f090666

    .line 231
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_106

    const v1, 0x7f09067e

    .line 237
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_106

    const v1, 0x7f0906ab

    .line 243
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_106

    const v1, 0x7f0906c2

    .line 249
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_106

    const v1, 0x7f0906d2

    .line 255
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_106

    const v1, 0x7f090791

    .line 261
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_106

    .line 266
    new-instance v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v24}, Lcom/keephealth/android/databinding/ActivityLoginBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/databinding/LayoutThirdLoginBinding;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 271
    :cond_106
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityLoginBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityLoginBinding;
    .registers 5

    const v0, 0x7f0c0063

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 133
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityLoginBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityLoginBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
