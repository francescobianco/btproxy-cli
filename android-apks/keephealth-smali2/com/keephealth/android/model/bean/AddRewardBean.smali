.class public Lcom/keephealth/android/model/bean/AddRewardBean;
.super Ljava/lang/Object;
.source "AddRewardBean.java"


# instance fields
.field private data:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/keephealth/android/model/bean/AddRewardBean;->data:I

    return v0
.end method

.method public setData(I)V
    .registers 2

    .line 13
    iput p1, p0, Lcom/keephealth/android/model/bean/AddRewardBean;->data:I

    return-void
.end method
