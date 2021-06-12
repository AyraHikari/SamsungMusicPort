.class final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmptyMetaController"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

.field private b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 835
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    const/4 p1, 0x1

    .line 876
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->e:Z

    return-void
.end method

.method private final b(Z)V
    .locals 1

    .line 854
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->d:Z

    if-eq v0, p1, :cond_0

    .line 855
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->d:Z

    .line 856
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->d:Z

    if-eqz p1, :cond_0

    .line 857
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    .line 890
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 968
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "SMUSIC-FullPlayer"

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check back-press condition emtpy meta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isActive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->getState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p1, :cond_5

    .line 895
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 896
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->c:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->d:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->getState()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 899
    :cond_2
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 983
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "SMUSIC-FullPlayer"

    const-string v0, "Empty Meta - onBackPressed() Requested!"

    .line 899
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m()Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onBackPressed()V

    goto :goto_4

    :cond_4
    :goto_3
    return-void

    :cond_5
    :goto_4
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 845
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->c:Z

    if-eq v0, p1, :cond_0

    .line 846
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->c:Z

    .line 847
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->c:Z

    if-eqz p1, :cond_0

    .line 848
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :cond_0
    return-void
.end method

.method public getState()Z
    .locals 1

    .line 876
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->e:Z

    return v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 886
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public final onStarted()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    .line 865
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->b(Z)V

    return-void
.end method

.method public final onStopped()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    .line 870
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->b(Z)V

    return-void
.end method

.method public setState(Z)V
    .locals 0

    .line 878
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->e:Z

    if-eqz p1, :cond_0

    .line 880
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :cond_0
    return-void
.end method
