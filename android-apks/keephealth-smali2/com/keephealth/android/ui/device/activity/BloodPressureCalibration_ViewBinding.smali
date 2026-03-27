.class public Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;
.super Ljava/lang/Object;
.source "BloodPressureCalibration_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

.field private view7f0900b0:Landroid/view/View;

.field private view7f09016b:Landroid/view/View;

.field private view7f09016d:Landroid/view/View;

.field private view7f09016e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V
    .registers 3

    .line 28
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;Landroid/view/View;)V
    .registers 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    .line 36
    const-string v0, "field \'etHeart\' and method \'setHeartRate\'"

    const v1, 0x7f09016b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    const-string v2, "field \'etHeart\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etHeart:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f09016b:Landroid/view/View;

    .line 39
    new-instance v1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const-string v0, "field \'etPressSs\' and method \'setPressSs\'"

    const v1, 0x7f09016e

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    const-string v2, "field \'etPressSs\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etPressSs:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f09016e:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const-string v0, "field \'etPressFz\' and method \'setPressFz\'"

    const v1, 0x7f09016d

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    const-string v2, "field \'etPressFz\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etPressFz:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f09016d:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-string v0, "field \'tvHeart\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09066a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->tvHeart:Landroid/widget/TextView;

    .line 64
    const-string v0, "field \'tvPressSs\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->tvPressSs:Landroid/widget/TextView;

    .line 65
    const-string v0, "field \'tvPressFz\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906a2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->tvPressFz:Landroid/widget/TextView;

    const v0, 0x7f0900b0

    .line 66
    const-string v1, "method \'onSave\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 67
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f0900b0:Landroid/view/View;

    .line 68
    new-instance v0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    .line 83
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etHeart:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etPressSs:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etPressFz:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->tvHeart:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->tvPressSs:Landroid/widget/TextView;

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->tvPressFz:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f09016b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f09016b:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f09016e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f09016e:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f09016d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f09016d:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f0900b0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;->view7f0900b0:Landroid/view/View;

    return-void

    .line 80
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
