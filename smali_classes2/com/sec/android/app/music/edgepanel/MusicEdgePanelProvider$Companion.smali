.class public final Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 502
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;
    .locals 3

    .line 515
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getSInstance$cp()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    monitor-enter v0

    .line 516
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getSInstance$cp()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 517
    :cond_1
    new-instance v1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-direct {v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;-><init>()V

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    invoke-static {v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$setSInstance$cp(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :goto_0
    monitor-exit v0

    move-object v0, v1

    :goto_1
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
