.class public final Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;
.super Ljava/lang/Object;
.source "ActivityDrinkWaterGoalBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etDrinkWaterGoal:Landroid/widget/EditText;

.field public final ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/EditText;Lcom/keephealth/android/views/ItemToggleLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 37
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    .line 38
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;->ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 39
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;
    .registers 5

    const v0, 0x7f09016a

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v1, :cond_29

    const v0, 0x7f0901d6

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/ItemToggleLayout;

    if-eqz v2, :cond_29

    const v0, 0x7f0903dc

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_29

    .line 87
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;

    check-cast p0, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/EditText;Lcom/keephealth/android/views/ItemToggleLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    .line 90
    :cond_29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;
    .registers 5

    const v0, 0x7f0c0047

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterGoalBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
