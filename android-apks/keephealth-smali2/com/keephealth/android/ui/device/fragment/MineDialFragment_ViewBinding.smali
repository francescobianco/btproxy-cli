.class public Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MineDialFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

.field private view7f090659:Landroid/view/View;

.field private view7f09068b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Landroid/view/View;)V
    .registers 7

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    .line 30
    const-string v0, "field \'mRecyclerViewSystem\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903e0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewSystem:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    const-string v0, "field \'layoutData\'"

    const-class v1, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const v2, 0x7f090301

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    .line 32
    const-string v0, "field \'mRecyclerViewDownload\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewDownload:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    const-string v0, "field \'llDownLoad\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09036e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->llDownLoad:Landroid/widget/LinearLayout;

    .line 34
    const-string v0, "field \'tvEdit\' and method \'toEdit\'"

    const v1, 0x7f090659

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    const-string v2, "field \'tvEdit\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->tvEdit:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;->view7f090659:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09068b

    .line 43
    const-string v1, "method \'toDownLoadHistory\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;->view7f09068b:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    .line 60
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewSystem:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    .line 62
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewDownload:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->llDownLoad:Landroid/widget/LinearLayout;

    .line 64
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->tvEdit:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;->view7f090659:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;->view7f090659:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;->view7f09068b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;->view7f09068b:Landroid/view/View;

    return-void

    .line 57
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
