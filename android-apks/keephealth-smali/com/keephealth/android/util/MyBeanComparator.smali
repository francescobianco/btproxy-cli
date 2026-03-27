.class public Lcom/keephealth/android/util/MyBeanComparator;
.super Ljava/lang/Object;
.source "MyBeanComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;",
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
.method public compare(Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;)I
    .registers 3

    .line 10
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 7
    check-cast p1, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    check-cast p2, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/util/MyBeanComparator;->compare(Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;)I

    move-result p1

    return p1
.end method
