.class public final Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

.field private b:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

.field private final c:Lcom/samsung/android/app/music/service/v3/legacy/LegacyServiceFacade;


# direct methods
.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;-><init>()V

    .line 62
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    .line 63
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->a()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v2

    const-string v1, "LocalMusicContents.getInstance()"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "title"

    const-string v10, "album"

    const-string v11, "artist"

    const-string v12, "album_id"

    const-string v13, "artist_id"

    const-string v14, "duration"

    const-string v15, "_data"

    const-string v16, "mime_type"

    const-string v17, "genre"

    const-string v18, "bit_depth"

    const-string v19, "sampling_rate"

    const-string v20, "is_secretbox"

    const-string v21, "cp_attrs"

    const-string v22, "source_id"

    const-string v23, "explicit"

    const-string v24, "is_celeb"

    filled-new-array/range {v9 .. v24}, [Ljava/lang/String;

    move-result-object v3

    const-string v9, "_id"

    const-string v10, "title"

    const-string v11, "album"

    const-string v12, "artist"

    const-string v13, "album_id"

    const-string v14, "duration"

    const-string v15, "mime_type"

    const-string v16, "genre"

    const-string v17, "bit_depth"

    const-string v18, "sampling_rate"

    const-string v19, "is_secretbox"

    const-string v20, "cp_attrs"

    const-string v21, "explicit"

    const-string v22, "is_celeb"

    .line 76
    filled-new-array/range {v9 .. v22}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    .line 62
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;[Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    .line 89
    new-instance v1, Lcom/samsung/android/app/music/service/v3/legacy/LegacyServiceFacade;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/v3/legacy/LegacyServiceFacade;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->c:Lcom/samsung/android/app/music/service/v3/legacy/LegacyServiceFacade;

    return-void
.end method

.method private final a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
    .locals 13

    .line 124
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;-><init>()V

    .line 125
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->getServiceOptions()Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->getContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v2

    const v3, 0x7f1000b7

    .line 125
    invoke-direct {v1, p1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;I)V

    .line 131
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

    .line 132
    move-object v12, v1

    check-cast v12, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v7

    .line 133
    const-class v8, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->c:Lcom/samsung/android/app/music/service/v3/legacy/LegacyServiceFacade;

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 134
    new-instance v2, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;

    invoke-direct {v2}, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;-><init>()V

    move-object v10, v2

    check-cast v10, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    new-instance v2, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;

    invoke-direct {v2}, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;-><init>()V

    move-object v11, v2

    check-cast v11, Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;

    move-object v4, v0

    move-object v5, p1

    move-object v6, v12

    .line 131
    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Ljava/lang/Class;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;)V

    .line 136
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-direct {p0, v12, v2}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 137
    new-instance v2, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;-><init>(Landroid/content/Context;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setLyricLoader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->getServiceOptions()Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->getLogger()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlayerLoggers(Landroid/util/SparseArray;)V

    .line 141
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->getServiceOptions()Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->getContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v4

    .line 143
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v6

    .line 144
    new-instance v2, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate;-><init>(Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;)V

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;

    .line 145
    new-instance v2, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;

    invoke-direct {v2, v12}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    move-object v8, v2

    check-cast v8, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    move-object v2, v0

    move-object v3, p1

    move-object v5, v12

    .line 141
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V

    .line 147
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-direct {p0, v12, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 150
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    .line 151
    sget-object v2, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->Companion:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$Companion;

    invoke-virtual {v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    move-result-object v2

    .line 152
    new-instance v3, Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;

    invoke-direct {v3}, Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;-><init>()V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    .line 150
    invoke-direct {v0, p1, v12, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 148
    invoke-direct {p0, v12, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 157
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;

    sget-object v2, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->Companion:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$Companion;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v12, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 155
    invoke-direct {p0, v12, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 159
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isSupportCoverSView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;

    .line 163
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v2

    .line 164
    sget-boolean v4, Lcom/samsung/android/app/music/info/features/AppFeatures;->i:Z

    .line 162
    invoke-direct {v0, p1, v12, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Z)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 160
    invoke-direct {p0, v12, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 168
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->obtainScheduleExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 170
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_1

    .line 177
    new-instance v2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;-><init>(Landroid/content/Context;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-direct {p0, v12, v2}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 181
    :cond_1
    new-instance v2, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;

    invoke-direct {v2, p1, v3, v0}, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;Ljava/util/concurrent/ScheduledExecutorService;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 179
    invoke-direct {p0, v12, v2}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 191
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->getServiceOptions()Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->getContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 189
    invoke-direct {p0, v12, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 195
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater;

    .line 196
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v2

    .line 197
    new-instance v4, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;

    invoke-direct {v4, p1}, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;-><init>(Landroid/content/Context;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;

    .line 195
    invoke-direct {v0, p1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 193
    invoke-direct {p0, v12, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 200
    invoke-static {}, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    new-instance v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->c:Lcom/samsung/android/app/music/service/v3/legacy/LegacyServiceFacade;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 201
    invoke-direct {p0, v12, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 207
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 210
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;

    .line 211
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v2

    .line 214
    invoke-static {p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v4

    .line 210
    invoke-direct {v0, p1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 208
    invoke-direct {p0, v12, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 217
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->d:Z

    if-eqz v0, :cond_3

    .line 220
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    const-class v2, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 218
    invoke-direct {p0, v12, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 223
    :cond_3
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->f:Z

    if-eqz v0, :cond_4

    .line 225
    new-instance v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;

    .line 228
    sget-object v2, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$setUpCenter$1;->a:Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$setUpCenter$1;

    check-cast v2, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;

    .line 225
    invoke-direct {v0, p1, v3, v2}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 224
    invoke-direct {p0, v12, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 249
    :cond_4
    new-instance v0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->a(Z)Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->a()Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;

    move-result-object v0

    const-string v2, "MusicLoggingUpdater.Buil\u2026res.SUPPORT_MILK).build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 248
    invoke-direct {p0, v12, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 253
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    move-result-object p1

    const-string v0, "BixbyAppCardManager.getInstance(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-direct {p0, v12, p1}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :cond_5
    return-object v1
.end method

.method private final a(ILandroid/app/Notification;)V
    .locals 0

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;ILandroid/app/Notification;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Z)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 0

    .line 263
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method

.method private final a(Z)V
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->stopForeground(Z)V

    return-void
.end method


# virtual methods
.method public changeToLegacyObservable(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->b:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    if-nez v0, :cond_0

    const-string v1, "legacyObservable"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->changePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    return-void
.end method

.method public getServiceOptions()Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    const-string v3, "Service"

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->b:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->b:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    if-nez v1, :cond_0

    const-string v2, "legacyObservable"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$onCreate$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$onCreate$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 115
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->onCreate()V

    return-void
.end method
