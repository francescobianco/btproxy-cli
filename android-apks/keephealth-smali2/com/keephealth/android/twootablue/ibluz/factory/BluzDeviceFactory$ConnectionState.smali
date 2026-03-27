.class public Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory$ConnectionState;
.super Ljava/lang/Object;
.source "BluzDeviceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionState"
.end annotation


# static fields
.field public static final A2DP_CONNECTED:I = 0x1

.field public static final A2DP_CONNECTING:I = 0x2

.field public static final A2DP_DISCONNECTED:I = 0x3

.field public static final A2DP_FAILURE:I = 0x4

.field public static final A2DP_PAIRING:I = 0x5

.field public static final SPP_CONNECTED:I = 0xb

.field public static final SPP_CONNECTING:I = 0xc

.field public static final SPP_DISCONNECTED:I = 0xd

.field public static final SPP_FAILURE:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
