.class Lcom/samsung/android/app/music/util/player/PlayRadioObservable$1;
.super Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/player/PlayRadioObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$1;->a:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$1;->a:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;Z)Z

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$1;->a:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$1;->a:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)V

    :cond_0
    return-void
.end method

.method public onQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
