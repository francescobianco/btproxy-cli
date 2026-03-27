.class public Lfreemarker/ext/beans/DateModel;
.super Lfreemarker/ext/beans/BeanModel;
.source "DateModel.java"

# interfaces
.implements Lfreemarker/template/TemplateDateModel;


# static fields
.field static final FACTORY:Lfreemarker/ext/util/ModelFactory;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lfreemarker/ext/beans/DateModel$1;

    invoke-direct {v0}, Lfreemarker/ext/beans/DateModel$1;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/DateModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/BeanModel;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;)V

    .line 59
    instance-of v0, p1, Ljava/sql/Date;

    if-eqz v0, :cond_b

    const/4 p1, 0x2

    .line 60
    iput p1, p0, Lfreemarker/ext/beans/DateModel;->type:I

    goto :goto_21

    .line 61
    :cond_b
    instance-of v0, p1, Ljava/sql/Time;

    if-eqz v0, :cond_13

    const/4 p1, 0x1

    .line 62
    iput p1, p0, Lfreemarker/ext/beans/DateModel;->type:I

    goto :goto_21

    .line 63
    :cond_13
    instance-of p1, p1, Ljava/sql/Timestamp;

    if-eqz p1, :cond_1b

    const/4 p1, 0x3

    .line 64
    iput p1, p0, Lfreemarker/ext/beans/DateModel;->type:I

    goto :goto_21

    .line 66
    :cond_1b
    invoke-virtual {p2}, Lfreemarker/ext/beans/BeansWrapper;->getDefaultDateType()I

    move-result p1

    iput p1, p0, Lfreemarker/ext/beans/DateModel;->type:I

    :goto_21
    return-void
.end method


# virtual methods
.method public getAsDate()Ljava/util/Date;
    .registers 2

    .line 71
    iget-object v0, p0, Lfreemarker/ext/beans/DateModel;->object:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateType()I
    .registers 2

    .line 75
    iget v0, p0, Lfreemarker/ext/beans/DateModel;->type:I

    return v0
.end method
