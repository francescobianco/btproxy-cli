.class public Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory$DiscoveryType;
.super Ljava/lang/Object;
.source "BluzDeviceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscoveryType"
.end annotation


# static fields
.field public static final DISCOVERY_A2DP:I = 0x2

.field public static final DISCOVERY_NORMAL:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
