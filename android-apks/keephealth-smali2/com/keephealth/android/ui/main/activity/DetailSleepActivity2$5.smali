.class Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "DetailSleepActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

.field final synthetic val$stXaxis:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;Ljava/util/List;)V
    .registers 3

    .line 829
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .registers 13

    const-string v0, "modifiedTime11:"

    const-string v1, "modifiedTime22:"

    const-string v2, "stXaxis.get((int) value):"

    const-string v3, "modifiedTime11_start:"

    .line 842
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, ""

    const-string v6, "yty7"

    if-lez v4, :cond_11e

    float-to-int p1, p1

    if-nez p1, :cond_20

    .line 845
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 847
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "index:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "  stXaxis.size():"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    const/16 v7, 0xa

    const/16 v8, 0xc

    const/4 v9, 0x1

    const-string v10, "HH:mm"

    if-ne v4, v9, :cond_b8

    .line 849
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    if-ne p1, v1, :cond_11d

    .line 852
    :try_start_5c
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 855
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 859
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 862
    invoke-virtual {p1, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 865
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->endTime:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->access$300(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)Ljava/lang/String;

    move-result-object p1
    :try_end_b2
    .catch Ljava/text/ParseException; {:try_start_5c .. :try_end_b2} :catch_b3

    return-object p1

    :catch_b3
    move-exception p1

    .line 873
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_11d

    .line 878
    :cond_b8
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_11d

    .line 881
    :try_start_c2
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 887
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 890
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 891
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {v3, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 897
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->endTime:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->access$300(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)Ljava/lang/String;

    move-result-object p1
    :try_end_118
    .catch Ljava/text/ParseException; {:try_start_c2 .. :try_end_118} :catch_119

    return-object p1

    :catch_119
    move-exception p1

    .line 905
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :cond_11d
    :goto_11d
    return-object v5

    :cond_11e
    float-to-int p1, p1

    if-eqz p1, :cond_127

    const/16 v0, 0x24

    if-ne p1, v0, :cond_126

    goto :goto_127

    :cond_126
    return-object v5

    .line 914
    :cond_127
    :goto_127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "modifiedTime33:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
