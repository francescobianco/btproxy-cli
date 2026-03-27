.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$3;
.super Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;
.source "BluzDeviceEDR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V
    .registers 2

    .line 299
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->writeCharacteristic()V
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$1300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V

    return-void
.end method
