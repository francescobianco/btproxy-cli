.class public final Lcom/keephealth/android/databinding/ActivityAccoutBinding;
.super Ljava/lang/Object;
.source "ActivityAccoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnLogOut:Landroid/widget/Button;

.field public final ilCancelAccount:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilClearData:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilDownload:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilResetPwd:Lcom/keephealth/android/views/ItemLableValue;

.field public final imgRight:Landroid/widget/ImageView;

.field public final imgRightPhone:Landroid/widget/ImageView;

.field public final lineView1:Landroid/view/View;

.field public final lineView2:Landroid/view/View;

.field public final lineView3:Landroid/view/View;

.field public final lineView4:Landroid/view/View;

.field public final rlEmail:Landroid/widget/RelativeLayout;

.field public final rlPhone:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvEmail:Landroid/widget/TextView;

.field public final tvEmailStatus:Landroid/widget/ImageView;

.field public final tvPhone:Landroid/widget/TextView;

.field public final tvPhoneStatus:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 22

    move-object v0, p0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->btnLogOut:Landroid/widget/Button;

    move-object v1, p3

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->ilCancelAccount:Lcom/keephealth/android/views/ItemLableValue;

    move-object v1, p4

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->ilClearData:Lcom/keephealth/android/views/ItemLableValue;

    move-object v1, p5

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->ilDownload:Lcom/keephealth/android/views/ItemLableValue;

    move-object v1, p6

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->ilResetPwd:Lcom/keephealth/android/views/ItemLableValue;

    move-object v1, p7

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->imgRight:Landroid/widget/ImageView;

    move-object v1, p8

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->imgRightPhone:Landroid/widget/ImageView;

    move-object v1, p9

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->lineView1:Landroid/view/View;

    move-object v1, p10

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->lineView2:Landroid/view/View;

    move-object v1, p11

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->lineView3:Landroid/view/View;

    move-object v1, p12

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->lineView4:Landroid/view/View;

    move-object v1, p13

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->rlEmail:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p14

    .line 102
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->rlPhone:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p15

    .line 103
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-object/from16 v1, p16

    .line 104
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->tvEmail:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 105
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->tvEmailStatus:Landroid/widget/ImageView;

    move-object/from16 v1, p18

    .line 106
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->tvPhone:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 107
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->tvPhoneStatus:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityAccoutBinding;
    .registers 24

    move-object/from16 v0, p0

    const v1, 0x7f0900a7

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_df

    const v1, 0x7f0901cd

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v6, :cond_df

    const v1, 0x7f0901ce

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v7, :cond_df

    const v1, 0x7f0901d5

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v8, :cond_df

    const v1, 0x7f0901e6

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v9, :cond_df

    const v1, 0x7f090236

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_df

    const v1, 0x7f090217

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_df

    const v1, 0x7f090344

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_df

    const v1, 0x7f090345

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_df

    const v1, 0x7f090346

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_df

    const v1, 0x7f090347

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_df

    const v1, 0x7f0904eb

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RelativeLayout;

    if-eqz v16, :cond_df

    const v1, 0x7f090503

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/RelativeLayout;

    if-eqz v17, :cond_df

    const v1, 0x7f0905f6

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_df

    .line 220
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v18

    const v1, 0x7f09065a

    .line 223
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_df

    const v1, 0x7f09065d

    .line 229
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/ImageView;

    if-eqz v20, :cond_df

    const v1, 0x7f09069e

    .line 235
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_df

    const v1, 0x7f09069f

    .line 241
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/ImageView;

    if-eqz v22, :cond_df

    .line 246
    new-instance v1, Lcom/keephealth/android/databinding/ActivityAccoutBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v22}, Lcom/keephealth/android/databinding/ActivityAccoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object v1

    .line 251
    :cond_df
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityAccoutBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityAccoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityAccoutBinding;
    .registers 5

    const v0, 0x7f0c001d

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 126
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityAccoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityAccoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
