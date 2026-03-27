.class public Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CustomFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

.field private view7f0900b3:Landroid/view/View;

.field private view7f090133:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Landroid/view/View;)V
    .registers 7

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    .line 29
    const-string v0, "field \'dialBackgroud\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090131

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    .line 30
    const-string v0, "field \'dialTheme\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090132

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialTheme:Landroid/widget/ImageView;

    .line 31
    const-string v0, "field \'btnSend\' and method \'sendDialToDevice\'"

    const v1, 0x7f0900b3

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 32
    const-string v2, "field \'btnSend\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    .line 33
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;->view7f0900b3:Landroid/view/View;

    .line 34
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const-string v0, "field \'mRecyclerView\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090133

    .line 41
    const-string v1, "method \'selectBackground\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;->view7f090133:Landroid/view/View;

    .line 43
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    .line 58
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    .line 59
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialTheme:Landroid/widget/ImageView;

    .line 60
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    .line 61
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;->view7f0900b3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;->view7f0900b3:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;->view7f090133:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment_ViewBinding;->view7f090133:Landroid/view/View;

    return-void

    .line 55
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
