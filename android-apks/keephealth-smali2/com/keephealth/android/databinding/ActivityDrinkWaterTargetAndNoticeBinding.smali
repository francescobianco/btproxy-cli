.class public final Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;
.super Ljava/lang/Object;
.source "ActivityDrinkWaterTargetAndNoticeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etDrinkWaterGoal:Landroid/widget/EditText;

.field public final ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

.field public final ivNext:Landroid/widget/ImageView;

.field public final llNoticeView:Landroid/widget/LinearLayout;

.field public final llTargetView:Landroid/widget/LinearLayout;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvLightActivity:Landroid/widget/TextView;

.field public final tvModerateActivity:Landroid/widget/TextView;

.field public final tvRegularActivities:Landroid/widget/TextView;

.field public final tvSedentariness:Landroid/widget/TextView;

.field public final tvUnit:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Lcom/keephealth/android/views/ItemToggleLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 14

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->rootView:Landroid/widget/LinearLayout;

    .line 70
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    .line 71
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 72
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->ivNext:Landroid/widget/ImageView;

    .line 73
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->llNoticeView:Landroid/widget/LinearLayout;

    .line 74
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->llTargetView:Landroid/widget/LinearLayout;

    .line 75
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 77
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvLightActivity:Landroid/widget/TextView;

    .line 78
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvModerateActivity:Landroid/widget/TextView;

    .line 79
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvRegularActivities:Landroid/widget/TextView;

    .line 80
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvSedentariness:Landroid/widget/TextView;

    .line 81
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvUnit:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;
    .registers 18

    move-object/from16 v0, p0

    const v1, 0x7f09016a

    .line 112
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_9e

    const v1, 0x7f0901d6

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/keephealth/android/views/ItemToggleLayout;

    if-eqz v6, :cond_9e

    const v1, 0x7f0902b8

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_9e

    const v1, 0x7f090392

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_9e

    const v1, 0x7f0903a7

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_9e

    const v1, 0x7f0903dc

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_9e

    const v1, 0x7f0905f6

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9e

    .line 152
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v11

    const v1, 0x7f09067a

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_9e

    const v1, 0x7f090689

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_9e

    const v1, 0x7f0906ac

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_9e

    const v1, 0x7f0906b8

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_9e

    const v1, 0x7f090704

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_9e

    .line 184
    new-instance v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Lcom/keephealth/android/views/ItemToggleLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 188
    :cond_9e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;
    .registers 5

    const v0, 0x7f0c004b

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
