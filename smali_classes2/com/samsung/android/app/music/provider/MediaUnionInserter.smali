.class public final Lcom/samsung/android/app/music/provider/MediaUnionInserter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:I

.field private c:I

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/StringBuilder;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/database/sqlite/SQLiteDatabase;

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columnArray"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->g:Landroid/database/sqlite/SQLiteDatabase;

    iput p4, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->h:I

    .line 1998
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a:I

    .line 2001
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "INSERT INTO "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->d:Ljava/lang/String;

    .line 2002
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->d:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->e:Ljava/lang/StringBuilder;

    .line 2003
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/16 p4, 0x1f4

    .line 1996
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/provider/MediaUnionInserter;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2014
    check-cast p2, Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final b()V
    .locals 5

    .line 2040
    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2041
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->g:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 2044
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->g:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->f:Ljava/util/ArrayList;

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 2138
    new-array v4, v1, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2044
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2138
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2137
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2047
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->e:Ljava/lang/StringBuilder;

    .line 2048
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2049
    iput v1, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 2035
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->b()V

    .line 2036
    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->b:I

    return v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2015
    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2019
    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->c:I

    if-eqz v0, :cond_0

    .line 2020
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->e:Ljava/lang/StringBuilder;

    const-string v1, " UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->b:I

    .line 2023
    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->c:I

    .line 2024
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->e:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 2026
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->f:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2029
    :cond_1
    iget p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->b:I

    iget p2, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->h:I

    rem-int/2addr p1, p2

    if-nez p1, :cond_2

    .line 2030
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->b()V

    :cond_2
    return-void

    .line 2016
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaUnionInserter : insert values\'s count["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not equal to columnsSize["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method
