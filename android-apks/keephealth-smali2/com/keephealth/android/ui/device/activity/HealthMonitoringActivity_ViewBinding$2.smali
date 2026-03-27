.class Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "HealthMonitoringActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding$2;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 56
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->setXueTang()V

    return-void
.end method
