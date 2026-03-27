.class public Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;
.super Ljava/lang/Object;
.source "StrokeSortStrategy.java"

# interfaces
.implements Lcom/keephealth/android/util/strategy/ISortStrategy;


# static fields
.field private static NUMBER_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "StrokeSortStrategy"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    const-string v0, "[^0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSameStrokeSum(Ljava/util/List;II)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;II)Z"
        }
    .end annotation

    .line 92
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/CountryOrRegion;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getStrokeCount()I

    move-result p1

    if-ne p1, p2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
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

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p3, :cond_13

    const/4 p3, 0x0

    :goto_7
    if-ge p3, v0, :cond_21

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;->isSameStrokeSum(Ljava/util/List;II)Z

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

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;->isSameStrokeSum(Ljava/util/List;II)Z

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
    .registers 2

    .line 151
    const-string p1, ""

    return-object p1
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

    .line 52
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/CountryOrRegion;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getStrokeCount()I

    move-result p1

    return p1
.end method

.method public getSideBarSortSectionFirstShowPosition(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;Ljava/lang/String;)I
    .registers 3

    .line 124
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;->numberIntercept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 126
    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->getPositionForSection(I)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    :catch_d
    move-exception p1

    .line 128
    const-string p2, "StrokeSortStrategy"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getSideBarSortShowItemArray(Ljava/util/List;Landroid/content/Context;)[Ljava/lang/String;
    .registers 8
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

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_22

    .line 101
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/CountryOrRegion;

    .line 102
    invoke-virtual {p0, v3, p2}, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;->getSortTitle(Lcom/keephealth/android/model/bean/CountryOrRegion;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 104
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 107
    :cond_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getSortLetters(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 156
    const-string p1, "#"

    return-object p1
.end method

.method public getSortTitle(Lcom/keephealth/android/model/bean/CountryOrRegion;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getStrokeCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100152

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 33
    new-instance v0, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy$1;-><init>(Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public getStrokeCount(Ljava/lang/String;Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 171
    invoke-static {p2}, Lcom/keephealth/android/util/StrokeUtils;->newInstance(Landroid/content/Context;)Lcom/keephealth/android/util/StrokeUtils;

    move-result-object p2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/StrokeUtils;->getStroke(Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/Stroke;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 175
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/Stroke;->getStrokeSum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2b
    const/4 p1, -0x1

    return p1
.end method

.method public numberIntercept(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 140
    sget-object v0, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
