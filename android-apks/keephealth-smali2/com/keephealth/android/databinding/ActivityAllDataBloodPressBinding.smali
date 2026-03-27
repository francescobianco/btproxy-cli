.class public final Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;
.super Ljava/lang/Object;
.source "ActivityAllDataBloodPressBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layoutNoData:Landroid/widget/LinearLayout;

.field public final mRecyclerView:Landroid/widget/ExpandableListView;

.field public final moduleBaseEmptyTextLitter:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ExpandableListView;Landroid/widget/TextView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;)V
    .registers 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->layoutNoData:Landroid/widget/LinearLayout;

    .line 41
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->mRecyclerView:Landroid/widget/ExpandableListView;

    .line 42
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->moduleBaseEmptyTextLitter:Landroid/widget/TextView;

    .line 43
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;
    .registers 9

    const v0, 0x7f090318

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3b

    const v0, 0x7f0903dc

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ExpandableListView;

    if-eqz v5, :cond_3b

    const v0, 0x7f09040e

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_3b

    const v0, 0x7f0905f6

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 96
    invoke-static {v1}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v7

    .line 98
    new-instance v0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ExpandableListView;Landroid/widget/TextView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;)V

    return-object v0

    .line 101
    :cond_3b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;
    .registers 5

    const v0, 0x7f0c0021

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
