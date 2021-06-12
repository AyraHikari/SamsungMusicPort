.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final AS:Ljava/lang/String; = " AS "

.field public static final AUDIO_ID_INDEX:I = 0x63

.field private static final BLANK:Ljava/lang/String; = " "

.field private static final CURSOR_MAX_COUNT:I = 0x1388

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor$Companion;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-QueueCursor"

.field private static final ROW_ID_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SV-QueueCursor"


# instance fields
.field private final context:Landroid/content/Context;

.field private currentPosition:I

.field private final cursorIdxs:[J

.field private final list:[J

.field private final nowPlayingIds:[J

.field private final projection:[Ljava/lang/String;

.field private final projectionIndexMap$delegate:Lkotlin/Lazy;

.field private final realCursor:Landroid/database/Cursor;

.field private final size:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "projectionIndexMap"

    const-string v4, "getProjectionIndexMap()Ljava/util/HashMap;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[J[Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->list:[J

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->projection:[Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->list:[J

    array-length p1, p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->size:I

    .line 38
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor$projectionIndexMap$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor$projectionIndexMap$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->projectionIndexMap$delegate:Lkotlin/Lazy;

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->list:[J

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->getRealCursor([J)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->getRealCursorIndex(Landroid/database/Cursor;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->cursorIdxs:[J

    .line 57
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->size:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->nowPlayingIds:[J

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->nowPlayingIds:[J

    .line 226
    array-length p2, p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-wide v0, p1, p3

    add-int/lit8 v2, p4, 0x1

    .line 59
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->nowPlayingIds:[J

    int-to-long v4, p4

    add-long/2addr v0, v4

    aput-wide v0, v3, p4

    add-int/lit8 p3, p3, 0x1

    move p4, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic access$getProjection$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;)[Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->projection:[Ljava/lang/String;

    return-object p0
.end method

.method private final getProjectionIndexMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->projectionIndexMap$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method private final getRealCursor([J)Landroid/database/Cursor;
    .locals 2

    .line 64
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "SV-QueueCursor"

    const-string v0, "Request list is 0"

    .line 65
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 68
    :cond_1
    array-length v0, p1

    const/16 v1, 0x1388

    if-gt v0, v1, :cond_2

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->queryAsCursor([J)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_1

    .line 71
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->queryAsLargeCursor([J)Landroid/database/Cursor;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final getRealCursorIndex(Landroid/database/Cursor;)[J
    .locals 6

    if-eqz p1, :cond_2

    .line 112
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 116
    new-array v1, v0, [J

    .line 117
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_id"

    .line 118
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 121
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    return-object v1

    .line 113
    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object p1

    return-object p1
.end method

.method private final queryAsCursor([J)Landroid/database/Cursor;
    .locals 13

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    .line 107
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    const-string v3, "_id IN ("

    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    const-string v3, ")"

    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v12}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "_id"

    const/4 v4, 0x0

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private final queryAsLargeCursor([J)Landroid/database/Cursor;
    .locals 8

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    mul-int/lit16 v4, v3, 0x1388

    .line 85
    array-length v5, p1

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->d(II)I

    move-result v4

    mul-int/lit16 v5, v2, 0x1388

    .line 87
    invoke-static {p1, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v5

    const-string v6, "list"

    .line 88
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->queryAsCursor([J)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_0

    const-string p1, "SMUSIC-SV-QueueCursor"

    const-string v3, "getRealCursor, cursor is null"

    .line 92
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v2, "SV-QueueCursor"

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRealCursor limit : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cursor.getCount() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    array-length v2, p1

    if-lt v4, v2, :cond_3

    move v2, v3

    :goto_1
    const/4 p1, 0x1

    if-le v2, p1, :cond_2

    .line 102
    check-cast v0, Ljava/util/Collection;

    .line 224
    new-array p1, v1, [Landroid/database/Cursor;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, [Landroid/database/Cursor;

    .line 102
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v5, v0

    check-cast v5, Landroid/database/Cursor;

    goto :goto_2

    .line 224
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    return-object v5

    :cond_3
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_0
    return-void
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "columnName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->getProjectionIndexMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->getProjectionIndexMap()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_0

    .line 192
    :cond_0
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->projection:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->size:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    return p1
.end method

.method public getInt(I)I
    .locals 2

    const/4 v0, -0x1

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 168
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->onChange(Z)V

    :cond_0
    :goto_0
    return v0
.end method

.method public getLong(I)J
    .locals 3

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    const/16 v2, 0x63

    if-eq p1, v2, :cond_0

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->nowPlayingIds:[J

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->currentPosition:I

    aget-wide v0, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 183
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->onChange(Z)V

    const-wide/16 v0, 0x0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 159
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->onChange(Z)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getType(I)I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public isClosed()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isNull(I)Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onMove(II)Z
    .locals 5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->list:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->cursorIdxs:[J

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->size:I

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    goto :goto_3

    .line 139
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->cursorIdxs:[J

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->list:[J

    aget-wide v3, v2, p2

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 140
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->currentPosition:I

    goto :goto_1

    :cond_3
    const-string v2, "SMUSIC-SV-QueueCursor"

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to move to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "SMUSIC-SV-QueueCursor"

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to move to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exception msg "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    :goto_3
    return v1
.end method

.method public requery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
