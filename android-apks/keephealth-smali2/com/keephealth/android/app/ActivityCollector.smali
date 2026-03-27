.class public Lcom/keephealth/android/app/ActivityCollector;
.super Ljava/lang/Object;
.source "ActivityCollector.java"


# static fields
.field public static activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addActivity(Landroid/app/Activity;)V
    .registers 2

    .line 14
    sget-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static currentActivity()Landroid/app/Activity;
    .registers 2

    .line 17
    sget-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 18
    sget-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static finishAll()V
    .registers 3

    .line 55
    sget-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 56
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6

    .line 57
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_6

    .line 60
    :cond_1c
    sget-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static firstActivity()Landroid/app/Activity;
    .registers 2

    .line 24
    sget-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 25
    sget-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static intActivity()V
    .registers 3

    .line 43
    sget-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    if-eqz v0, :cond_37

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_37

    const/4 v0, 0x1

    .line 44
    :goto_c
    sget-object v1, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 45
    sget-object v1, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_34

    .line 46
    sget-object v1, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 47
    const-string v1, "gfee332"

    const-string v2, "finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_37
    return-void
.end method

.method public static removeActivity(Landroid/app/Activity;)V
    .registers 2

    .line 30
    sget-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_e

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_e
    return-void
.end method

.method public static sizeActivity()I
    .registers 1

    .line 36
    sget-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 37
    sget-object v0, Lcom/keephealth/android/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method
