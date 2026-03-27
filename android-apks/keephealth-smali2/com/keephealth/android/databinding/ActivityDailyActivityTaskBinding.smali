.class public final Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;
.super Ljava/lang/Object;
.source "ActivityDailyActivityTaskBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cltActivityType:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ctlObtainable:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ctlTarget:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivNextTarget:Landroid/widget/ImageView;

.field public final ivNextType:Landroid/widget/ImageView;

.field public final ivObtainableGold:Landroid/widget/ImageView;

.field public final rlActivityType:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvActivityType:Landroid/widget/TextView;

.field public final tvAutoComplete:Landroid/widget/TextView;

.field public final tvDelete:Landroid/widget/TextView;

.field public final tvObtainableGold:Landroid/widget/TextView;

.field public final tvTarget:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->rootView:Landroid/widget/LinearLayout;

    .line 72
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->cltActivityType:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->ctlObtainable:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->ctlTarget:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->ivNextTarget:Landroid/widget/ImageView;

    .line 76
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->ivNextType:Landroid/widget/ImageView;

    .line 77
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->ivObtainableGold:Landroid/widget/ImageView;

    .line 78
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->rlActivityType:Landroid/widget/RelativeLayout;

    .line 79
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 80
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvActivityType:Landroid/widget/TextView;

    .line 81
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvAutoComplete:Landroid/widget/TextView;

    .line 82
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvDelete:Landroid/widget/TextView;

    .line 83
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvObtainableGold:Landroid/widget/TextView;

    .line 84
    iput-object p14, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvTarget:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;
    .registers 19

    move-object/from16 v0, p0

    const v1, 0x7f0900f0

    .line 115
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_ab

    const v1, 0x7f09010d

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_ab

    const v1, 0x7f09010f

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_ab

    const v1, 0x7f0902e7

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_ab

    const v1, 0x7f0902e9

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_ab

    const v1, 0x7f0902ed

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_ab

    const v1, 0x7f090525

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_ab

    const v1, 0x7f0905f6

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_ab

    .line 161
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v12

    const v1, 0x7f09071e

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_ab

    const v1, 0x7f090723

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_ab

    const v1, 0x7f090732

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_ab

    const v1, 0x7f090761

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_ab

    const v1, 0x7f09077f

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_ab

    .line 193
    new-instance v1, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 197
    :cond_ab
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;
    .registers 5

    const v0, 0x7f0c0030

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 103
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
