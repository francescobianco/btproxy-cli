.class public Lcom/keephealth/android/ui/main/activity/ScanResultActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ScanResultActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/ScanResultActivity;

.field private view7f0900a5:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/ScanResultActivity;)V
    .registers 3

    .line 24
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/ScanResultActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/ScanResultActivity;Landroid/view/View;)V
    .registers 7

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/ScanResultActivity;

    .line 32
    const-string v0, "field \'ivHeader\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0902b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->ivHeader:Landroid/widget/ImageView;

    .line 33
    const-string v0, "field \'tvName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->tvName:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'btnInvite\' and method \'btnInvite\'"

    const v1, 0x7f0900a5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    const-string v2, "field \'btnInvite\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->btnInvite:Landroid/widget/Button;

    .line 36
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity_ViewBinding;->view7f0900a5:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/keephealth/android/ui/main/activity/ScanResultActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/ScanResultActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/ScanResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-string v0, "field \'tvTips\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->tvTips:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/ScanResultActivity;

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/ScanResultActivity;

    .line 53
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->ivHeader:Landroid/widget/ImageView;

    .line 54
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->tvName:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->btnInvite:Landroid/widget/Button;

    .line 56
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->tvTips:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity_ViewBinding;->view7f0900a5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity_ViewBinding;->view7f0900a5:Landroid/view/View;

    return-void

    .line 50
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
