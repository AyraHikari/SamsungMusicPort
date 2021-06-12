.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArtworkDecoded(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v2

    .line 113
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 116
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 121
    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "artwork"

    .line 122
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "artwork_uri"

    .line 123
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    move-result-object p1

    const-string p2, "com.samsung.android.app.music.core.state.ARTWORK_UPDATED"

    .line 129
    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 130
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
