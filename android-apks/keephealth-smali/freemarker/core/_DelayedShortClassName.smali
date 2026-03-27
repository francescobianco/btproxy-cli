.class public Lfreemarker/core/_DelayedShortClassName;
.super Lfreemarker/core/_DelayedConversionToString;
.source "_DelayedShortClassName.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lfreemarker/core/_DelayedConversionToString;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doConversion(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 32
    check-cast p1, Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
