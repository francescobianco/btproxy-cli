.class public Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DialCenterEditActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

.field private view7f0900b3:Landroid/view/View;

.field private view7f090133:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;)V
    .registers 3

    .line 26
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;Landroid/view/View;)V
    .registers 7

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    .line 34
    const-string v0, "field \'dialBackgroud\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090131

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialBackgroud:Landroid/widget/ImageView;

    .line 35
    const-string v0, "field \'dialTheme\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090132

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialTheme:Landroid/widget/ImageView;

    .line 36
    const-string v0, "field \'btnSend\' and method \'sendDialToDevice\'"

    const v1, 0x7f0900b3

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    const-string v2, "field \'btnSend\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    .line 38
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;->view7f0900b3:Landroid/view/View;

    .line 39
    new-instance v1, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const-string v0, "field \'mRecyclerView\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090133

    .line 46
    const-string v1, "method \'selectBackground\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;->view7f090133:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    .line 63
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialBackgroud:Landroid/widget/ImageView;

    .line 64
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialTheme:Landroid/widget/ImageView;

    .line 65
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    .line 66
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;->view7f0900b3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;->view7f0900b3:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;->view7f090133:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;->view7f090133:Landroid/view/View;

    return-void

    .line 60
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
