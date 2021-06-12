.class public Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 133
    :try_start_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 134
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 136
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Debug"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get debug field : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 155
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 166
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 167
    aget-byte v2, v0, v1

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_2
    and-int/lit16 v3, v2, 0xfe

    :goto_1
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_3
    and-int/lit16 v3, v3, 0xfd

    :goto_2
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    goto :goto_3

    :cond_4
    and-int/lit16 v3, v3, 0xf7

    :goto_3
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    or-int/lit8 v2, v3, 0x10

    goto :goto_4

    :cond_5
    and-int/lit16 v2, v3, 0xef

    :goto_4
    int-to-byte v2, v2

    .line 179
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public static a()Z
    .locals 2

    const-string v0, "robolectric"

    .line 146
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
