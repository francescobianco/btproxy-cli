.class public Lcom/keephealth/android/model/bean/DeviceUpdate;
.super Ljava/lang/Object;
.source "DeviceUpdate.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private fileSzie:J

.field private fileUrl:Ljava/lang/String;

.field private forceUpdate:Z

.field private modle:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private update:Z

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSzie()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->fileSzie:J

    return-wide v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getModle()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->modle:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isForceUpdate()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->forceUpdate:Z

    return v0
.end method

.method public isUpdate()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->update:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->description:Ljava/lang/String;

    return-void
.end method

.method public setFileSzie(J)V
    .registers 3

    .line 76
    iput-wide p1, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->fileSzie:J

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public setForceUpdate(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->forceUpdate:Z

    return-void
.end method

.method public setModle(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->modle:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->name:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->update:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DeviceUpdate;->version:Ljava/lang/String;

    return-void
.end method
