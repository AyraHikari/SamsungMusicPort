.class public final Landroidx/content/ContentValuesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final varargs a([Lkotlin/Pair;)Landroid/content/ContentValues;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 26
    new-instance v0, Landroid/content/ContentValues;

    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 27
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_a

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 29
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_0
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_1
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 32
    :cond_2
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 33
    :cond_3
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 34
    :cond_4
    instance-of v5, v3, Ljava/lang/Float;

    if-eqz v5, :cond_5

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 35
    :cond_5
    instance-of v5, v3, Ljava/lang/Double;

    if-eqz v5, :cond_6

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 36
    :cond_6
    instance-of v5, v3, [B

    if-eqz v5, :cond_7

    check-cast v3, [B

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 37
    :cond_7
    instance-of v5, v3, Ljava/lang/Byte;

    if-eqz v5, :cond_8

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_1

    .line 38
    :cond_8
    instance-of v5, v3, Ljava/lang/Short;

    if-eqz v5, :cond_9

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for key \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_a
    return-object v0
.end method
