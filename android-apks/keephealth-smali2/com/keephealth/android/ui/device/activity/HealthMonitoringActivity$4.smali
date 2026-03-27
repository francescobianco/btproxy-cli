.class Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;
.super Ljava/lang/Object;
.source "HealthMonitoringActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/WheelViewCanDialog$OnSelectClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->setXueTang()V
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

    .line 293
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(DD)V
    .registers 11

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double v2, p1, v0

    .line 297
    invoke-static {v2, v3}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    mul-double/2addr v0, p3

    .line 298
    invoke-static {v0, v1}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    .line 299
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

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

    invoke-static {p1, p2}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mmol/L"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1004c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-static {p1, p2}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 302
    invoke-static {p3, p4}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    mul-float/2addr p3, p2

    float-to-int p2, p3

    .line 303
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "valueBefore:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "gfe332w"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "valueBack:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "calibrationHeart"

    invoke-static {p4, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p4

    iput p4, p3, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->calibrationHeart:I

    .line 306
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "calibrationPressFz"

    invoke-static {p4, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p4

    iput p4, p3, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->calibrationPressFz:I

    .line 307
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "calibrationPressSs"

    invoke-static {p4, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p4

    iput p4, p3, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->calibrationPressSs:I

    .line 310
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "calibrationCanBefore"

    sget v0, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    invoke-static {p3, p4, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 311
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "calibrationCanBack"

    sget v0, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    invoke-static {p3, p4, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 313
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p3

    iget-object p4, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->TAG:Ljava/lang/String;
    invoke-static {p4}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->access$200(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->calibrationHeart:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget v1, v1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->calibrationPressFz:I

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget v2, v2, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->calibrationPressSs:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/keephealth/android/util/ble/CmdHelper;->sendBloodCose(IIIII)[B

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4$1;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;)V

    invoke-virtual {p3, p4, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method
