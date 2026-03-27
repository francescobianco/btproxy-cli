.class Lcom/keephealth/android/childmodule/bean/TaskCustomBean$1;
.super Ljava/lang/Object;
.source "TaskCustomBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/childmodule/bean/TaskCustomBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/keephealth/android/childmodule/bean/TaskCustomBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/childmodule/bean/TaskCustomBean;
    .registers 3

    .line 28
    new-instance v0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;

    invoke-direct {v0, p1}, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/bean/TaskCustomBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/childmodule/bean/TaskCustomBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/keephealth/android/childmodule/bean/TaskCustomBean;
    .registers 2

    .line 33
    new-array p1, p1, [Lcom/keephealth/android/childmodule/bean/TaskCustomBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/bean/TaskCustomBean$1;->newArray(I)[Lcom/keephealth/android/childmodule/bean/TaskCustomBean;

    move-result-object p1

    return-object p1
.end method
