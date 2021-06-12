.class final Lcom/samsung/android/app/music/provider/MediaUriContentObserver;
.super Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MediaUriContentObserver$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MediaUriContentObserver$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/MediaUriContentObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MediaUriContentObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->a:Lcom/samsung/android/app/music/provider/MediaUriContentObserver$Companion;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSync-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->c:Ljava/lang/String;

    .line 122
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaStore.Audio.Media.E\u2026AL_CONTENT_URI.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->d:Ljava/lang/String;

    .line 123
    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaStore.Audio.Albums.\u2026AL_CONTENT_URI.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->e:Ljava/lang/String;

    .line 124
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaStore.Audio.Playlis\u2026AL_CONTENT_URI.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->f:Ljava/lang/String;

    const-string v0, "external"

    .line 125
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaStore.Files.getCont\u2026ri(\"external\").toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const-class v0, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 82
    check-cast p1, Ljava/lang/Iterable;

    .line 193
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 83
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uri.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v3, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDelayedChange uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content://media/external"

    .line 87
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_1
    sget-object v3, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->d:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v5, v4}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->e:Ljava/lang/String;

    invoke-static {v2, v3, v6, v5, v4}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 100
    :cond_2
    sget-object v1, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->f:Ljava/lang/String;

    invoke-static {v2, v1, v6, v5, v4}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_3
    sget-object v1, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->g:Ljava/lang/String;

    invoke-static {v2, v1, v6, v5, v4}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    const-string v2, "SENDER"

    .line 94
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "SMUSIC"

    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :cond_5
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 110
    :cond_6
    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 116
    :cond_7
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MediaUriContentObserver;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "syncOperations"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->a(Landroid/content/Context;Ljava/util/EnumSet;)V

    return-void
.end method
