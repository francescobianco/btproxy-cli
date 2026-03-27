.class Lcom/keephealth/android/util/WomenHealthUtil$1;
.super Ljava/lang/Object;
.source "WomenHealthUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/WomenHealthUtil;->sendData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/keephealth/android/model/WomenHealthlistBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/keephealth/android/model/WomenHealthlistBean;Lcom/keephealth/android/model/WomenHealthlistBean;)I
    .registers 5

    .line 70
    invoke-virtual {p1}, Lcom/keephealth/android/model/WomenHealthlistBean;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/keephealth/android/model/WomenHealthlistBean;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 67
    check-cast p1, Lcom/keephealth/android/model/WomenHealthlistBean;

    check-cast p2, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/util/WomenHealthUtil$1;->compare(Lcom/keephealth/android/model/WomenHealthlistBean;Lcom/keephealth/android/model/WomenHealthlistBean;)I

    move-result p1

    return p1
.end method
