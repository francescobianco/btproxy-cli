.class Lfreemarker/ext/servlet/IncludePage$1;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "IncludePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/servlet/IncludePage;->execute(Lfreemarker/core/Environment;Ljava/util/Map;[Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateDirectiveBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/servlet/IncludePage;

.field final synthetic val$printWriter:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lfreemarker/ext/servlet/IncludePage;Ljavax/servlet/http/HttpServletResponse;Ljava/io/PrintWriter;)V
    .registers 4

    .line 105
    iput-object p1, p0, Lfreemarker/ext/servlet/IncludePage$1;->this$0:Lfreemarker/ext/servlet/IncludePage;

    iput-object p3, p0, Lfreemarker/ext/servlet/IncludePage$1;->val$printWriter:Ljava/io/PrintWriter;

    invoke-direct {p0, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method


# virtual methods
.method public getWriter()Ljava/io/PrintWriter;
    .registers 2

    .line 108
    iget-object v0, p0, Lfreemarker/ext/servlet/IncludePage$1;->val$printWriter:Ljava/io/PrintWriter;

    return-object v0
.end method
