.class public Lcom/keephealth/android/childmodule/bean/MarkBean;
.super Ljava/lang/Object;
.source "MarkBean.java"


# instance fields
.field private coinTotalSize:I

.field private markReuslt:I

.field private status:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoinTotalSize()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/MarkBean;->coinTotalSize:I

    return v0
.end method

.method public getMarkReuslt()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/MarkBean;->markReuslt:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/MarkBean;->status:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/MarkBean;->type:I

    return v0
.end method

.method public setCoinTotalSize(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/MarkBean;->coinTotalSize:I

    return-void
.end method

.method public setMarkReuslt(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/MarkBean;->markReuslt:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/MarkBean;->status:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/MarkBean;->type:I

    return-void
.end method
