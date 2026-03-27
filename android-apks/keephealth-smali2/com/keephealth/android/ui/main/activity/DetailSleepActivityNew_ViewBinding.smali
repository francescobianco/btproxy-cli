.class public Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;
.super Ljava/lang/Object;
.source "DetailSleepActivityNew_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f090648:Landroid/view/View;

.field private view7f09068a:Landroid/view/View;

.field private view7f0906c1:Landroid/view/View;

.field private view7f09071b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V
    .registers 3

    .line 31
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Landroid/view/View;)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    const v0, 0x7f090648

    .line 39
    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f090648:Landroid/view/View;

    .line 41
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0906c1

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 49
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09068a

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 57
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09071b

    .line 63
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 65
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902bd

    .line 71
    const-string v1, "method \'changeNextDay\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 73
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902c5

    .line 79
    const-string v1, "method \'changePreDay\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 80
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 81
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    .line 96
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f090648:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f090648:Landroid/view/View;

    .line 98
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f0906c1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f09068a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 102
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f09071b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;->view7f0902c5:Landroid/view/View;

    return-void

    .line 92
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
