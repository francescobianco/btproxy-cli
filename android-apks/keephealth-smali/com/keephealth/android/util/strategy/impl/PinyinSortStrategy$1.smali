.class Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy$1;
.super Ljava/lang/Object;
.source "PinyinSortStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;->getSortedCountryOrRegionList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/keephealth/android/model/bean/CountryOrRegion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy$1;->this$0:Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/keephealth/android/model/bean/CountryOrRegion;Lcom/keephealth/android/model/bean/CountryOrRegion;)I
    .registers 6

    .line 33
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 34
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_3d

    .line 36
    :cond_19
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 37
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_3b

    .line 41
    :cond_2e
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getPinyinName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getPinyinName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3b
    :goto_3b
    const/4 p1, 0x1

    return p1

    :cond_3d
    :goto_3d
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 30
    check-cast p1, Lcom/keephealth/android/model/bean/CountryOrRegion;

    check-cast p2, Lcom/keephealth/android/model/bean/CountryOrRegion;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy$1;->compare(Lcom/keephealth/android/model/bean/CountryOrRegion;Lcom/keephealth/android/model/bean/CountryOrRegion;)I

    move-result p1

    return p1
.end method
