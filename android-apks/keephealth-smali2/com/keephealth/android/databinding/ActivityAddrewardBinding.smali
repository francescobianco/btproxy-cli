.class public final Lcom/keephealth/android/databinding/ActivityAddrewardBinding;
.super Ljava/lang/Object;
.source "ActivityAddrewardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addrewardImg:Landroid/widget/ImageView;

.field public final etAddReward:Landroid/widget/TextView;

.field public final iconImgRight:Landroid/widget/ImageView;

.field public final layoutMain:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final nameImgRight:Landroid/widget/ImageView;

.field public final priceImgRight:Landroid/widget/ImageView;

.field public final relaAddrewardIcon:Landroid/widget/RelativeLayout;

.field public final relaAddrewardName:Landroid/widget/RelativeLayout;

.field public final relaAddrewardPrice:Landroid/widget/RelativeLayout;

.field public final relaDeleReword:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvAddName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;)V
    .registers 14

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->addrewardImg:Landroid/widget/ImageView;

    .line 69
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->etAddReward:Landroid/widget/TextView;

    .line 70
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->iconImgRight:Landroid/widget/ImageView;

    .line 71
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->layoutMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->nameImgRight:Landroid/widget/ImageView;

    .line 73
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->priceImgRight:Landroid/widget/ImageView;

    .line 74
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->relaAddrewardIcon:Landroid/widget/RelativeLayout;

    .line 75
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->relaAddrewardName:Landroid/widget/RelativeLayout;

    .line 76
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->relaAddrewardPrice:Landroid/widget/RelativeLayout;

    .line 77
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->relaDeleReword:Landroid/widget/RelativeLayout;

    .line 78
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 79
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->tvAddName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityAddrewardBinding;
    .registers 18

    move-object/from16 v0, p0

    const v1, 0x7f09004d

    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_93

    const v1, 0x7f090171

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_93

    const v1, 0x7f0901c0

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_93

    .line 127
    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f090438

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_93

    const v1, 0x7f09046c

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_93

    const v1, 0x7f0904a8

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_93

    const v1, 0x7f0904aa

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_93

    const v1, 0x7f0904ab

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_93

    const v1, 0x7f0904b2

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    if-eqz v14, :cond_93

    const v1, 0x7f0905f6

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_93

    .line 170
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v15

    const v1, 0x7f09071f

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_93

    .line 178
    new-instance v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    move-object v3, v0

    move-object v4, v8

    invoke-direct/range {v3 .. v16}, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;)V

    return-object v0

    .line 182
    :cond_93
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityAddrewardBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityAddrewardBinding;
    .registers 5

    const v0, 0x7f0c001e

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
