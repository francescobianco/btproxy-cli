.class public Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;
.super Ljava/lang/Object;
.source "DetailBloodPressActivity2_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V
    .registers 3

    .line 23
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;Landroid/view/View;)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    const v0, 0x7f0902bd

    .line 32
    const-string v1, "method \'changeNextDay\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 34
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902c5

    .line 40
    const-string v1, "method \'changePreDay\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    .line 57
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 59
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    return-void

    .line 53
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
