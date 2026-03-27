.class public Lcom/keephealth/android/ui/device/bean/TaskIconBean;
.super Ljava/lang/Object;
.source "TaskIconBean.java"


# instance fields
.field private id:I

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->id:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .registers 2

    .line 12
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->id:I

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->number:Ljava/lang/String;

    return-void
.end method
