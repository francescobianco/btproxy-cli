.class public Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;
.super Ljava/lang/Object;
.source "PinyinSortStrategy.java"

# interfaces
.implements Lcom/keephealth/android/util/strategy/ISortStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSameASCII(Ljava/util/List;II)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;II)Z"
        }
    .end annotation

    .line 96
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/CountryOrRegion;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getSortLetters()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p2, :cond_16

    const/4 p3, 0x1

    :cond_16
    return p3
.end method


# virtual methods
.method public getFirstOrLastPositionForSection(Ljava/util/List;IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;IZ)I"
        }
    .end annotation

    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p3, :cond_13

    const/4 p3, 0x0

    :goto_7
    if-ge p3, v0, :cond_21

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;->isSameASCII(Ljava/util/List;II)Z

    move-result v1

    if-eqz v1, :cond_10

    return p3

    :cond_10
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_13
    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-lez v0, :cond_21

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;->isSameASCII(Ljava/util/List;II)Z

    move-result p3

    if-eqz p3, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_21
    const/4 p1, -0x1

    return p1
.end method

.method public getPinyinOrEnglish(Lcom/keephealth/android/model/bean/CountryOrRegion;)Ljava/lang/String;
    .registers 5

    .line 136
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getName()Ljava/lang/String;

    move-result-object p1

    .line 137
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ,pinyin = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getPinyinOrEnglish"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSectionForPosition(Ljava/util/List;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;I)I"
        }
    .end annotation

    .line 57
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/CountryOrRegion;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getSortLetters()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getSideBarSortSectionFirstShowPosition(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->getPositionForSection(I)I

    move-result p1

    return p1
.end method

.method public getSideBarSortShowItemArray(Ljava/util/List;Landroid/content/Context;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;",
            "Landroid/content/Context;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 103
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_22

    .line 106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/CountryOrRegion;

    .line 107
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getSortLetters()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 109
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 112
    :cond_22
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getSortLetters(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "#"

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 151
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 153
    const-string v0, "[A-Z]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1f
    return-object v1
.end method

.method public getSortTitle(Lcom/keephealth/android/model/bean/CountryOrRegion;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 52
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getSortLetters()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSortedCountryOrRegionList(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy$1;-><init>(Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public getStrokeCount(Ljava/lang/String;Landroid/content/Context;)I
    .registers 3

    const/4 p1, -0x1

    return p1
.end method
