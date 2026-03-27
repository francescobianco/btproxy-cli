.class public Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DialCenterBActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

.field private view7f090363:Landroid/view/View;

.field private view7f09038d:Landroid/view/View;

.field private view7f09039b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;)V
    .registers 3

    .line 28
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;Landroid/view/View;)V
    .registers 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    .line 36
    const-string v0, "field \'llRecommend\' and method \'checkRecommend\'"

    const v1, 0x7f09039b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    const-string v2, "field \'llRecommend\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->llRecommend:Landroid/widget/LinearLayout;

    .line 38
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->view7f09039b:Landroid/view/View;

    .line 39
    new-instance v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const-string v0, "field \'tvRecommend\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906a7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvRecommend:Landroid/widget/TextView;

    const v0, 0x7f090491

    .line 46
    const-string v1, "field \'recommendLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendLine:Landroid/view/View;

    .line 47
    const-string v0, "field \'llCustom\' and method \'checkCustom\'"

    const v1, 0x7f090363

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    const-string v2, "field \'llCustom\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->llCustom:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->view7f090363:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-string v0, "field \'tvCustom\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09063b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvCustom:Landroid/widget/TextView;

    const v0, 0x7f090114

    .line 57
    const-string v1, "field \'customLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customLine:Landroid/view/View;

    .line 58
    const-string v0, "field \'llMine\' and method \'checkMine\'"

    const v1, 0x7f09038d

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    const-string v2, "field \'llMine\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->llMine:Landroid/widget/LinearLayout;

    .line 60
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->view7f09038d:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const-string v0, "field \'tvMine\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090687

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvMine:Landroid/widget/TextView;

    const v0, 0x7f09040b

    .line 68
    const-string v1, "field \'mineLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->mineLine:Landroid/view/View;

    .line 69
    const-string v0, "field \'flFrame\'"

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090049

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->flFrame:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    if-eqz v0, :cond_31

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    .line 79
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->llRecommend:Landroid/widget/LinearLayout;

    .line 80
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvRecommend:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendLine:Landroid/view/View;

    .line 82
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->llCustom:Landroid/widget/LinearLayout;

    .line 83
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvCustom:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customLine:Landroid/view/View;

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->llMine:Landroid/widget/LinearLayout;

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvMine:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->mineLine:Landroid/view/View;

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->flFrame:Landroid/widget/FrameLayout;

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->view7f09039b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->view7f09039b:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->view7f090363:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->view7f090363:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->view7f09038d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;->view7f09038d:Landroid/view/View;

    return-void

    .line 76
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
