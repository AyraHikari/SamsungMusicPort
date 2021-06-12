.class public final Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private e:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

.field private f:Z

.field private g:Landroid/os/Bundle;

.field private final h:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.android.bluetooth"

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a:Ljava/util/List;

    const-string v0, "com.sec.android.automotive.drivelink"

    const-string v1, "com.google.android.music.experimental.mediasessiondemo"

    .line 45
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->b:Ljava/util/List;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->f:Z

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;-><init>(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->h:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;)Landroid/os/Bundle;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->e:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;

    new-instance v1, Lcom/samsung/android/app/music/service/browser/LoadDataFactory;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/browser/LoadDataFactory;-><init>()V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->e:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2c

    .line 199
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->g:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    invoke-virtual {p2}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    .line 168
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object v0

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a()V

    .line 170
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->getCategoryType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->e:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->runPlayableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->e:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->runBrowsableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->e:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->runBrowsableRootResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->e:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->runPlayableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->f:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 150
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->g:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->f:Z

    return p0
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .line 79
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->getSessionInstance(Landroid/content/Context;)Landroid/media/session/MediaSession;

    move-result-object v1

    .line 84
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v2

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$2;-><init>(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;)V

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 107
    :cond_0
    invoke-virtual {v1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    .line 108
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    const-string v2, "SV-MediaBrowser"

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->h:Landroid/content/ServiceConnection;

    const-class v2, Lcom/samsung/android/app/music/service/PlayerService;

    .line 113
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SMUSIC-SV-MediaBrowser"

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Browser service fail bindToService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->h:Landroid/content/ServiceConnection;

    const-class v2, Lcom/samsung/android/app/music/service/PlayerService;

    const/4 v3, 0x0

    .line 117
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;Z)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    :cond_0
    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 3

    const-string v0, "SV-MediaBrowser"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetRoot clientPackageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clientUid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "rootHints"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->isValidClient(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 138
    :cond_0
    sget-object p2, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 139
    new-instance p1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string p2, "root"

    invoke-direct {p1, p2, p3}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1

    .line 141
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    new-instance p1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string p2, "root_include_online"

    invoke-direct {p1, p2, p3}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1

    .line 144
    :cond_2
    new-instance p1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string p2, "root"

    invoke-direct {p1, p2, p3}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "SV-MediaBrowser"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadChildren parentId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-SV-MediaBrowser"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadChildren fail parentId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object p1, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->c:Ljava/util/List;

    invoke-virtual {p2, p1}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
