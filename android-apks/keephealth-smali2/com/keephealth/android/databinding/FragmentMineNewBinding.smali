.class public final Lcom/keephealth/android/databinding/FragmentMineNewBinding;
.super Ljava/lang/Object;
.source "FragmentMineNewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barBgTitle:Landroid/widget/RelativeLayout;

.field public final btnUnbind:Landroid/widget/Button;

.field public final ilAbout:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilAccount:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilFAQ:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilFeedBack:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilSystemSet:Lcom/keephealth/android/views/ItemLableValue;

.field public final ivHeader:Landroid/widget/ImageView;

.field public final layoutMedal:Landroid/widget/RelativeLayout;

.field public final mainTitle:Landroid/widget/RelativeLayout;

.field public final medalRecycle:Landroidx/recyclerview/widget/RecyclerView;

.field public final medalRes:Landroid/widget/ImageView;

.field public final medalUnachieve:Landroid/widget/LinearLayout;

.field public final rlLayout:Landroid/widget/RelativeLayout;

.field private final rootView:Lcom/keephealth/android/views/StretchScrollView;

.field public final tvToLogin:Landroid/widget/TextView;

.field public final tvUserName:Landroid/widget/TextView;

.field public final txtTag:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/views/StretchScrollView;Landroid/widget/RelativeLayout;Landroid/widget/Button;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 21

    move-object v0, p0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->rootView:Lcom/keephealth/android/views/StretchScrollView;

    move-object v1, p2

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->barBgTitle:Landroid/widget/RelativeLayout;

    move-object v1, p3

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->btnUnbind:Landroid/widget/Button;

    move-object v1, p4

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->ilAbout:Lcom/keephealth/android/views/ItemLableValue;

    move-object v1, p5

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->ilAccount:Lcom/keephealth/android/views/ItemLableValue;

    move-object v1, p6

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->ilFAQ:Lcom/keephealth/android/views/ItemLableValue;

    move-object v1, p7

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->ilFeedBack:Lcom/keephealth/android/views/ItemLableValue;

    move-object v1, p8

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->ilSystemSet:Lcom/keephealth/android/views/ItemLableValue;

    move-object v1, p9

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->ivHeader:Landroid/widget/ImageView;

    move-object v1, p10

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->layoutMedal:Landroid/widget/RelativeLayout;

    move-object v1, p11

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->mainTitle:Landroid/widget/RelativeLayout;

    move-object v1, p12

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->medalRecycle:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p13

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->medalRes:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->medalUnachieve:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 102
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->rlLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p16

    .line 103
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->tvToLogin:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 104
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->tvUserName:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 105
    iput-object v1, v0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->txtTag:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentMineNewBinding;
    .registers 23

    move-object/from16 v0, p0

    const v1, 0x7f090081

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_de

    const v1, 0x7f0900bc

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_de

    const v1, 0x7f0901c5

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v7, :cond_de

    const v1, 0x7f0901c6

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v8, :cond_de

    const v1, 0x7f0901d7

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v9, :cond_de

    const v1, 0x7f0901d8

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v10, :cond_de

    const v1, 0x7f0901ee

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v11, :cond_de

    const v1, 0x7f0902b0

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_de

    const v1, 0x7f090315

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_de

    const v1, 0x7f0903e6

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    if-eqz v14, :cond_de

    const v1, 0x7f090402

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v15, :cond_de

    const v1, 0x7f090403

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_de

    const v1, 0x7f090404

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/LinearLayout;

    if-eqz v17, :cond_de

    const v1, 0x7f0904f4

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RelativeLayout;

    if-eqz v18, :cond_de

    const v1, 0x7f0906fe

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_de

    const v1, 0x7f09070a

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_de

    const v1, 0x7f09079f

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_de

    .line 237
    new-instance v1, Lcom/keephealth/android/databinding/FragmentMineNewBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Lcom/keephealth/android/views/StretchScrollView;

    invoke-direct/range {v3 .. v21}, Lcom/keephealth/android/databinding/FragmentMineNewBinding;-><init>(Lcom/keephealth/android/views/StretchScrollView;Landroid/widget/RelativeLayout;Landroid/widget/Button;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 241
    :cond_de
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/FragmentMineNewBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentMineNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentMineNewBinding;
    .registers 5

    const v0, 0x7f0c010a

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 124
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentMineNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->getRoot()Lcom/keephealth/android/views/StretchScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/keephealth/android/views/StretchScrollView;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/databinding/FragmentMineNewBinding;->rootView:Lcom/keephealth/android/views/StretchScrollView;

    return-object v0
.end method
