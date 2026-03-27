.class Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity$2;
.super Ljava/lang/Object;
.source "CustomTextQ32Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 115
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v0, 0xc

    .line 116
    new-array v1, v0, [B

    fill-array-data v1, :array_7a

    .line 117
    invoke-virtual {p1, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClick: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u89e3\u538b"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intTo4ByteHexArray(J)[B

    move-result-object v1

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexStringNo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " -- "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexStringNo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 123
    new-array v0, v0, [B

    fill-array-data v0, :array_84

    .line 124
    invoke-virtual {p1, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_7a
    .array-data 1
        0x2t
        0x32t
        0x34t
        0x44t
        0x1et
        0x2et
        0x3et
        -0xet
        -0x1t
        -0xft
        -0x7t
        -0x3dt
    .end array-data

    :array_84
    .array-data 1
        0x2t
        0x32t
        0x34t
        0x44t
        0x1ft
        0x2ft
        0x3ft
        -0xet
        -0x1t
        -0xft
        -0x7t
        -0x3dt
    .end array-data
.end method
