.class final Lfreemarker/ext/dom/JaxenXPathSupport$4;
.super Lorg/jaxen/XPathFunctionContext;
.source "JaxenXPathSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/dom/JaxenXPathSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Lorg/jaxen/XPathFunctionContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/Function;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnresolvableException;
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/jaxen/XPathFunctionContext;->getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/Function;

    move-result-object p1
    :try_end_4
    .catch Lorg/jaxen/UnresolvableException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    const/4 p1, 0x0

    .line 157
    invoke-super {p0, p1, p1, p3}, Lorg/jaxen/XPathFunctionContext;->getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/Function;

    move-result-object p1

    return-object p1
.end method
