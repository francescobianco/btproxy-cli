.class Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BloodPressureCalibration_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$4;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$4;->val$target:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 71
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration_ViewBinding$4;->val$target:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->onSave()V

    return-void
.end method
