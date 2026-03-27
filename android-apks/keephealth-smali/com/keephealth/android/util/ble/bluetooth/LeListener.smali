.class abstract Lcom/keephealth/android/util/ble/bluetooth/LeListener;
.super Ljava/lang/Object;
.source "LeListener.java"


# instance fields
.field private mTag:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->mTag:Ljava/lang/Object;

    return-void
.end method
