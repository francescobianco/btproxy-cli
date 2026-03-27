.class Lcom/keephealth/android/persenter/device/CourseViewModel$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "CourseViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/CourseViewModel;->sendCourseData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/CourseViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/CourseViewModel;)V
    .registers 2

    .line 786
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel$1;->this$0:Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 794
    const-string p1, "courseviewmodel"

    const-string v0, "isSendSuccessonFailed:"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 789
    const-string p1, "courseviewmodel"

    const-string v0, "isSendSuccessononSuccess:"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
