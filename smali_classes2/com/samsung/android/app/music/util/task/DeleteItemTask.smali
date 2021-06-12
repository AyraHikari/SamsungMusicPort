.class public final Lcom/samsung/android/app/music/util/task/DeleteItemTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/task/DeleteItemTask$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/util/task/DeleteItemTask$Companion;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private final b:[J

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/util/task/DeleteItemTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/util/task/DeleteItemTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->a:Lcom/samsung/android/app/music/util/task/DeleteItemTask$Companion;

    const-string v0, "_id"

    const-string v1, "_data"

    .line 116
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[JLcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;Z)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    iput-object p2, p0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->b:[J

    iput-object p3, p0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->c:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    return-void
.end method

.method private final a(Landroid/content/Context;[J)I
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p2

    const-string v11, "UiList"

    .line 45
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " deleteItems() count="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v13

    :goto_0
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v13

    :goto_1
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    invoke-static {v12, v11, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    if-eqz v0, :cond_9

    .line 46
    array-length v2, v0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    goto/16 :goto_6

    .line 50
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->b:Landroid/net/Uri;

    const-string v3, "MediaContents.Tracks.META_RAW_CONTENT_URI"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v5, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->d:[Ljava/lang/String;

    move-object/from16 v3, p1

    move-object v6, v2

    .line 51
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    .line 54
    move-object v4, v13

    check-cast v4, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v3

    check-cast v5, Landroid/database/Cursor;

    if-eqz v5, :cond_6

    .line 55
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 57
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 60
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 61
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 64
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v7, "MediaContents.Tracks.CONTENT_URI"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, p1

    invoke-static {v7, v5, v2, v13}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    array-length v2, v6

    :goto_4
    if-ge v11, v2, :cond_8

    aget-object v5, v6, v11

    if-eqz v5, :cond_4

    .line 69
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->a(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v7, p1

    goto :goto_3

    :cond_6
    const-string v2, "UiList"

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " deleteItems : c is null or c.moveToFirst is failed. c : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    :cond_7
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v12, v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_8
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-wide v2, 0x4095e00000000000L    # 1400.0

    double-to-int v2, v2

    int-to-long v2, v2

    .line 81
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 82
    array-length v0, v0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 54
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    :goto_6
    return v11
.end method

.method private final a(Ljava/lang/String;)V
    .locals 7

    .line 86
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 89
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UiList"

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " deleteFile("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "DebugUtils.encodeStringResource(path)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "UiList"

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Failed to delete file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->c:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->c:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v4, "UiList"

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Request lyric delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_1
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_4

    .line 109
    sget-object p1, Lcom/samsung/android/app/music/provider/MusicDBInfo$DeleteLog;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$DeleteLog;

    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 109
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$DeleteLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_2

    .line 121
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 105
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_4

    .line 109
    sget-object p1, Lcom/samsung/android/app/music/provider/MusicDBInfo$DeleteLog;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$DeleteLog;

    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void

    .line 108
    :goto_3
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 109
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$DeleteLog;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$DeleteLog;

    iget-object v3, p0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$DeleteLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_6
    throw p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->mContext:Landroid/content/Context;

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->b:[J

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->a(Landroid/content/Context;[J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPreExecute()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0302

    .line 28
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->showLoading(I)V

    :cond_0
    return-void
.end method

.method protected setLoadingProgress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
