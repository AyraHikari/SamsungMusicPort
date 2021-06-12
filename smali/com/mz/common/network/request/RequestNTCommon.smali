.class public Lcom/mz/common/network/request/RequestNTCommon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Message;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Lcom/mz/common/network/parser/ParserNTCommon;

.field private g:Lcom/mz/common/network/request/OnConnectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/mz/common/network/request/RequestNTCommon;->k()Lcom/mz/common/network/parser/ParserNTCommon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/mz/common/network/request/RequestNTCommon;->k()Lcom/mz/common/network/parser/ParserNTCommon;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mz/common/network/parser/ParserNTCommon;->a(Landroid/content/Context;Ljava/io/InputStream;)Z

    move-result p2

    .line 60
    invoke-virtual {p0}, Lcom/mz/common/network/request/RequestNTCommon;->k()Lcom/mz/common/network/parser/ParserNTCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/parser/ParserNTCommon;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mz/common/network/request/RequestNTCommon;->a(Ljava/lang/Object;)V

    .line 61
    new-instance v0, Lcom/mz/common/network/request/RequestNTCommon$1;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/mz/common/network/request/RequestNTCommon$1;-><init>(Lcom/mz/common/network/request/RequestNTCommon;ZLandroid/content/Context;Z)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    const-string p2, "code Error"

    .line 81
    invoke-direct {p0, p2}, Lcom/mz/common/network/request/RequestNTCommon;->b(Ljava/lang/String;)V

    .line 83
    :cond_1
    new-instance p2, Lcom/mz/common/network/request/RequestNTCommon$2;

    invoke-direct {p2, p0, p1}, Lcom/mz/common/network/request/RequestNTCommon$2;-><init>(Lcom/mz/common/network/request/RequestNTCommon;Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private a(Landroid/os/Handler;ZLjava/lang/String;)V
    .locals 1

    .line 113
    new-instance v0, Lcom/mz/common/network/request/RequestNTCommon$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/mz/common/network/request/RequestNTCommon$3;-><init>(Lcom/mz/common/network/request/RequestNTCommon;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/mz/common/network/request/RequestNTCommon;Ljava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/mz/common/network/request/RequestNTCommon;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/mz/common/network/request/RequestNTCommon;->e:Landroid/content/Context;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;ZLcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V
    .locals 1

    .line 94
    sget-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p5, v0, :cond_1

    if-eqz p2, :cond_0

    .line 97
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "NETWORK_FAIL"

    .line 99
    invoke-direct {p0, p3, p4, p2}, Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/os/Handler;ZLjava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "SERVER_FAIL"

    .line 103
    invoke-direct {p0, p3, p4, p1}, Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/os/Handler;ZLjava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p5, p1, :cond_2

    const-string p1, "TIMEOUT"

    .line 106
    invoke-direct {p0, p3, p4, p1}, Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/os/Handler;ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "SERVER_FAIL"

    .line 108
    invoke-direct {p0, p3, p4, p1}, Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/os/Handler;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/mz/common/network/request/RequestNTCommon;->a:Landroid/os/Message;

    return-void
.end method

.method public a(Lcom/mz/common/network/parser/ParserNTCommon;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/mz/common/network/request/RequestNTCommon;->f:Lcom/mz/common/network/parser/ParserNTCommon;

    return-void
.end method

.method public a(Lcom/mz/common/network/request/OnConnectionListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mz/common/network/request/RequestNTCommon;->g:Lcom/mz/common/network/request/OnConnectionListener;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/mz/common/network/request/RequestNTCommon;->c:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 172
    iput-object p1, p0, Lcom/mz/common/network/request/RequestNTCommon;->b:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x5dc

    return v0
.end method

.method public d()Lcom/mz/common/network/request/OnConnectionListener;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon;->g:Lcom/mz/common/network/request/OnConnectionListener;

    return-object v0
.end method

.method public e()V
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/mz/common/network/request/RequestNTCommon;->d()Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/mz/common/network/request/RequestNTCommon;->d()Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mz/common/network/request/RequestNTCommon;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mz/common/network/request/RequestNTCommon;->l()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p0, v2}, Lcom/mz/common/network/request/OnConnectionListener;->onInternetNotSupport(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/net/URL;
    .locals 2

    .line 163
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/mz/common/network/request/RequestNTCommon;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Landroid/content/Context;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon;->e:Landroid/content/Context;

    return-object v0
.end method

.method public k()Lcom/mz/common/network/parser/ParserNTCommon;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon;->f:Lcom/mz/common/network/parser/ParserNTCommon;

    return-object v0
.end method

.method public l()Landroid/os/Message;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon;->a:Landroid/os/Message;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request : ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/request/RequestNTCommon;->g()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/request/RequestNTCommon;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TimeOut: 3000\n"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Body: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/request/RequestNTCommon;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
