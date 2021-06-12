.class public final Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

.field private static final b:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 17
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->D:Z

    sget-boolean v5, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    sget-boolean v7, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x2710

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;-><init>(IZZIZZZ)V

    sput-object v8, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    .line 22
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    sget-boolean v11, Lcom/samsung/android/app/music/info/features/AppFeatures;->D:Z

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x2710

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;-><init>(IZZIZZZ)V

    sput-object v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->b:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 16

    .line 29
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    sget-object v7, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    sget-object v8, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->b:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    sget-object v15, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    move-object v9, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    return-object v0
.end method
