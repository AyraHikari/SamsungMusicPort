.class public final Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeWidgetRemoteViewBuilderManager"

.field private static final sInstance:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    return-object v0
.end method


# virtual methods
.method public addRemoteViewBuilder(ILcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->TAG:Ljava/lang/String;

    const-string p2, "addRemoteViewBuilder. but it was already registered"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setArtwork(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;

    .line 52
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;->setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEmptyView(II)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;

    .line 66
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;->setEmptyView(II)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;

    .line 45
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPlayStatus(Z)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;

    .line 59
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method
