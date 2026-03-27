.class Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$2;
.super Ljava/lang/Object;
.source "HealthMonitoringActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->postData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100169

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget v3, v3, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->calibrationCanBefore:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mmol/L"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f1004c8

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget v2, v2, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->calibrationCanBack:I

    int-to-double v7, v2

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
