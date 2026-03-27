.class public Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;
.super Ljava/lang/Object;
.source "HealthMonitoringActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

.field private view7f0901ca:Landroid/view/View;

.field private view7f0904b7:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V
    .registers 3

    .line 27
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;Landroid/view/View;)V
    .registers 7

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    .line 35
    const-string v0, "field \'ilHeartTest\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f0901dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilHeartTest:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0907ba

    .line 36
    const-string v1, "field \'viewLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->viewLine:Landroid/view/View;

    .line 37
    const-string v0, "field \'ilTempTest\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f0901f0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilTempTest:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0907bb

    .line 38
    const-string v1, "field \'viewLine2\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->viewLine2:Landroid/view/View;

    .line 39
    const-string v0, "field \'ilBloodPressureCalibration\' and method \'setBloodPressureCalibration\'"

    const v1, 0x7f0901ca

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    const-string v2, "field \'ilBloodPressureCalibration\'"

    const-class v3, Lcom/keephealth/android/views/ItemLableValue;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilBloodPressureCalibration:Lcom/keephealth/android/views/ItemLableValue;

    .line 41
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;->view7f0901ca:Landroid/view/View;

    .line 42
    new-instance v1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-string v0, "field \'tv_content_1\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09072d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_1:Landroid/widget/TextView;

    .line 49
    const-string v0, "field \'tv_content_2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09072e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_2:Landroid/widget/TextView;

    .line 50
    const-string v0, "field \'relative_xuetang\' and method \'setXueTang\'"

    const v1, 0x7f0904b7

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 51
    const-string v0, "field \'relative_xuetang\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->relative_xuetang:Landroid/widget/RelativeLayout;

    .line 52
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;->view7f0904b7:Landroid/view/View;

    .line 53
    new-instance v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    if-eqz v0, :cond_26

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    .line 68
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilHeartTest:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 69
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->viewLine:Landroid/view/View;

    .line 70
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilTempTest:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 71
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->viewLine2:Landroid/view/View;

    .line 72
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilBloodPressureCalibration:Lcom/keephealth/android/views/ItemLableValue;

    .line 73
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_1:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_2:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->relative_xuetang:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;->view7f0901ca:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;->view7f0901ca:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;->view7f0904b7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;->view7f0904b7:Landroid/view/View;

    return-void

    .line 65
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
