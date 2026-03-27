.class public Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;
.super Ljava/lang/Object;
.source "RewardSixMonthBean.java"


# instance fields
.field year_month:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getYear_month()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;->year_month:Ljava/lang/String;

    return-object v0
.end method

.method public setYear_month(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;->year_month:Ljava/lang/String;

    return-void
.end method
