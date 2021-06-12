.class public final Lcom/samsung/android/app/music/util/CollectionsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Collection;Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lcom/samsung/android/app/music/util/CollectionsUtils$Condition<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 57
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 61
    invoke-interface {p1, v2}, Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-lt v0, p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    return v0
.end method

.method public static a([J)Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 32
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/Collection;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 40
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 41
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    .line 42
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/util/Collection;Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;)I
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lcom/samsung/android/app/music/util/CollectionsUtils$Condition<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 81
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 83
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 85
    invoke-interface {p1, v1}, Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
