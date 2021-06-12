.class public final Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer$Companion;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/StringBuilder;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private final h:Landroid/content/Context;

.field private final i:Landroid/database/sqlite/SQLiteDatabase;

.field private final j:Landroid/net/Uri;

.field private final k:I

.field private final l:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->a:Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/Integer;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->i:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->j:Landroid/net/Uri;

    iput p4, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->k:I

    iput-object p5, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->l:Ljava/lang/Integer;

    .line 2062
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->d:Ljava/lang/StringBuilder;

    .line 2063
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->e:Ljava/util/ArrayList;

    .line 2064
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/16 p4, 0x1f4

    const/16 v4, 0x1f4

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    .line 2058
    move-object p5, p4

    check-cast p5, Ljava/lang/Integer;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/Integer;)V

    return-void
.end method

.method private final b()V
    .locals 6

    .line 2099
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->g:I

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(II)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 2109
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2110
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2111
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->d:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->l:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->g:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2114
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->f:Ljava/util/ArrayList;

    .line 2115
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 2116
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2117
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->e:Ljava/util/ArrayList;

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_4

    .line 2140
    new-array v5, v1, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    check-cast v4, [Ljava/lang/String;

    .line 2115
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2119
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->j:Landroid/net/Uri;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 2120
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->j:Landroid/net/Uri;

    invoke-interface {v2, v3, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_2
    const-string v3, "c"

    .line 2122
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->g:I

    .line 2114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2140
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2139
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2128
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->d:Ljava/lang/StringBuilder;

    .line 2129
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2130
    iput v1, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->c:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/Cursor;
    .locals 2

    .line 2094
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->b()V

    .line 2095
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->f:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2138
    new-array v1, v1, [Landroid/database/Cursor;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Landroid/database/Cursor;

    .line 2095
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    check-cast v1, Landroid/database/Cursor;

    return-object v1

    .line 2138
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2137
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "rawQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2068
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->g:I

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(II)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 2078
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->c:I

    if-eqz v0, :cond_1

    .line 2079
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->d:Ljava/lang/StringBuilder;

    const-string v1, " UNION ALL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->b:I

    .line 2082
    iget v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->c:I

    .line 2083
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    .line 2085
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->e:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2088
    :cond_2
    iget p1, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->b:I

    iget p2, p0, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->k:I

    rem-int/2addr p1, p2

    if-nez p1, :cond_3

    .line 2089
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->b()V

    :cond_3
    return-void
.end method
