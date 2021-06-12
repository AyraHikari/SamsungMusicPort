.class public final Lcom/samsung/android/app/music/list/playlist/ConflictManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/ConflictManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/ConflictManager$Companion;

.field private static final TAG:Ljava/lang/String; = "Playlist-ConflictManager"


# instance fields
.field private final conflictValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final deviceName:Ljava/lang/String;

.field private final ids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ConflictManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/ConflictManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->Companion:Lcom/samsung/android/app/music/list/playlist/ConflictManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->context:Landroid/content/Context;

    .line 20
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->ids:Ljava/util/HashSet;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->conflictValues:Ljava/util/ArrayList;

    .line 22
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MilkServiceUtils.getDeviceId(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V
    .locals 13

    and-int/lit8 v1, p10, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 32
    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, p10, 0x4

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, p10, 0x8

    if-eqz v1, :cond_2

    .line 34
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, p10, 0x10

    if-eqz v1, :cond_3

    .line 35
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, p10, 0x20

    if-eqz v1, :cond_4

    const-wide/16 v1, -0x1

    move-wide v10, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p7

    :goto_4
    and-int/lit8 v0, p10, 0x40

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    const/4 v12, -0x1

    goto :goto_5

    :cond_5
    move/from16 v12, p9

    :goto_5
    move-object v3, p0

    move-wide v4, p1

    .line 37
    invoke-virtual/range {v3 .. v12}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict(JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static synthetic addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V
    .locals 16

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move/from16 v9, p7

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object/from16 v11, p3

    goto :goto_2

    :cond_2
    move-object/from16 v11, p9

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    .line 71
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v12, v1

    goto :goto_3

    :cond_3
    move-object/from16 v12, p10

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    const-wide/16 v1, -0x1

    move-wide v13, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v13, p11

    :goto_4
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    const/4 v15, -0x1

    goto :goto_5

    :cond_5
    move/from16 v15, p13

    :goto_5
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    .line 73
    invoke-virtual/range {v2 .. v15}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method


# virtual methods
.method public final addConflict(JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 17

    move-object/from16 v15, p0

    .line 39
    iget-object v1, v15, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->context:Landroid/content/Context;

    .line 40
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v0, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 39
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/io/Closeable;

    const/4 v0, 0x0

    .line 45
    move-object v12, v0

    check-cast v12, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, v14

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_1

    .line 46
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/ConflictDetectKt;->access$id(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 49
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/ConflictDetectKt;->access$name(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 50
    iget-object v5, v15, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->deviceName:Ljava/lang/String;

    .line 51
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/ConflictDetectKt;->access$dateModified(Landroid/database/Cursor;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p3, :cond_0

    .line 52
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v15, v14

    goto :goto_4

    :cond_0
    :try_start_3
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/ConflictDetectKt;->access$modifiedState(Landroid/database/Cursor;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    move v8, v0

    move-object/from16 v1, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object v15, v12

    move-wide/from16 v12, p7

    move-object/from16 v16, v15

    move-object v15, v14

    move/from16 v14, p9

    .line 47
    :try_start_4
    invoke-virtual/range {v1 .. v14}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v12, v16

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v16, v12

    goto :goto_2

    :cond_1
    move-object/from16 v16, v12

    move-object v15, v14

    .line 60
    :goto_1
    :try_start_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v1, v16

    .line 45
    invoke-static {v15, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception v0

    move-object/from16 v1, v16

    move-object v12, v1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v12

    :goto_2
    move-object v15, v14

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v15, v14

    :goto_3
    move-object v12, v0

    :goto_4
    :try_start_6
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v0

    :goto_5
    invoke-static {v15, v12}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final addConflict(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v3, p3

    const-string v1, "localPlaylistName"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v1, v0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->ids:Ljava/util/HashSet;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Playlist-ConflictManager"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addConflict() already added="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    iget-object v14, v0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->conflictValues:Ljava/util/ArrayList;

    if-eqz p9, :cond_1

    move-object/from16 v9, p9

    goto :goto_0

    :cond_1
    move-object v9, v3

    :goto_0
    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move/from16 v13, p13

    .line 81
    invoke-static/range {v1 .. v13}, Lcom/samsung/android/app/music/list/playlist/ConflictDetectKt;->makeConflictValues(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Landroid/content/ContentValues;

    move-result-object v1

    .line 80
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final execute()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->context:Landroid/content/Context;

    .line 100
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Conflict;->a:Landroid/net/Uri;

    const-string v2, "MediaContents.Playlists.Conflict.CONTENT_URI"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->conflictValues:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 146
    new-array v3, v3, [Landroid/content/ContentValues;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, [Landroid/content/ContentValues;

    .line 99
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void

    .line 146
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final isNotEmpty()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->conflictValues:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final reset()V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->ids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->conflictValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Conflict;->a:Landroid/net/Uri;

    const-string v2, "MediaContents.Playlists.Conflict.CONTENT_URI"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
