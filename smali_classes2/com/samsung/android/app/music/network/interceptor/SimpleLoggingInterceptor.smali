.class public Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 39
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->b:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 141
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    return-wide v0
.end method

.method private static a(Lokhttp3/Headers;)J
    .locals 2

    const-string v0, "Content-Length"

    .line 135
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lokhttp3/Request;)Ljava/lang/String;
    .locals 6

    .line 153
    invoke-virtual {p0}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-virtual {p0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->k()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 156
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 157
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    if-ge v3, v5, :cond_0

    .line 159
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v4, "/"

    .line 163
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lokhttp3/Response;)Z
    .locals 8
    .param p0    # Lokhttp3/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    invoke-virtual {p0}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 116
    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->c()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    .line 126
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->b(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    const-string v0, "chunked"

    const-string v2, "Transfer-Encoding"

    .line 127
    invoke-virtual {p0, v2}, Lokhttp3/Response;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private static b(Lokhttp3/Response;)J
    .locals 2

    .line 131
    invoke-virtual {p0}, Lokhttp3/Response;->g()Lokhttp3/Headers;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->a(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Lokhttp3/Headers;)Z
    .locals 1
    .param p0    # Lokhttp3/Headers;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Content-Encoding"

    .line 148
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "identity"

    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 11
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->a(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 53
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->b:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/util/AndroidUtils;->a(Landroid/content/Context;I)I

    move-result v2

    const/16 v4, 0x7d

    if-gt v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "ReqLog"

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "req ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", importance - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", foreground - "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    const-string v2, "ReqLog"

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "req ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lokhttp3/Response;->h()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "ReqLog"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] body null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v2, "N/A"

    .line 73
    invoke-static {p1}, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->a(Lokhttp3/Response;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lokhttp3/Response;->g()Lokhttp3/Headers;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->b(Lokhttp3/Headers;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_3

    goto/16 :goto_3

    .line 78
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    .line 79
    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->b(J)Z

    .line 80
    invoke-interface {v4}, Lokio/BufferedSource;->c()Lokio/Buffer;

    move-result-object v4

    .line 81
    sget-object v5, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    .line 82
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->a()Lokhttp3/MediaType;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 84
    sget-object v5, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v5}, Lokhttp3/MediaType;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v5

    .line 86
    :cond_4
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->b()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_5

    const-string v0, "ReqLog"

    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "res ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] length - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_5

    .line 90
    invoke-virtual {v4}, Lokio/Buffer;->u()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lokio/Buffer;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v4, 0x1b

    .line 92
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 91
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_2

    :cond_5
    :goto_1
    :try_start_3
    const-string v0, "ReqLog"

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "res ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_2
    :try_start_4
    const-string v3, "ReqLog"

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "res ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_6
    :goto_3
    const-string v0, "ReqLog"

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] no body or encoded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "N/A"

    .line 101
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/network/database/RestApiLogger;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "res ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] error - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReqLog"

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/network/database/RestApiLogger;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 106
    throw p1
.end method
