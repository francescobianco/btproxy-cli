.class public final Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;
.super Ljava/lang/Object;
.source "FragmentBaseRecyclerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flBottom:Landroid/widget/FrameLayout;

.field public final flTop:Landroid/widget/FrameLayout;

.field public final refreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

.field public final refreshRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/keephealth/android/views/RecyclerRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p2, p0, Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;->flBottom:Landroid/widget/FrameLayout;

    .line 41
    iput-object p3, p0, Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;->flTop:Landroid/widget/FrameLayout;

    .line 42
    iput-object p4, p0, Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;->refreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    .line 43
    iput-object p5, p0, Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;->refreshRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;
    .registers 9

    const v0, 0x7f090191

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_3a

    const v0, 0x7f090196

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_3a

    const v0, 0x7f0904a6

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/keephealth/android/views/RecyclerRefreshLayout;

    if-eqz v6, :cond_3a

    const v0, 0x7f0904a7

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_3a

    .line 97
    new-instance v0, Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/keephealth/android/views/RecyclerRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    .line 100
    :cond_3a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;
    .registers 5

    const v0, 0x7f0c00fe

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/databinding/FragmentBaseRecyclerBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
