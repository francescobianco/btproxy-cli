.class public Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;
.super Ljava/lang/Object;
.source "HealthReminderActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;

.field private view7f0901de:Landroid/view/View;

.field private view7f0901e0:Landroid/view/View;

.field private view7f0901f5:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;)V
    .registers 3

    .line 26
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;Landroid/view/View;)V
    .registers 7

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;

    .line 34
    const-string v0, "field \'ilWater\' and method \'WaterWarn\'"

    const v1, 0x7f0901f5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    const-string v2, "field \'ilWater\'"

    const-class v3, Lcom/keephealth/android/views/ItemLableValue;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->ilWater:Lcom/keephealth/android/views/ItemLableValue;

    .line 36
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->view7f0901f5:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0907ba

    .line 43
    const-string v1, "field \'viewLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->viewLine:Landroid/view/View;

    const v0, 0x7f0907b9

    .line 44
    const-string v1, "field \'viewHeatWarn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->viewHeatWarn:Landroid/view/View;

    .line 45
    const-string v0, "field \'ilHeartWarn\' and method \'HeartWarn\'"

    const v1, 0x7f0901de

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    const-string v2, "field \'ilHeartWarn\'"

    const-class v3, Lcom/keephealth/android/views/ItemLableValue;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->ilHeartWarn:Lcom/keephealth/android/views/ItemLableValue;

    .line 47
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->view7f0901de:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e0

    .line 54
    const-string v1, "method \'longSit\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->view7f0901e0:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;

    if-eqz v0, :cond_25

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;

    .line 71
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->ilWater:Lcom/keephealth/android/views/ItemLableValue;

    .line 72
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->viewLine:Landroid/view/View;

    .line 73
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->viewHeatWarn:Landroid/view/View;

    .line 74
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->ilHeartWarn:Lcom/keephealth/android/views/ItemLableValue;

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->view7f0901f5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->view7f0901f5:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->view7f0901de:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->view7f0901de:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->view7f0901e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;->view7f0901e0:Landroid/view/View;

    return-void

    .line 68
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
