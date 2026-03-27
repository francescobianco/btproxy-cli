.class public final Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;
.super Ljava/lang/Object;
.source "ActivityRewardRecordBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layoutMain:Landroid/widget/RelativeLayout;

.field public final recordIconNodataImg:Landroid/widget/ImageView;

.field public final rewardRecordAll:Landroid/widget/TextView;

.field public final rewardRecordLin:Landroid/widget/LinearLayout;

.field public final rewardRecordRecycler:Lcom/keephealth/android/views/NonScrollRecyclerView;

.field public final rewardRecordTime:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvRewardRecordIconNodata:Landroid/widget/TextView;

.field public final tvRewardRecordIconNodataTwo:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/NonScrollRecyclerView;Landroid/widget/TextView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 11

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->layoutMain:Landroid/widget/RelativeLayout;

    .line 60
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->recordIconNodataImg:Landroid/widget/ImageView;

    .line 61
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordAll:Landroid/widget/TextView;

    .line 62
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordLin:Landroid/widget/LinearLayout;

    .line 63
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordRecycler:Lcom/keephealth/android/views/NonScrollRecyclerView;

    .line 64
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordTime:Landroid/widget/TextView;

    .line 65
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 66
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->tvRewardRecordIconNodata:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->tvRewardRecordIconNodataTwo:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;
    .registers 12

    .line 97
    move-object v2, p0

    check-cast v2, Landroid/widget/RelativeLayout;

    const v0, 0x7f090492

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_6c

    const v0, 0x7f0904c6

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_6c

    const v0, 0x7f0904c9

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6c

    const v0, 0x7f0904ca

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/keephealth/android/views/NonScrollRecyclerView;

    if-eqz v6, :cond_6c

    const v0, 0x7f0904cb

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_6c

    const v0, 0x7f0905f6

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 134
    invoke-static {v1}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v8

    const v0, 0x7f09076f

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_6c

    const v0, 0x7f090770

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_6c

    .line 148
    new-instance p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/NonScrollRecyclerView;Landroid/widget/TextView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 153
    :cond_6c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;
    .registers 5

    const v0, 0x7f0c007b

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
