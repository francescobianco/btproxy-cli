.class public Lcom/keephealth/android/model/net/CanceStravalAuthBean;
.super Ljava/lang/Object;
.source "CanceStravalAuthBean.java"


# instance fields
.field private code:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/keephealth/android/model/net/CanceStravalAuthBean;->code:I

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 11
    iput p1, p0, Lcom/keephealth/android/model/net/CanceStravalAuthBean;->code:I

    return-void
.end method
