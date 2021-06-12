.class Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# static fields
.field private static final a:Z

.field private static final b:[J


# instance fields
.field private final c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/database/Cursor;

.field private i:I

.field private j:I

.field private k:[J

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 123
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a:Z

    .line 125
    new-array v0, v1, [J

    sput-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->b:[J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->i:I

    .line 141
    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->j:I

    .line 145
    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->l:I

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->m:I

    .line 149
    iput-boolean v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->n:Z

    .line 152
    sget-boolean v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SV-WidgetList"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ListRemoteViewsFactory() intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    .line 156
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(ILjava/util/List;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    .line 471
    :cond_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a()Z

    move-result v0

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0304

    .line 163
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->d:I

    const v0, 0x7f0f0307

    .line 164
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->e:I

    const v0, 0x7f0f0300

    .line 165
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->f:I

    const v0, 0x7f0f0303

    .line 166
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->g:I

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0305

    .line 168
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->d:I

    const v0, 0x7f0f0306

    .line 169
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->e:I

    const v0, 0x7f0f0301

    .line 170
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->f:I

    const v0, 0x7f0f0302

    .line 172
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->g:I

    :goto_0
    return-void
.end method

.method private a(Landroid/widget/RemoteViews;II)V
    .locals 1

    const v0, 0x7f1305a1

    .line 265
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const p2, 0x7f1305a2

    .line 266
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method private a(Landroid/widget/RemoteViews;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 248
    iget p2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->g:I

    iget p3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->g:I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Landroid/widget/RemoteViews;II)V

    goto :goto_0

    .line 250
    :cond_0
    iget p2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->e:I

    iget p3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->e:I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Landroid/widget/RemoteViews;II)V

    .line 252
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Landroid/widget/RemoteViews;Landroid/database/Cursor;I)V

    return-void
.end method

.method private a(Landroid/widget/RemoteViews;Landroid/database/Cursor;I)V
    .locals 3

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.appwidget.ACTION_MUSIC_LIST_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    instance-of v2, p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v2, :cond_1

    .line 276
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 277
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getQueuePosition(I)I

    move-result p3

    :cond_1
    :goto_0
    const-string p2, "extra_list_position"

    .line 279
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "extra_list_ids"

    .line 280
    iget-object p3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->k:[J

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 282
    iget-object p2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x7f1305a0

    .line 283
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 4

    .line 431
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getQueueList()Ljava/util/List;

    move-result-object v0

    .line 432
    sget-boolean v1, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "SV-WidgetList"

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reloadQueueFromService() list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object p1

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    const/4 v2, 0x0

    .line 436
    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->m:I

    .line 437
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getCloneBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 438
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->m:I

    invoke-direct {p0, v1, v0, p1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(ILjava/util/List;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    .line 439
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Ljava/util/List;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->k:[J

    return-void
.end method

.method private a()Z
    .locals 3

    .line 311
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "background_alpha"

    const/16 v2, 0x1e

    .line 312
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x32

    if-ge v1, v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->k(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 316
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "background_color"

    const/4 v2, 0x0

    .line 317
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private a(Landroid/database/Cursor;)Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->n:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->b(Landroid/database/Cursor;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private a(Landroid/database/Cursor;I)Z
    .locals 4

    .line 287
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->l:I

    goto :goto_0

    .line 289
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "extra.list_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 290
    :goto_0
    instance-of v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 291
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 292
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    if-ne v0, p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private a(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)[J"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 444
    sget-object p1, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->b:[J

    return-object p1

    .line 447
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 449
    sget-object p1, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->b:[J

    return-object p1

    .line 452
    :cond_1
    new-array v1, v0, [J

    const/4 v2, 0x0

    .line 456
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v3}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_2

    return-object v1
.end method

.method private b()V
    .locals 3

    .line 374
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SV-WidgetList"

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onDataSetChanged() but Service is null. Reload list info from pref"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->n:Z

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 413
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    const-string v1, "_id"

    .line 414
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 416
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->a()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/service/metadata/playingitem/LocalPlayingItemFactory;

    invoke-direct {v2}, Lcom/samsung/android/app/music/service/metadata/playingitem/LocalPlayingItemFactory;-><init>()V

    .line 417
    invoke-static {p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v3

    .line 416
    invoke-static {p1, v1, v2, v3, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    const/4 v0, 0x1

    .line 419
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 420
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    .line 422
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->m:I

    .line 423
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object v0

    .line 424
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->m:I

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(ILjava/util/List;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    .line 425
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Ljava/util/List;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->k:[J

    .line 426
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getNowPlayingListPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->l:I

    .line 427
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    return-void
.end method

.method private b(Landroid/widget/RemoteViews;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 257
    iget p3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->f:I

    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->g:I

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Landroid/widget/RemoteViews;II)V

    goto :goto_0

    .line 259
    :cond_0
    iget p3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->d:I

    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->e:I

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Landroid/widget/RemoteViews;II)V

    .line 261
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Landroid/widget/RemoteViews;Landroid/database/Cursor;I)V

    return-void
.end method

.method private b(Landroid/database/Cursor;)Z
    .locals 1

    const-string v0, "cp_attrs"

    .line 302
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 307
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result p1

    return p1
.end method

.method private c()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method private c(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "title"

    .line 394
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->i:I

    const-string v0, "artist"

    .line 395
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->j:I

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 0

    .line 476
    invoke-static {p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object p1

    .line 477
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isMyMusicMode()Z

    move-result p1

    return p1
.end method

.method private d()V
    .locals 7

    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isLegalAgreed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV-WidgetList"

    const-string v1, "reloadAllTrack() - isLegalAgreed : false"

    .line 402
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 405
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 406
    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 407
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->k:[J

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "SV-WidgetList"

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " getCount() mCursor is null or mCursor is closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 200
    :goto_0
    sget-boolean v1, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "SV-WidgetList"

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " getCount() count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .line 325
    sget-boolean v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SV-WidgetList"

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " getLoadingView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->i:I

    if-ltz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    iget v3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->i:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 219
    :goto_0
    iget v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->j:I

    if-ltz v2, :cond_3

    .line 220
    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    iget v3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->j:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 224
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Landroid/database/Cursor;I)Z

    move-result v2

    .line 225
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    .line 226
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04026f

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v4, 0x7f1305a1

    .line 229
    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f1305a2

    .line 230
    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    invoke-direct {p0, v3, p1, v2}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->b(Landroid/widget/RemoteViews;IZ)V

    goto :goto_2

    .line 236
    :cond_4
    invoke-direct {p0, v3, p1, v2}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Landroid/widget/RemoteViews;IZ)V

    .line 239
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 240
    invoke-static {v3, v4, p1}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->setViewFingerHovered(Landroid/widget/RemoteViews;IZ)V

    .line 241
    invoke-static {v3, v0, p1}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->setViewFingerHovered(Landroid/widget/RemoteViews;IZ)V

    :cond_5
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 333
    sget-boolean v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SV-WidgetList"

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " getViewTypeCount()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 3

    .line 346
    sget-boolean v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SV-WidgetList"

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasStableIds()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 3

    .line 178
    sget-boolean v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SV-WidgetList"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    .line 354
    sget-boolean v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SV-WidgetList"

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onDataSetChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c()V

    .line 358
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->b()V

    .line 359
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->m:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->k:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->k:[J

    array-length v0, v0

    if-nez v0, :cond_2

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c()V

    .line 362
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->d()V

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a(Landroid/content/Context;)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->h:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c(Landroid/database/Cursor;)V

    .line 367
    sget-boolean v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "SV-WidgetList"

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onDataSetChanged() finished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "SMUSIC-SV-WidgetList"

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSetChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->k:[J

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->k:[J

    array-length v2, v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "SV-WidgetList"

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->c()V

    return-void
.end method
