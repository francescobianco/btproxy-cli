.class public Lcom/keephealth/android/model/bean/VibrateBean;
.super Ljava/lang/Object;
.source "VibrateBean.java"


# instance fields
.field private mode:Ljava/lang/String;

.field private style:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/keephealth/android/model/bean/VibrateBean;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/keephealth/android/model/bean/VibrateBean;->style:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/keephealth/android/model/bean/VibrateBean;->type:I

    return v0
.end method

.method public setMode(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/model/bean/VibrateBean;->mode:Ljava/lang/String;

    return-void
.end method

.method public setStyle(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/keephealth/android/model/bean/VibrateBean;->style:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 13
    iput p1, p0, Lcom/keephealth/android/model/bean/VibrateBean;->type:I

    return-void
.end method
