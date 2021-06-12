.class final Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field private final requestCode:Ljava/lang/Integer;

.field private final serverPlaylists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final syncItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;",
            ">;"
        }
    .end annotation
.end field

.field private final targetFragment:Landroid/support/v4/app/Fragment;

.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "weakReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->weakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->syncItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->targetFragment:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->requestCode:Ljava/lang/Integer;

    .line 404
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->serverPlaylists:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 399
    move-object p3, v0

    check-cast p3, Landroid/support/v4/app/Fragment;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 400
    move-object p4, v0

    check-cast p4, Ljava/lang/Integer;

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;Ljava/lang/Integer;)V

    return-void
.end method

.method private final deleteLocalPlaylist(Landroid/content/Context;JLjava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteLocalPlaylist() S playlistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 649
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v1, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 648
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 653
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, p4}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->execute(Ljava/lang/Long;Ljava/lang/String;)V

    .line 654
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteLocalPlaylist() X numDeleted="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method private final logD(Ljava/lang/String;IZ)V
    .locals 3

    const-string v0, "Playlist-conflict"

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 796
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD(Ljava/lang/String;IZ)V

    return-void
.end method

.method private final logE(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "Playlist-conflict"

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logE$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 806
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logE(Ljava/lang/String;I)V

    return-void
.end method

.method private final logI(Ljava/lang/String;IZ)V
    .locals 3

    const-string v0, "Playlist-conflict"

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logI$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 800
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logI(Ljava/lang/String;IZ)V

    return-void
.end method

.method private final logW(Ljava/lang/String;IZ)V
    .locals 3

    const-string v0, "Playlist-conflict"

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logW$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 803
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logW(Ljava/lang/String;IZ)V

    return-void
.end method

.method private final prependIndent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 813
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "                "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 812
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "            "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 811
    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "        "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 810
    :pswitch_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final renamePlaylist(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move/from16 v0, p6

    .line 765
    sget-object v1, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v1

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    if-nez v1, :cond_0

    .line 767
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, ""

    move-object/from16 v6, p4

    invoke-static {v6, v15, v2}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->makeRenameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->updatePlaylist(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 768
    invoke-virtual {v1}, Lretrofit2/Response;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 769
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v2, "it.body()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResponse;

    .line 770
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResponse;->getResultCode()I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x106a

    if-eq v2, v1, :cond_2

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renamePlaylist() failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    move-object/from16 v14, p0

    invoke-direct {v14, v0, v1}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logE(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v14, p0

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renamePlaylist() failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v13}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logW$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    add-int/lit8 v8, v0, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 786
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->renamePlaylist(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move-object/from16 v14, p0

    .line 774
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 778
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 779
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 780
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x314

    const/4 v0, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object v6, v15

    move-object v14, v0

    .line 775
    invoke-static/range {v2 .. v14}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renamePlaylist() done "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logI$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private final syncDownPlaylist(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 26
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p4

    const-string v1, "syncDownPlaylist() S"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 665
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    const/4 v7, 0x0

    .line 668
    move-object v8, v7

    check-cast v8, Ljava/util/List;

    .line 672
    iget-object v0, v6, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->serverPlaylists:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, v6, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->serverPlaylists:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "serverPlaylists[sourceId]!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;

    .line 674
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateAdded(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v1

    .line 675
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v3

    move-wide/from16 v20, v1

    move-wide/from16 v22, v3

    goto :goto_0

    :cond_1
    move-wide/from16 v20, v1

    move-wide/from16 v22, v20

    .line 678
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    invoke-virtual {v0, v15}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v1, p4

    .line 679
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;->getPlaylistTracks$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 680
    invoke-virtual {v0}, Lretrofit2/Response;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 681
    invoke-virtual {v0}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v1, "it.body()!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;

    .line 682
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->getResultCode()I

    move-result v1

    if-nez v1, :cond_4

    .line 684
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->getPlaylistTracks()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 687
    :cond_3
    invoke-virtual {v0}, Lretrofit2/Response;->a()I

    move-result v1

    :cond_4
    :goto_1
    move-object v0, v8

    move v8, v1

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    move-object v0, v8

    const/4 v8, -0x1

    :goto_2
    const/16 v24, -0x64

    const/16 v25, 0x0

    const/4 v13, 0x1

    if-nez v8, :cond_8

    .line 695
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_6

    .line 696
    check-cast v0, Ljava/lang/Iterable;

    .line 841
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;

    move-wide/from16 v11, p2

    .line 697
    invoke-static {v11, v12, v0}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makeSyncDownMemberValues(JLcom/samsung/android/app/music/list/playlist/ServerTrack;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverTrack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    move-wide/from16 v11, p2

    .line 701
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v13

    if-eqz v0, :cond_7

    .line 703
    invoke-static/range {p2 .. p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Sync$Members;->b(J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "MediaContents.Playlists.\u2026yncContentUri(playlistId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7, v13, v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "MediaContents.Playlists.\u2026toDeleteBeforeInsertUri()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "contentValuesList.toArra\u2026(contentValuesList.size))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Landroid/content/ContentValues;

    .line 702
    invoke-static {v15, v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 706
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x0

    const/16 v8, -0x64

    goto :goto_4

    .line 711
    :cond_7
    invoke-static/range {p2 .. p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Sync$Members;->a(J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "MediaContents.Playlists.\u2026getContentUri(playlistId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    invoke-static {v15, v0, v7, v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move v1, v0

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    move-wide/from16 v11, p2

    const/4 v0, 0x0

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-nez v8, :cond_b

    .line 719
    invoke-static/range {p5 .. p6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v13

    if-eqz v2, :cond_b

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3f4

    const/16 v19, 0x0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p6

    move-object v12, v2

    const/4 v2, 0x1

    move-object v13, v3

    move-object v14, v4

    move-object v3, v15

    move-object v15, v5

    .line 720
    invoke-static/range {v7 .. v19}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_a

    const/4 v8, 0x0

    goto :goto_5

    :cond_a
    const-string v4, "rename failed"

    .line 724
    invoke-direct {v6, v4, v2}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logE(Ljava/lang/String;I)V

    const/16 v8, -0x64

    .line 728
    :goto_5
    new-instance v4, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;

    invoke-direct {v4, v3}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;-><init>(Landroid/content/Context;)V

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v7, p5

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->execute(Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object v3, v15

    const/4 v2, 0x1

    :goto_6
    move v4, v8

    if-nez v4, :cond_c

    const/4 v11, 0x0

    .line 737
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 738
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 739
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x388

    const/16 v19, 0x0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    .line 733
    invoke-static/range {v7 .. v19}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    :cond_c
    if-nez v4, :cond_d

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncDownPlaylist() X resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", numInserted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", numDeleted="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v5, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v5

    .line 744
    invoke-static/range {p1 .. p6}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_7

    .line 750
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncDownPlaylist() X resultCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", numInserted="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", numDeleted="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-direct {v6, v0, v2}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logE(Ljava/lang/String;I)V

    :goto_7
    return v4
.end method

.method private final syncUpPlaylist(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 25
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-wide/from16 v14, p3

    move-object/from16 v9, p5

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncUpPlaylist() S name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", playlistId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", sourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 526
    sget-object v1, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v13

    .line 528
    invoke-static {v0, v14, v15}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v8, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->serverPlaylists:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v15, v9

    move-object/from16 v24, v13

    goto/16 :goto_6

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_2
    :goto_0
    iget-object v1, v8, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->serverPlaylists:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1b

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v11, 0x2

    if-eqz v1, :cond_7

    .line 533
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 534
    new-instance v2, Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;

    if-nez v9, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-direct {v2, v9, v10, v11, v10}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_6

    .line 536
    new-instance v2, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;-><init>(Ljava/util/List;)V

    invoke-static {v13, v2, v10, v11, v10}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;->deletePlaylists$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 537
    invoke-virtual {v1}, Lretrofit2/Response;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 538
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    check-cast v1, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResponse;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResponse;->getResultCode()I

    move-result v1

    goto :goto_1

    .line 540
    :cond_5
    invoke-virtual {v1}, Lretrofit2/Response;->a()I

    move-result v1

    :goto_1
    move v6, v1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 544
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted in server (different but having same name) resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move/from16 v17, v6

    move-object/from16 v6, v16

    .line 543
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logI$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    const/16 v17, 0x0

    .line 550
    :goto_3
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v1, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    .line 549
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 555
    move-object v2, v10

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_c

    .line 556
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v13, :cond_b

    const-string v4, "date_added"

    .line 822
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 559
    invoke-static {v3, v10, v11, v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 557
    invoke-interface {v13, v7, v3}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->createPlaylist(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 560
    invoke-static {v3}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 561
    invoke-virtual {v3}, Lretrofit2/Response;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 562
    invoke-virtual {v3}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    const-string v4, "it.body()!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;

    .line 563
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->getResultCode()I

    move-result v4

    .line 564
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->getPlaylist()Lcom/samsung/android/app/music/list/playlist/Playlist;

    move-result-object v3

    if-nez v4, :cond_9

    .line 567
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/Playlist;->getPlaylistId()Ljava/lang/String;

    move-result-object v5

    .line 571
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/Playlist;->getPlaylistId()Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 572
    invoke-static {v3}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/Playlist;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 573
    invoke-static {v3}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/Playlist;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x198

    const/16 v23, 0x0

    move-object/from16 v9, p1

    move-wide/from16 v10, p3

    move-object v12, v6

    move-object/from16 v24, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v16, v3

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v22

    move-object/from16 v21, v23

    .line 568
    invoke-static/range {v9 .. v21}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    move-object v9, v5

    goto :goto_4

    :cond_9
    move-object/from16 v24, v13

    goto :goto_4

    :cond_a
    move-object/from16 v24, v13

    .line 578
    invoke-virtual {v3}, Lretrofit2/Response;->a()I

    move-result v4

    .line 580
    :goto_4
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    move v12, v4

    goto :goto_5

    :cond_b
    move-object/from16 v24, v13

    move/from16 v12, v17

    goto :goto_5

    :cond_c
    move-object/from16 v24, v13

    const/16 v3, -0x64

    .line 582
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v12, -0x64

    .line 555
    :goto_5
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added in server. resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logI$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    move-object v15, v9

    :goto_6
    const/4 v14, 0x1

    if-eqz v12, :cond_d

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncUpPlaylist() X failed. resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v14}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logE(Ljava/lang/String;I)V

    return-void

    .line 595
    :cond_d
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 597
    invoke-static/range {p3 .. p4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "play_order"

    const-string v1, "uri"

    .line 600
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 823
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    const/4 v6, 0x0

    move-object v10, v6

    check-cast v10, Ljava/lang/Throwable;

    :try_start_1
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    if-nez v1, :cond_e

    goto :goto_8

    .line 834
    :cond_e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_8

    .line 601
    :cond_f
    :goto_7
    sget-object v3, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->Companion:Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Companion;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Companion;->create(Landroid/database/Cursor;)Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 839
    :goto_8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    .line 607
    move-object/from16 v16, v6

    check-cast v16, Ljava/util/List;

    if-eqz v24, :cond_17

    if-nez v15, :cond_10

    .line 609
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_10
    move-object v4, v13

    check-cast v4, Ljava/util/List;

    invoke-static {v7, v4}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->makeSyncUpRequest(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v9, v24

    move-object v10, v15

    move-object/from16 v17, v13

    move v13, v4

    const/4 v4, 0x1

    move-object v14, v5

    invoke-static/range {v9 .. v14}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;->syncUpPlaylist$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Ljava/lang/String;Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;IILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-static {v5}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 611
    invoke-virtual {v5}, Lretrofit2/Response;->d()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 612
    invoke-virtual {v5}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_11
    const-string v2, "it.body()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/SyncUpResponse;

    .line 613
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/SyncUpResponse;->getResultCode()I

    move-result v9

    .line 614
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/SyncUpResponse;)J

    move-result-wide v10

    if-eqz v9, :cond_14

    const/16 v1, 0x106d

    if-eq v9, v1, :cond_12

    move-object v14, v6

    const/4 v13, 0x1

    goto :goto_9

    :cond_12
    if-nez v15, :cond_13

    .line 621
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_13
    const/4 v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v13, 0x1

    move-wide/from16 v3, p3

    move-object v5, v15

    move-object v14, v6

    move-object/from16 v6, p2

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->renamePlaylist(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;I)V

    :goto_9
    move v1, v9

    move-wide v2, v10

    goto :goto_b

    :cond_14
    move-object v14, v6

    const/4 v13, 0x1

    .line 618
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/SyncUpResponse;->getList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_9

    :cond_15
    move-object v14, v6

    const/4 v13, 0x1

    .line 625
    invoke-virtual {v5}, Lretrofit2/Response;->a()I

    move-result v1

    goto :goto_b

    :cond_16
    move-object v14, v6

    goto :goto_a

    :cond_17
    move-object v14, v6

    move-object/from16 v17, v13

    :goto_a
    const/4 v13, 0x1

    :goto_b
    move-wide v3, v2

    move-object/from16 v2, v16

    if-nez v1, :cond_19

    if-eqz v2, :cond_18

    .line 632
    invoke-static/range {p3 .. p4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "MediaContents.Playlists.\u2026getContentUri(playlistId)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v14, v13, v14}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "MediaContents.Playlists.\u2026toDeleteBeforeInsertUri()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    move-object/from16 v13, v17

    check-cast v13, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makeSyncUpMemberValues(Ljava/util/List;Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v2

    .line 631
    invoke-static {v0, v5, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v12

    move v2, v12

    goto :goto_c

    :cond_18
    const/4 v2, 0x0

    :goto_c
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 636
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1bc

    const/16 v21, 0x0

    move-object/from16 v9, p1

    move-wide/from16 v10, p3

    invoke-static/range {v9 .. v21}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncUpPlaylist() X resultCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numSynced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_d

    .line 640
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncUpPlaylist() X resultCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numSynced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v13}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logE(Ljava/lang/String;I)V

    :goto_d
    return-void

    :cond_1a
    move-object/from16 v17, v13

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 823
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_e
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 555
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_f
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 532
    :cond_1b
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final deleteServerPlaylist(Landroid/content/Context;JLjava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteServerPlaylist() S id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->serverPlaylists:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    new-instance v2, Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;

    const/4 v3, 0x2

    invoke-direct {v2, p4, v1, v3, v1}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object p4, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    invoke-virtual {p4, p1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 496
    new-instance v2, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;

    check-cast v0, Ljava/util/List;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;-><init>(Ljava/util/List;)V

    invoke-static {p4, v2, v1, v3, v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;->deletePlaylists$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-static {p4}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 497
    invoke-virtual {p4}, Lretrofit2/Response;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {p4}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast p4, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResponse;

    invoke-virtual {p4}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResponse;->getResultCode()I

    move-result p4

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {p4}, Lretrofit2/Response;->a()I

    move-result p4

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_3

    .line 507
    sget-object p4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->e:Landroid/net/Uri;

    const-string v0, "MediaContents.Playlists.\u2026NTENT_URI_INCLUDE_DELETED"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 506
    invoke-static {p1, p4, p2, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "deleteServerPlaylist() X"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    .line 511
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_1

    .line 513
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteServerPlaylist() X resultCode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logE(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 396
    check-cast p1, [Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->doInBackground([Lkotlin/Unit;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method protected varargs doInBackground([Lkotlin/Unit;)V
    .locals 12

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    if-eqz v7, :cond_11

    const-string v0, "weakReference.get() ?: return"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    sget-object v0, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v0

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_3

    .line 412
    invoke-static {v0, v10, v9, v10}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;->getPlaylists$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 413
    invoke-virtual {v0}, Lretrofit2/Response;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    invoke-virtual {v0}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "it.body()!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;

    .line 415
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;->getResultCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 417
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 818
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;

    .line 418
    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->serverPlaylists:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 422
    :cond_2
    invoke-virtual {v0}, Lretrofit2/Response;->a()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle conflict items failed. resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->syncItems:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 820
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle conflict item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getSyncAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logD$default(Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 433
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getSyncAction()I

    move-result v0

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 457
    :pswitch_0
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getServerPlaylistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->serverPlaylists:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getServerPlaylistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getServerModifiedState()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 460
    :cond_7
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalPlaylistId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 461
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalPlaylistName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 458
    :cond_9
    invoke-direct {p0, v7, v0, v1, v2}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->deleteLocalPlaylist(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_2

    .line 464
    :cond_a
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getServerPlaylistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalPlaylistId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getServerPlaylistName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalPlaylistName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 467
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalPlaylistId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 468
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getServerPlaylistId()Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalPlaylistName()Ljava/lang/String;

    move-result-object v5

    .line 470
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getServerPlaylistName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, v7

    .line 465
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->syncDownPlaylist(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->targetFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_5

    .line 473
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->requestCode:Ljava/lang/Integer;

    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v8, v10}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_2

    :cond_c
    const-string v0, "Handle conflict item failed. SYNC_DOWN no handled"

    .line 477
    invoke-direct {p0, v0, v9}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logE(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 438
    :pswitch_1
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalModifiedState()I

    move-result v0

    if-ne v0, v1, :cond_d

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalPlaylistId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getServerPlaylistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 439
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalPlaylistId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getServerPlaylistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7, v0, v1, v2}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->deleteServerPlaylist(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_2

    .line 441
    :cond_d
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalPlaylistId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 444
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalPlaylistName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 445
    :cond_e
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getLocalPlaylistId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 446
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;->getServerPlaylistId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, v7

    .line 442
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->syncUpPlaylist(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const-string v0, "Handle conflict item failed. SYNC_UP no handled"

    .line 450
    invoke-direct {p0, v0, v9}, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->logE(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_10
    return-void

    :cond_11
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getRequestCode()Ljava/lang/Integer;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->requestCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSyncItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/playlist/ConflictDialog$SyncItem;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->syncItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->targetFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/HandleConflictTask;->weakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method
