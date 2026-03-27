.class Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy$1;
.super Ljava/lang/Object;
.source "StrokeSortStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;->getSortedCountryOrRegionList(Ljava/util/List;)Ljava/util/List;
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
.field final synthetic this$0:Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy$1;->this$0:Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/keephealth/android/model/bean/CountryOrRegion;Lcom/keephealth/android/model/bean/CountryOrRegion;)I
    .registers 3

    .line 36
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getStrokeCount()I

    move-result p1

    .line 37
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getStrokeCount()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 33
    check-cast p1, Lcom/keephealth/android/model/bean/CountryOrRegion;

    check-cast p2, Lcom/keephealth/android/model/bean/CountryOrRegion;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy$1;->compare(Lcom/keephealth/android/model/bean/CountryOrRegion;Lcom/keephealth/android/model/bean/CountryOrRegion;)I

    move-result p1

    return p1
.end method
