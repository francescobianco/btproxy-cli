.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$2;
.super Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;
.source "BluzDeviceBle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    const/4 v1, 0x2

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->writeCharacteristic(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;I)V

    return-void
.end method
