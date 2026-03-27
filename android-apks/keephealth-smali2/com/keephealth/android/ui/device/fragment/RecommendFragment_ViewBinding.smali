.class public Lcom/keephealth/android/ui/device/fragment/RecommendFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RecommendFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Landroid/view/View;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    .line 22
    const-string v0, "field \'layoutData\'"

    const-class v1, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const v2, 0x7f090301

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    .line 23
    const-string v0, "field \'mRecyclerView\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    .line 33
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    .line 34
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 30
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
