.class public Lcom/keephealth/android/model/bean/LanguageBean;
.super Ljava/lang/Object;
.source "LanguageBean.java"


# instance fields
.field private language:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/keephealth/android/model/bean/LanguageBean;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/keephealth/android/model/bean/LanguageBean;->type:I

    return v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/model/bean/LanguageBean;->language:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 12
    iput p1, p0, Lcom/keephealth/android/model/bean/LanguageBean;->type:I

    return-void
.end method
