.class Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext$1;
.super Ljavax/el/VariableMapper;
.source "FreeMarkerJspApplicationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;->getVariableMapper()Ljavax/el/VariableMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;


# direct methods
.method constructor <init>(Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext$1;->this$1:Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;

    invoke-direct {p0}, Ljavax/el/VariableMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveVariable(Ljava/lang/String;)Ljavax/el/ValueExpression;
    .registers 4

    .line 144
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext$1;->this$1:Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;

    # getter for: Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;->pageCtx:Lfreemarker/ext/jsp/FreeMarkerPageContext;
    invoke-static {v0}, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;->access$100(Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;)Lfreemarker/ext/jsp/FreeMarkerPageContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->findAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 148
    :cond_e
    # getter for: Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->expressionFactoryImpl:Ljavax/el/ExpressionFactory;
    invoke-static {}, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->access$200()Ljavax/el/ExpressionFactory;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 148
    invoke-virtual {v0, p1, v1}, Ljavax/el/ExpressionFactory;->createValueExpression(Ljava/lang/Object;Ljava/lang/Class;)Ljavax/el/ValueExpression;

    move-result-object p1

    return-object p1
.end method

.method public setVariable(Ljava/lang/String;Ljavax/el/ValueExpression;)Ljavax/el/ValueExpression;
    .registers 6

    .line 155
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext$1;->resolveVariable(Ljava/lang/String;)Ljavax/el/ValueExpression;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext$1;->this$1:Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;

    # getter for: Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;->pageCtx:Lfreemarker/ext/jsp/FreeMarkerPageContext;
    invoke-static {v1}, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;->access$100(Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;)Lfreemarker/ext/jsp/FreeMarkerPageContext;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext$1;->this$1:Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;

    invoke-virtual {p2, v2}, Ljavax/el/ValueExpression;->getValue(Ljavax/el/ELContext;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
