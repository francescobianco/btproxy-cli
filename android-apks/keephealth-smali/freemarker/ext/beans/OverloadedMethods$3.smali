.class Lfreemarker/ext/beans/OverloadedMethods$3;
.super Lfreemarker/ext/beans/OverloadedMethods$DelayedCallSignatureToString;
.source "OverloadedMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/OverloadedMethods;->getUnwrappedActualParameterTypes([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/beans/OverloadedMethods;


# direct methods
.method constructor <init>(Lfreemarker/ext/beans/OverloadedMethods;[Ljava/lang/Object;)V
    .registers 3

    .line 241
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedMethods$3;->this$0:Lfreemarker/ext/beans/OverloadedMethods;

    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/OverloadedMethods$DelayedCallSignatureToString;-><init>(Lfreemarker/ext/beans/OverloadedMethods;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method argumentToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_9

    .line 245
    check-cast p1, Ljava/lang/Class;

    .line 246
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e

    :cond_9
    const/4 p1, 0x0

    .line 247
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->getShortClassNameOfObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_e
    return-object p1
.end method
