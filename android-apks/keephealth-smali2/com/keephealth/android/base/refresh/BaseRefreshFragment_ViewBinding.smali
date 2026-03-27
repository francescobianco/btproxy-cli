.class public Lcom/keephealth/android/base/refresh/BaseRefreshFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BaseRefreshFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/base/refresh/BaseRefreshFragment;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/base/refresh/BaseRefreshFragment;Landroid/view/View;)V
    .registers 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment_ViewBinding;->target:Lcom/keephealth/android/base/refresh/BaseRefreshFragment;

    .line 23
    const-string v0, "field \'flTop\'"

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090196

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->flTop:Landroid/widget/FrameLayout;

    .line 24
    const-string v0, "field \'flBottom\'"

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090191

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->flBottom:Landroid/widget/FrameLayout;

    .line 25
    const-string v0, "field \'mRecyclerView\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0904a7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    const-string v0, "field \'mRefreshLayout\'"

    const-class v1, Lcom/keephealth/android/views/RecyclerRefreshLayout;

    const v2, 0x7f0904a6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/RecyclerRefreshLayout;

    iput-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment_ViewBinding;->target:Lcom/keephealth/android/base/refresh/BaseRefreshFragment;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment_ViewBinding;->target:Lcom/keephealth/android/base/refresh/BaseRefreshFragment;

    .line 36
    iput-object v1, v0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->flTop:Landroid/widget/FrameLayout;

    .line 37
    iput-object v1, v0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->flBottom:Landroid/widget/FrameLayout;

    .line 38
    iput-object v1, v0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    iput-object v1, v0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    return-void

    .line 33
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
