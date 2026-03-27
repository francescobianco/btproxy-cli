.class public Lcom/keephealth/android/base/refresh/BaseRefreshActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BaseRefreshActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/base/refresh/BaseRefreshActivity;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/base/refresh/BaseRefreshActivity;)V
    .registers 3

    .line 21
    invoke-virtual {p1}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity_ViewBinding;-><init>(Lcom/keephealth/android/base/refresh/BaseRefreshActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/base/refresh/BaseRefreshActivity;Landroid/view/View;)V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity_ViewBinding;->target:Lcom/keephealth/android/base/refresh/BaseRefreshActivity;

    .line 28
    const-string v0, "field \'flTop\'"

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090196

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->flTop:Landroid/widget/FrameLayout;

    .line 29
    const-string v0, "field \'flBottom\'"

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090191

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->flBottom:Landroid/widget/FrameLayout;

    .line 30
    const-string v0, "field \'mRecyclerView\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0904a7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    const-string v0, "field \'mRefreshLayout\'"

    const-class v1, Lcom/keephealth/android/views/RecyclerRefreshLayout;

    const v2, 0x7f0904a6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/RecyclerRefreshLayout;

    iput-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity_ViewBinding;->target:Lcom/keephealth/android/base/refresh/BaseRefreshActivity;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity_ViewBinding;->target:Lcom/keephealth/android/base/refresh/BaseRefreshActivity;

    .line 41
    iput-object v1, v0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->flTop:Landroid/widget/FrameLayout;

    .line 42
    iput-object v1, v0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->flBottom:Landroid/widget/FrameLayout;

    .line 43
    iput-object v1, v0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    iput-object v1, v0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    return-void

    .line 38
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
