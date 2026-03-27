.class public final Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;
.super Ljava/lang/Object;
.source "ActivityRegisterFirstBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnNext:Landroid/widget/Button;

.field public final etPwd:Landroid/widget/EditText;

.field public final etSmsCode:Landroid/widget/EditText;

.field public final etUsername:Landroid/widget/EditText;

.field public final imgChoose:Landroid/widget/ImageView;

.field public final imgClean:Landroid/widget/ImageView;

.field public final imgStatus:Landroid/widget/ImageView;

.field public final llAgreement:Landroid/widget/LinearLayout;

.field public final relaCountry:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvChooseZero:Landroid/widget/TextView;

.field public final tvNoGetYan:Landroid/widget/TextView;

.field public final tvRight:Landroid/widget/ImageView;

.field public final tvSmsCode:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvTitle2:Landroid/widget/TextView;

.field public final tvXieyi:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 21

    move-object v0, p0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->btnNext:Landroid/widget/Button;

    move-object v1, p3

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etPwd:Landroid/widget/EditText;

    move-object v1, p4

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etSmsCode:Landroid/widget/EditText;

    move-object v1, p5

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    move-object v1, p6

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->imgChoose:Landroid/widget/ImageView;

    move-object v1, p7

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->imgClean:Landroid/widget/ImageView;

    move-object v1, p8

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->imgStatus:Landroid/widget/ImageView;

    move-object v1, p9

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->llAgreement:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->relaCountry:Landroid/widget/RelativeLayout;

    move-object v1, p11

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-object v1, p12

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvChooseZero:Landroid/widget/TextView;

    move-object v1, p13

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvNoGetYan:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvRight:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvSmsCode:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvTitle2:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvXieyi:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;
    .registers 23

    move-object/from16 v0, p0

    const v1, 0x7f0900a8

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_df

    const v1, 0x7f090176

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_df

    const v1, 0x7f09016f

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_df

    const v1, 0x7f090178

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_df

    const v1, 0x7f090226

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_df

    const v1, 0x7f090204

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_df

    const v1, 0x7f09021b

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_df

    const v1, 0x7f090357

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_df

    const v1, 0x7f0904b0

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_df

    const v1, 0x7f0905f6

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_df

    .line 190
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v14

    const v1, 0x7f090728

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_df

    const v1, 0x7f090757

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_df

    const v1, 0x7f090773

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_df

    const v1, 0x7f0906d3

    .line 211
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_df

    const v1, 0x7f090785

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_df

    const v1, 0x7f090787

    .line 223
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_df

    const v1, 0x7f090791

    .line 229
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_df

    .line 234
    new-instance v1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v21}, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 238
    :cond_df
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;
    .registers 5

    const v0, 0x7f0c0078

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
