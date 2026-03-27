.class public Lcom/keephealth/android/ui/device/bean/CardBean;
.super Ljava/lang/Object;
.source "CardBean.java"


# instance fields
.field private cardIcon:I

.field private cardName:Ljava/lang/String;

.field private index:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/CardBean;->index:I

    .line 17
    iput p2, p0, Lcom/keephealth/android/ui/device/bean/CardBean;->cardIcon:I

    .line 18
    iput-object p3, p0, Lcom/keephealth/android/ui/device/bean/CardBean;->cardName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCardIcon()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/CardBean;->cardIcon:I

    return v0
.end method

.method public getCardName()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/CardBean;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/CardBean;->index:I

    return v0
.end method

.method public setCardIcon(I)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/CardBean;->cardIcon:I

    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/CardBean;->cardName:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/CardBean;->index:I

    return-void
.end method
