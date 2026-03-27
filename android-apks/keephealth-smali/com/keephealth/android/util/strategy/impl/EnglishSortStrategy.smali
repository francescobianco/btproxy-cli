.class public Lcom/keephealth/android/util/strategy/impl/EnglishSortStrategy;
.super Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;
.source "EnglishSortStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EnglishSortStrategy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getPinyinOrEnglish(Lcom/keephealth/android/model/bean/CountryOrRegion;)Ljava/lang/String;
    .registers 5

    .line 24
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {}, Lcom/keephealth/android/util/OtherLanguageCharacterParser;->getInstance()Lcom/keephealth/android/util/OtherLanguageCharacterParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/OtherLanguageCharacterParser;->getEnglishName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CountryOrRegion countryCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ,countryEnglishName:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "EnglishSortStrategy"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSortLetters(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 38
    invoke-super {p0, p1}, Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;->getSortLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStrokeCount(Ljava/lang/String;Landroid/content/Context;)I
    .registers 3

    .line 46
    invoke-super {p0, p1, p2}, Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;->getStrokeCount(Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    return p1
.end method
