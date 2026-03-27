.class public interface abstract Lcom/keephealth/android/util/strategy/ISortStrategy;
.super Ljava/lang/Object;
.source "ISortStrategy.java"


# virtual methods
.method public abstract getFirstOrLastPositionForSection(Ljava/util/List;IZ)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;IZ)I"
        }
    .end annotation
.end method

.method public abstract getPinyinOrEnglish(Lcom/keephealth/android/model/bean/CountryOrRegion;)Ljava/lang/String;
.end method

.method public abstract getSectionForPosition(Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract getSideBarSortSectionFirstShowPosition(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;Ljava/lang/String;)I
.end method

.method public abstract getSideBarSortShowItemArray(Ljava/util/List;Landroid/content/Context;)[Ljava/lang/String;
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
.end method

.method public abstract getSortLetters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSortTitle(Lcom/keephealth/android/model/bean/CountryOrRegion;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSortedCountryOrRegionList(Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract getStrokeCount(Ljava/lang/String;Landroid/content/Context;)I
.end method
