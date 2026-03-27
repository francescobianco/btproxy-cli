.class public Lcom/keephealth/android/childmodule/bean/TaskCustomBean;
.super Ljava/lang/Object;
.source "TaskCustomBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/keephealth/android/childmodule/bean/TaskCustomBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gold:I

.field private isComplete:Z

.field private time:Ljava/lang/String;

.field private times:Ljava/lang/String;

.field private titleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean$1;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/TaskCustomBean$1;-><init>()V

    sput-object v0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->isComplete:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->titleName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->time:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->times:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->gold:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getGold()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->gold:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->times:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleName()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->titleName:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->isComplete:Z

    return v0
.end method

.method public setComplete(Z)V
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->isComplete:Z

    return-void
.end method

.method public setGold(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->gold:I

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->time:Ljava/lang/String;

    return-void
.end method

.method public setTimes(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->times:Ljava/lang/String;

    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->titleName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 44
    iget-boolean p2, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->isComplete:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 45
    iget-object p2, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->titleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->times:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget p2, p0, Lcom/keephealth/android/childmodule/bean/TaskCustomBean;->gold:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
