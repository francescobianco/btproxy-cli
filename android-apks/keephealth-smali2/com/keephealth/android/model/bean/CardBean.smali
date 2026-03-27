.class public Lcom/keephealth/android/model/bean/CardBean;
.super Ljava/lang/Object;
.source "CardBean.java"

# interfaces
.implements Lcom/contrarywind/interfaces/IPickerViewData;


# instance fields
.field private cardName:Ljava/lang/String;

.field private id:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/keephealth/android/model/bean/CardBean;->id:I

    .line 18
    iput-object p2, p0, Lcom/keephealth/android/model/bean/CardBean;->cardName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCardName()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/keephealth/android/model/bean/CardBean;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/keephealth/android/model/bean/CardBean;->id:I

    return v0
.end method

.method public getPickerViewText()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/keephealth/android/model/bean/CardBean;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method public setCardName(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/keephealth/android/model/bean/CardBean;->cardName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/keephealth/android/model/bean/CardBean;->id:I

    return-void
.end method
