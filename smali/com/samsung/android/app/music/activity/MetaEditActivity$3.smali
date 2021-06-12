.class Lcom/samsung/android/app/music/activity/MetaEditActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/MetaEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/MetaEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$3;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    .line 168
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayingUri()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MetaEditor"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meta path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$3;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->i(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->n:Ljava/lang/String;

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$3;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;Z)Z

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$3;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b(Lcom/samsung/android/app/music/activity/MetaEditActivity;Z)Z

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method
