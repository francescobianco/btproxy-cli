.class public final Lcom/keephealth/android/databinding/FragmentRewardViewBinding;
.super Ljava/lang/Object;
.source "FragmentRewardViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final linRewardAdd:Landroid/widget/LinearLayout;

.field public final rewardConRecord:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rewardIconLinear:Landroid/widget/LinearLayout;

.field public final rewardImgStar:Landroid/widget/ImageView;

.field public final rewardRecyclew:Landroidx/recyclerview/widget/RecyclerView;

.field public final rewardTopImg:Landroid/widget/ImageView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvGolds:Landroid/widget/TextView;

.field public final tvIconRecord:Landroid/widget/TextView;

.field public final tvNodata:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 11

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 59
    iput-object p2, p0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->linRewardAdd:Landroid/widget/LinearLayout;

    .line 60
    iput-object p3, p0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardConRecord:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    iput-object p4, p0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardIconLinear:Landroid/widget/LinearLayout;

    .line 62
    iput-object p5, p0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardImgStar:Landroid/widget/ImageView;

    .line 63
    iput-object p6, p0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardRecyclew:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    iput-object p7, p0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardTopImg:Landroid/widget/ImageView;

    .line 65
    iput-object p8, p0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->tvGolds:Landroid/widget/TextView;

    .line 66
    iput-object p9, p0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->tvIconRecord:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->tvNodata:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentRewardViewBinding;
    .registers 14

    const v0, 0x7f09033d

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_76

    const v0, 0x7f0904c3

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_76

    const v0, 0x7f0904c4

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_76

    const v0, 0x7f0904c5

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_76

    const v0, 0x7f0904cc

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_76

    const v0, 0x7f0904cd

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_76

    const v0, 0x7f090748

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_76

    const v0, 0x7f09074a

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_76

    const v0, 0x7f09075a

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_76

    .line 151
    new-instance v0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 155
    :cond_76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 156
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/FragmentRewardViewBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentRewardViewBinding;
    .registers 5

    const v0, 0x7f0c010d

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
