.class final Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$LocalImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$ICreatePlaylist;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalImpl"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$LocalImpl;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public createPlaylist(Ljava/lang/String;[JLcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p3

    const-string v1, "playlistName"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v1, v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$LocalImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v1, "context"

    .line 112
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v2}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->isPlaylistNameExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v12, -0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 113
    invoke-interface {v10, v1, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;->onResult(IJ)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v14, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->b:Landroid/net/Uri;

    const-string v1, "MediaContents.Playlists.PRE_INSERT_CONTENT_URI"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7d

    const/4 v9, 0x0

    move-object/from16 v2, p1

    .line 117
    invoke-static/range {v1 .. v9}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistValues$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    .line 115
    invoke-static {v11, v14, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 119
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    const-wide/16 v1, 0x0

    const/4 v13, 0x0

    cmp-long v1, v11, v1

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    .line 121
    new-instance v14, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;

    .line 122
    iget-object v3, v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$LocalImpl;->activity:Landroid/app/Activity;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v2, v14

    move-wide v4, v11

    move-object/from16 v6, p2

    .line 121
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;-><init>(Landroid/app/Activity;J[JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v13, [Ljava/lang/Void;

    invoke-virtual {v14, v1, v2}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    :cond_1
    invoke-interface {v10, v13, v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;->onResult(IJ)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    .line 129
    invoke-interface {v10, v1, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;->onResult(IJ)V

    :goto_0
    return-void
.end method
