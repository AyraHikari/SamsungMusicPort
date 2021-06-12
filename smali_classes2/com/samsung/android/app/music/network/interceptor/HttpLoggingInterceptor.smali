.class public final Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;,
        Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

.field private volatile c:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 34
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->c:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 272
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

.method public static a(Lokhttp3/Headers;)J
    .locals 2

    const-string v0, "Content-Length"

    .line 266
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lokhttp3/Protocol;)Ljava/lang/String;
    .locals 1

    .line 231
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne p0, v0, :cond_0

    const-string p0, "HTTP/1.0"

    goto :goto_0

    :cond_0
    const-string p0, "HTTP/1.1"

    :goto_0
    return-object p0
.end method

.method public static a(Lokhttp3/Response;)Z
    .locals 8

    .line 239
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

    .line 243
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

    .line 253
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const-string v0, "chunked"

    const-string v2, "Transfer-Encoding"

    .line 254
    invoke-virtual {p0, v2}, Lokhttp3/Response;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method public static b(Lokhttp3/Response;)J
    .locals 2

    .line 262
    invoke-virtual {p0}, Lokhttp3/Response;->g()Lokhttp3/Headers;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->a(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Lokhttp3/Headers;)Z
    .locals 1

    const-string v0, "Content-Encoding"

    .line 226
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "identity"

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;)Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->c:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    return-object p0

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "level == null. Use Level.NONE instead."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 116
    iget-object v2, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->c:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    .line 118
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v3

    .line 119
    sget-object v4, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    if-ne v2, v4, :cond_0

    .line 120
    invoke-interface {v1, v3}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    return-object v1

    .line 123
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 124
    sget-object v7, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 126
    :goto_2
    invoke-virtual {v3}, Lokhttp3/Request;->d()Lokhttp3/RequestBody;

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 129
    :goto_3
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->b()Lokhttp3/Connection;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 130
    invoke-interface {v8}, Lokhttp3/Connection;->a()Lokhttp3/Protocol;

    move-result-object v8

    goto :goto_4

    :cond_5
    sget-object v8, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 131
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v3}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->a(Lokhttp3/Protocol;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v2, :cond_6

    if-eqz v6, :cond_6

    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->b()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-byte body)"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 136
    :cond_6
    iget-object v9, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    invoke-interface {v9, v8}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    if-eqz v2, :cond_f

    if-eqz v6, :cond_8

    .line 142
    invoke-virtual {v7}, Lokhttp3/RequestBody;->a()Lokhttp3/MediaType;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 143
    iget-object v11, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->a()Lokhttp3/MediaType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 145
    :cond_7
    invoke-virtual {v7}, Lokhttp3/RequestBody;->b()J

    move-result-wide v11

    cmp-long v11, v11, v8

    if-eqz v11, :cond_8

    .line 146
    iget-object v11, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->b()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 150
    :cond_8
    invoke-virtual {v3}, Lokhttp3/Request;->c()Lokhttp3/Headers;

    move-result-object v11

    .line 151
    invoke-virtual {v11}, Lokhttp3/Headers;->a()I

    move-result v12

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_a

    .line 152
    invoke-virtual {v11, v13}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Content-Type"

    .line 154
    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "Content-Length"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 155
    iget-object v15, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v5}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_e

    if-nez v6, :cond_b

    goto/16 :goto_6

    .line 161
    :cond_b
    invoke-virtual {v3}, Lokhttp3/Request;->c()Lokhttp3/Headers;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b(Lokhttp3/Headers;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 162
    iget-object v5, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--> END "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (encoded body omitted)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 164
    :cond_c
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 165
    invoke-virtual {v7, v5}, Lokhttp3/RequestBody;->a(Lokio/BufferedSink;)V

    .line 167
    sget-object v6, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    .line 168
    invoke-virtual {v7}, Lokhttp3/RequestBody;->a()Lokhttp3/MediaType;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 170
    sget-object v6, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v6}, Lokhttp3/MediaType;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 173
    :cond_d
    iget-object v11, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    const-string v12, ""

    invoke-interface {v11, v12}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 174
    iget-object v11, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    invoke-virtual {v5, v6}, Lokio/Buffer;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 176
    iget-object v5, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--> END "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v7}, Lokhttp3/RequestBody;->b()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-byte body)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-interface {v5, v6}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 160
    :cond_e
    :goto_6
    iget-object v5, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--> END "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 181
    :cond_f
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 182
    invoke-interface {v1, v3}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 183
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 185
    invoke-virtual {v1}, Lokhttp3/Response;->h()Lokhttp3/ResponseBody;

    move-result-object v3

    .line 186
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->b()J

    move-result-wide v11

    cmp-long v7, v11, v8

    if-eqz v7, :cond_10

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-byte"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_10
    const-string v7, "unknown-length"

    .line 188
    :goto_8
    iget-object v8, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<-- "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->c()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " body"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_11
    const-string v5, ""

    :goto_9
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-interface {v8, v5}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_18

    .line 193
    invoke-virtual {v1}, Lokhttp3/Response;->g()Lokhttp3/Headers;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lokhttp3/Headers;->a()I

    move-result v5

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_12

    .line 195
    iget-object v7, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_12
    if-eqz v4, :cond_17

    .line 198
    invoke-static {v1}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->a(Lokhttp3/Response;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_b

    .line 200
    :cond_13
    invoke-virtual {v1}, Lokhttp3/Response;->g()Lokhttp3/Headers;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b(Lokhttp3/Headers;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 201
    iget-object v2, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    const-string v3, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    goto :goto_c

    .line 203
    :cond_14
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v2

    const-wide v4, 0x7fffffffffffffffL

    .line 204
    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->b(J)Z

    .line 205
    invoke-interface {v2}, Lokio/BufferedSource;->c()Lokio/Buffer;

    move-result-object v2

    .line 207
    sget-object v4, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    .line 208
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->a()Lokhttp3/MediaType;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 210
    sget-object v4, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Lokhttp3/MediaType;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4

    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v3, v11, v5

    if-eqz v3, :cond_16

    .line 214
    iget-object v3, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    const-string v5, ""

    invoke-interface {v3, v5}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 215
    iget-object v3, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    invoke-virtual {v2}, Lokio/Buffer;->u()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokio/Buffer;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 218
    :cond_16
    iget-object v3, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- END HTTP ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokio/Buffer;->b()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-byte body)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    goto :goto_c

    .line 199
    :cond_17
    :goto_b
    iget-object v2, v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;

    const-string v3, "<-- END HTTP"

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    :cond_18
    :goto_c
    return-object v1
.end method
