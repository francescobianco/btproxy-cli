.class public Lcom/keephealth/android/model/bean/BPValue;
.super Ljava/lang/Object;
.source "BPValue.java"


# instance fields
.field public value1:I

.field public value2:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    .line 4
    iput v0, p0, Lcom/keephealth/android/model/bean/BPValue;->value1:I

    .line 5
    iput v0, p0, Lcom/keephealth/android/model/bean/BPValue;->value2:I

    return-void
.end method
