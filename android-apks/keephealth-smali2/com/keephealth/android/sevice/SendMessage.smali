.class public Lcom/keephealth/android/sevice/SendMessage;
.super Ljava/lang/Object;
.source "SendMessage.java"


# instance fields
.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmText()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/sevice/SendMessage;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getmTitle()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/keephealth/android/sevice/SendMessage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getmType()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/keephealth/android/sevice/SendMessage;->mType:I

    return v0
.end method

.method public setmText(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/sevice/SendMessage;->mText:Ljava/lang/String;

    return-void
.end method

.method public setmTitle(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/sevice/SendMessage;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setmType(I)V
    .registers 2

    .line 13
    iput p1, p0, Lcom/keephealth/android/sevice/SendMessage;->mType:I

    return-void
.end method
