.class Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 307
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 319
    invoke-static {p1}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 320
    :goto_0
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 322
    :goto_1
    array-length v3, p3

    if-lt v2, v3, :cond_7

    const/4 v3, 0x0

    .line 347
    :try_start_0
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 349
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 350
    array-length v5, v4

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v5, :cond_1

    move-object v2, v3

    goto :goto_5

    :cond_1
    aget-object v6, v4, v2

    .line 351
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 352
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 353
    array-length v8, v7

    array-length v9, p3

    if-ne v8, v9, :cond_6

    const/4 v8, 0x0

    .line 356
    :goto_3
    array-length v9, v7

    const/4 v10, 0x1

    if-lt v8, v9, :cond_2

    const/4 v10, 0x0

    goto :goto_4

    .line 357
    :cond_2
    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 358
    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aget-object v11, v0, v8

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_4

    .line 362
    :cond_3
    aget-object v9, p3, v8

    if-eqz v9, :cond_5

    aget-object v9, v7, v8

    aget-object v11, p3, v8

    invoke-virtual {v9, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :goto_4
    if-nez v10, :cond_6

    move-object v2, v6

    :goto_5
    if-eqz v2, :cond_4

    .line 378
    invoke-virtual {v2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 376
    :cond_4
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Could not find "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 323
    :cond_7
    aget-object v3, p3, v2

    .line 324
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 325
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6

    .line 326
    :cond_8
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_9

    .line 327
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6

    .line 328
    :cond_9
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_a

    .line 329
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6

    .line 330
    :cond_a
    instance-of v4, v3, Ljava/lang/Byte;

    if-eqz v4, :cond_b

    .line 331
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6

    .line 332
    :cond_b
    instance-of v4, v3, Ljava/lang/Character;

    if-eqz v4, :cond_c

    .line 333
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6

    .line 334
    :cond_c
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_d

    .line 335
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6

    .line 336
    :cond_d
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_e

    .line 337
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6

    .line 338
    :cond_e
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_f

    .line 339
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6

    .line 341
    :cond_f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 311
    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 315
    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
