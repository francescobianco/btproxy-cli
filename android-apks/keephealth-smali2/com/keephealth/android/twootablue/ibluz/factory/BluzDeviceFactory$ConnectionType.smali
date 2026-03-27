.class public Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory$ConnectionType;
.super Ljava/lang/Object;
.source "BluzDeviceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionType"
.end annotation


# static fields
.field public static final BLE:Ljava/lang/String; = "BLE"

.field public static final BLE_BR:Ljava/lang/String; = "BLE_BR"

.field public static final EDR:Ljava/lang/String; = "EDR"

.field public static final SPP:Ljava/lang/String; = "SPP"

.field public static final SPP_ONLY:Ljava/lang/String; = "SPP_ONLY"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
