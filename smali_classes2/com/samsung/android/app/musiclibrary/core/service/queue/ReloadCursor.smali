.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor$Companion;

.field private static final DEV:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-ReloadCursor"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ReloadCursor"


# instance fields
.field private final context:Landroid/content/Context;

.field private current:I

.field private final cursorIdx:[J

.field private final list:[J

.field private final realCursor:Landroid/database/Cursor;

.field private final size:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor$Companion;

    .line 182
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->DEV:Z

    const-string v0, "_id"

    const-string v1, "source_id"

    .line 183
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[J)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->list:[J

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->current:I

    .line 27
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->list:[J

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->getRealCursor([J)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    .line 28
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->getRealCursorIndex(Landroid/database/Cursor;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->cursorIdx:[J

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->list:[J

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->cursorIdx:[J

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->getSize([J[J)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->size:I

    return-void
.end method

.method public static final synthetic access$getDEV$cp()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->DEV:Z

    return v0
.end method

.method public static final synthetic access$getPROJECTION$cp()[Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private final getData(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getPROJECTION$cp()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 170
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getDEV$cp()Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The column does not exist. Please check column index."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 176
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getRealCursor([J)Landroid/database/Cursor;
    .locals 13

    .line 33
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "ReloadCursor"

    const-string v0, "Request list is 0"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    .line 39
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

    const/4 v4, 0x0

    const-string v5, "_id"

    .line 37
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private final getRealCursorIndex(Landroid/database/Cursor;)[J
    .locals 6

    if-eqz p1, :cond_2

    .line 45
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 52
    new-array v1, v0, [J

    .line 53
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_id"

    .line 54
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 57
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 58
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    return-object v1

    :cond_2
    :goto_1
    const-string p1, "SMUSIC-ReloadCursor"

    const-string v0, "getRealCursorIndex but cursor is null or empty."

    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object p1

    return-object p1
.end method

.method private final getSize([J[J)I
    .locals 7

    .line 65
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 68
    :cond_1
    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_2

    .line 69
    array-length p1, p1

    return p1

    .line 189
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 191
    array-length v0, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget-wide v5, p1, v1

    .line 74
    invoke-static {p2, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    if-ltz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 193
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v2

    const-string v0, "SMUSIC-ReloadCursor"

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ms\t\tUi "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "getSize"

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public final getAudioId()J
    .locals 2

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAudioIds()[J
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->cursorIdx:[J

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 146
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->size:I

    return v0
.end method

.method public getDouble(I)D
    .locals 5

    .line 223
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getPROJECTION$cp()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-gt v0, p1, :cond_2

    .line 224
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getDEV$cp()Z

    move-result p1

    if-nez p1, :cond_1

    .line 157
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_1

    .line 225
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The column does not exist. Please check column index."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2

    .line 215
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getPROJECTION$cp()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/high16 v1, -0x40800000    # -1.0f

    if-gt v0, p1, :cond_2

    .line 216
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getDEV$cp()Z

    move-result p1

    if-nez p1, :cond_1

    .line 154
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    .line 217
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The column does not exist. Please check column index."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 2

    .line 239
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getPROJECTION$cp()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, -0x1

    if-gt v0, p1, :cond_2

    .line 240
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getDEV$cp()Z

    move-result p1

    if-nez p1, :cond_1

    .line 163
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 241
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The column does not exist. Please check column index."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 5

    .line 199
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getPROJECTION$cp()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const-wide/16 v1, -0x1

    if-gt v0, p1, :cond_2

    .line 200
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getDEV$cp()Z

    move-result p1

    if-nez p1, :cond_1

    .line 148
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    .line 201
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The column does not exist. Please check column index."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 2

    .line 207
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getPROJECTION$cp()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, -0x1

    if-gt v0, p1, :cond_2

    .line 208
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getDEV$cp()Z

    move-result p1

    if-nez p1, :cond_1

    .line 151
    :cond_0
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_1

    .line 209
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The column does not exist. Please check column index."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    return p1
.end method

.method public final getSourceId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 247
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getPROJECTION$cp()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gt v0, p1, :cond_2

    .line 248
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getDEV$cp()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    goto :goto_1

    .line 249
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The column does not exist. Please check column index."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    :goto_1
    return-object p1
.end method

.method public isClosed()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

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
    .locals 2

    .line 231
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getPROJECTION$cp()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, p1, :cond_2

    .line 232
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->access$getDEV$cp()Z

    move-result p1

    if-nez p1, :cond_1

    .line 160
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    .line 233
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The column does not exist. Please check column index."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onMove(II)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->list:[J

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->cursorIdx:[J

    array-length v1, v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->list:[J

    array-length v0, v0

    if-ge p2, v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    move v0, p2

    .line 97
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->cursorIdx:[J

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->list:[J

    aget-wide v4, v3, v0

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 101
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->list:[J

    array-length v3, v3

    if-lt v0, v3, :cond_6

    goto :goto_2

    :cond_6
    if-ltz v1, :cond_4

    :goto_2
    if-gez v1, :cond_7

    return v2

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->realCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 110
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->current:I

    goto :goto_3

    :cond_8
    const-string v1, "SMUSIC-ReloadCursor"

    .line 112
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

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-ReloadCursor"

    .line 120
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

    .line 118
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_9
    :goto_4
    return v2
.end method
