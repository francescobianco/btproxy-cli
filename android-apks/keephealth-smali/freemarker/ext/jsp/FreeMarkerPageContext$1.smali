.class Lfreemarker/ext/jsp/FreeMarkerPageContext$1;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "FreeMarkerPageContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/jsp/FreeMarkerPageContext;->include(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/jsp/FreeMarkerPageContext;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lfreemarker/ext/jsp/FreeMarkerPageContext;Ljavax/servlet/http/HttpServletResponse;Ljava/io/PrintWriter;)V
    .registers 4

    .line 399
    iput-object p1, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext$1;->this$0:Lfreemarker/ext/jsp/FreeMarkerPageContext;

    iput-object p3, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext$1;->val$pw:Ljava/io/PrintWriter;

    invoke-direct {p0, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .registers 3

    .line 407
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "JSP-included resource must use getWriter()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .registers 2

    .line 402
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext$1;->val$pw:Ljava/io/PrintWriter;

    return-object v0
.end method
