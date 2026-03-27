.class Lfreemarker/ext/beans/OverloadedMethods$2;
.super Lfreemarker/ext/beans/OverloadedMethods$DelayedCallSignatureToString;
.source "OverloadedMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/OverloadedMethods;->getTMActualParameterTypes(Ljava/util/List;)Lfreemarker/core/_DelayedConversionToString;
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

    .line 224
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedMethods$2;->this$0:Lfreemarker/ext/beans/OverloadedMethods;

    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/OverloadedMethods$DelayedCallSignatureToString;-><init>(Lfreemarker/ext/beans/OverloadedMethods;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method argumentToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 228
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
