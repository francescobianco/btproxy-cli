.class public Lcom/keephealth/android/util/MyWomenBeanNextComparator;
.super Ljava/lang/Object;
.source "MyWomenBeanNextComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/keephealth/android/model/bean/WomenHealthNext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/keephealth/android/model/bean/WomenHealthNext;Lcom/keephealth/android/model/bean/WomenHealthNext;)I
    .registers 3

    .line 10
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 7
    check-cast p1, Lcom/keephealth/android/model/bean/WomenHealthNext;

    check-cast p2, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/util/MyWomenBeanNextComparator;->compare(Lcom/keephealth/android/model/bean/WomenHealthNext;Lcom/keephealth/android/model/bean/WomenHealthNext;)I

    move-result p1

    return p1
.end method
