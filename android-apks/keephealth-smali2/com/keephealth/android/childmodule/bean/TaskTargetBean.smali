.class public Lcom/keephealth/android/childmodule/bean/TaskTargetBean;
.super Ljava/lang/Object;
.source "TaskTargetBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/keephealth/android/childmodule/bean/TaskTargetBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;

.field private gold:I

.field private percent:I

.field private titleName:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean$1;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/TaskTargetBean$1;-><init>()V

    sput-object v0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->titleName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->description:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->gold:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->percent:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGold()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->gold:I

    return v0
.end method

.method public getPercent()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->percent:I

    return v0
.end method

.method public getTitleName()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->titleName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->type:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setGold(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->gold:I

    return-void
.end method

.method public setPercent(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->percent:I

    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->titleName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 25
    iget-object p2, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->titleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget p2, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->gold:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget p2, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->percent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget p2, p0, Lcom/keephealth/android/childmodule/bean/TaskTargetBean;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
