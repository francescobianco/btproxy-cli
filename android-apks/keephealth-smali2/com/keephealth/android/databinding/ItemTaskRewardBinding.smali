.class public final Lcom/keephealth/android/databinding/ItemTaskRewardBinding;
.super Ljava/lang/Object;
.source "ItemTaskRewardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemTaskRewardCon:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final taskLinIcon:Landroid/widget/LinearLayout;

.field public final taskRewardDuihuanTv:Landroid/widget/TextView;

.field public final taskRewardItemImg:Landroid/widget/ImageView;

.field public final taskRewardItemTv:Landroid/widget/TextView;

.field public final taskRewardPriceImg:Landroid/widget/ImageView;

.field public final taskRewardPriceTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 9

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    iput-object p2, p0, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->itemTaskRewardCon:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    iput-object p3, p0, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->taskLinIcon:Landroid/widget/LinearLayout;

    .line 53
    iput-object p4, p0, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->taskRewardDuihuanTv:Landroid/widget/TextView;

    .line 54
    iput-object p5, p0, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->taskRewardItemImg:Landroid/widget/ImageView;

    .line 55
    iput-object p6, p0, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->taskRewardItemTv:Landroid/widget/TextView;

    .line 56
    iput-object p7, p0, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->taskRewardPriceImg:Landroid/widget/ImageView;

    .line 57
    iput-object p8, p0, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->taskRewardPriceTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemTaskRewardBinding;
    .registers 10

    .line 87
    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0905c4

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_53

    const v0, 0x7f0905c5

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_53

    const v0, 0x7f0905c6

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_53

    const v0, 0x7f0905c7

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_53

    const v0, 0x7f0905c8

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_53

    const v0, 0x7f0905c9

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_53

    .line 125
    new-instance p0, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v8}, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object p0

    .line 129
    :cond_53
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemTaskRewardBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemTaskRewardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemTaskRewardBinding;
    .registers 5

    const v0, 0x7f0c013b

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemTaskRewardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemTaskRewardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
