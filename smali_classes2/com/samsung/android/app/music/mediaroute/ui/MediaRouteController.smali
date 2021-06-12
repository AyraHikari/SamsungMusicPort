.class public final Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$OnCountChangedListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/music/mediaroute/RouteInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$OnCountChangedListener;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->e:I

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->g:Z

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->b:Landroid/content/Context;

    const v0, 0x7f13029e

    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->c:Landroid/view/View;

    .line 76
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->c:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 77
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$1;-><init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;Lcom/samsung/android/app/music/mediaroute/RouteInfo;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->d:Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/samsung/android/app/music/mediaroute/RouteInfo;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/mediaroute/RouteInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f1302ba

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f1004cb

    .line 137
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->d:Ljava/lang/String;

    .line 138
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v1

    const v2, 0x7f020512

    .line 139
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    :cond_0
    const v0, 0x7f1302bb

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 143
    iget-object p2, p2, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "UI-PlayerCast"

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RouteController> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->c()Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;-><init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()Lcom/samsung/android/app/music/mediaroute/RouteInfo;
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->b:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 171
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 172
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->a(Landroid/database/Cursor;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 170
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 175
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->d:Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->g:Z

    return p0
.end method


# virtual methods
.method a()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->e:I

    return v0
.end method

.method public a(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 90
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->d:Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    if-nez p2, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVisible: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->d:Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    iget-object v0, v0, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->d:Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a(Landroid/view/View;Lcom/samsung/android/app/music/mediaroute/RouteInfo;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p2, 0x8

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$OnCountChangedListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->f:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$OnCountChangedListener;

    return-void
.end method

.method public getState()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->g:Z

    return v0
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "SELECTED_MEDIA_ROUTE_INFO"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->c:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "SELECTED_MEDIA_ROUTE_INFO"

    .line 113
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->c:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->d:Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    return-void

    .line 120
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->d:Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->c:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->d:Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a(Landroid/view/View;Lcom/samsung/android/app/music/mediaroute/RouteInfo;)V

    goto :goto_0

    :cond_2
    const-string v0, "MEDIA_ROUTE_COUNT"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "MEDIA_ROUTE_COUNT"

    .line 123
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 124
    iget p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->e:I

    if-eq p1, p2, :cond_3

    .line 125
    iput p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->e:I

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->f:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$OnCountChangedListener;

    if-eqz p1, :cond_3

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->f:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$OnCountChangedListener;

    iget p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->e:I

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$OnCountChangedListener;->a(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPauseCalled()V
    .locals 0

    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    return-void
.end method

.method public onStartCalled()V
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->b()V

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 187
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public onStopCalled()V
    .locals 2

    const/16 v0, 0x65

    const/4 v1, 0x0

    .line 202
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public setState(Z)V
    .locals 1

    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->g:Z

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->c:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a(Landroid/view/View;Z)V

    return-void
.end method
