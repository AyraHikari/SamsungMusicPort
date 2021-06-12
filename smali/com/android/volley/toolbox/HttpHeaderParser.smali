.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)J
    .locals 4

    .line 135
    :try_start_0
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to parse dateStr: %s, falling back to 0"

    const/4 v2, 0x1

    .line 138
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/volley/VolleyLog;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 21

    move-object/from16 v0, p0

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 51
    iget-object v3, v0, Lcom/android/volley/NetworkResponse;->c:Ljava/util/Map;

    const-string v4, "Date"

    .line 66
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 68
    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->a(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    :goto_0
    const-string v4, "Cache-Control"

    .line 71
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v4, :cond_8

    const-string v11, ","

    .line 74
    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    .line 75
    :goto_1
    array-length v9, v4

    if-ge v10, v9, :cond_7

    .line 76
    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v5, "no-cache"

    .line 77
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "no-store"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    const-string v5, "max-age="

    .line 79
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    .line 81
    :try_start_0
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v11, v5

    goto :goto_2

    :cond_2
    const-string v5, "stale-while-revalidate="

    .line 84
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x17

    .line 86
    :try_start_1
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v14, v5

    goto :goto_2

    :cond_3
    const-string v5, "must-revalidate"

    .line 89
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "proxy-revalidate"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v13, 0x1

    :catch_0
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :cond_7
    move v10, v13

    const/16 v16, 0x1

    goto :goto_4

    :cond_8
    const-wide/16 v11, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    :goto_4
    const-string v4, "Expires"

    .line 95
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 97
    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->a(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_5

    :cond_9
    const-wide/16 v5, 0x0

    :goto_5
    const-string v4, "Last-Modified"

    .line 100
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 102
    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->a(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v19, v17

    goto :goto_6

    :cond_a
    const-wide/16 v19, 0x0

    :goto_6
    const-string v4, "ETag"

    .line 105
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v16, :cond_c

    const-wide/16 v5, 0x3e8

    mul-long v11, v11, v5

    add-long/2addr v1, v11

    if-eqz v10, :cond_b

    goto :goto_7

    :cond_b
    mul-long v14, v14, v5

    const/4 v5, 0x0

    add-long/2addr v14, v1

    move-wide v5, v14

    goto :goto_8

    :cond_c
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_d

    cmp-long v11, v5, v7

    if-ltz v11, :cond_d

    sub-long/2addr v5, v7

    add-long/2addr v5, v1

    move-wide v1, v5

    goto :goto_8

    :cond_d
    move-wide v1, v9

    :goto_7
    move-wide v5, v1

    .line 118
    :goto_8
    new-instance v9, Lcom/android/volley/Cache$Entry;

    invoke-direct {v9}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 119
    iget-object v10, v0, Lcom/android/volley/NetworkResponse;->b:[B

    iput-object v10, v9, Lcom/android/volley/Cache$Entry;->a:[B

    .line 120
    iput-object v4, v9, Lcom/android/volley/Cache$Entry;->b:Ljava/lang/String;

    .line 121
    iput-wide v1, v9, Lcom/android/volley/Cache$Entry;->f:J

    .line 122
    iput-wide v5, v9, Lcom/android/volley/Cache$Entry;->e:J

    .line 123
    iput-wide v7, v9, Lcom/android/volley/Cache$Entry;->c:J

    move-wide/from16 v1, v19

    .line 124
    iput-wide v1, v9, Lcom/android/volley/Cache$Entry;->d:J

    .line 125
    iput-object v3, v9, Lcom/android/volley/Cache$Entry;->g:Ljava/util/Map;

    .line 126
    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->d:Ljava/util/List;

    iput-object v0, v9, Lcom/android/volley/Cache$Entry;->h:Ljava/util/List;

    return-object v9
.end method

.method static a(J)Ljava/lang/String;
    .locals 2

    .line 145
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    .line 184
    invoke-static {p0, v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 163
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, ";"

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 166
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 167
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 168
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 169
    aget-object v4, v3, v1

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    aget-object p0, v3, v0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static a()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 149
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    .line 150
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method static a(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 195
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/Header;

    .line 196
    invoke-virtual {v1}, Lcom/android/volley/Header;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/volley/Header;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static b(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 204
    new-instance v2, Lcom/android/volley/Header;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
