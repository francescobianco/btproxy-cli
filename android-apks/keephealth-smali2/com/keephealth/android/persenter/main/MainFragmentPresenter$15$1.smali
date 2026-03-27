.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$1;
.super Ljava/lang/Object;
.source "MainFragmentPresenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;",
        ">;"
    }
.end annotation


# instance fields
.field dateFormat:Ljava/text/SimpleDateFormat;

.field final synthetic this$1:Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;)V
    .registers 3

    .line 1025
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$1;->this$1:Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd-HH-mm"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$1;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public compare(Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;)I
    .registers 4

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$1;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object p1, p1, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startTime:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 1034
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$1;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object p2, p2, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startTime:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 1036
    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1
    :try_end_14
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    :catch_15
    move-exception p1

    .line 1038
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1025
    check-cast p1, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    check-cast p2, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$1;->compare(Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;)I

    move-result p1

    return p1
.end method
