.class public Lcom/keephealth/android/model/bean/CountryBean;
.super Ljava/lang/Object;
.source "CountryBean.java"


# instance fields
.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/model/bean/CountryBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/keephealth/android/model/bean/CountryBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/keephealth/android/model/bean/CountryBean;->position:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/model/bean/CountryBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/model/bean/CountryBean;->number:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .registers 2

    .line 13
    iput p1, p0, Lcom/keephealth/android/model/bean/CountryBean;->position:I

    return-void
.end method
