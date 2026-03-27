.class public Lfreemarker/ext/beans/StringModel;
.super Lfreemarker/ext/beans/BeanModel;
.source "StringModel.java"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;


# static fields
.field static final FACTORY:Lfreemarker/ext/util/ModelFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lfreemarker/ext/beans/StringModel$1;

    invoke-direct {v0}, Lfreemarker/ext/beans/StringModel$1;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/StringModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/BeanModel;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;)V

    return-void
.end method


# virtual methods
.method public getAsString()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lfreemarker/ext/beans/StringModel;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
