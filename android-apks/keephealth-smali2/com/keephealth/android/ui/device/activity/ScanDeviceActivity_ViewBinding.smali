.class public Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ScanDeviceActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

.field private view7f0900b4:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V
    .registers 3

    .line 24
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Landroid/view/View;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    .line 32
    const-string v0, "field \'mRecyclerView\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    const-string v0, "field \'mRefreshLayout\'"

    const-class v1, Lcom/keephealth/android/views/RecyclerRefreshLayout;

    const v2, 0x7f0903e1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/RecyclerRefreshLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    .line 34
    const-string v0, "field \'btnSkip\' and method \'tomain\'"

    const v1, 0x7f0900b4

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    const-string v0, "field \'btnSkip\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->btnSkip:Landroid/widget/Button;

    .line 36
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity_ViewBinding;->view7f0900b4:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    .line 52
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    .line 54
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->btnSkip:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity_ViewBinding;->view7f0900b4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity_ViewBinding;->view7f0900b4:Landroid/view/View;

    return-void

    .line 49
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
