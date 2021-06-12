.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;
.source "SourceFile"


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

    .line 255
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;)V

    return-void
.end method


# virtual methods
.method public asyncPublishBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 3

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "asyncPublishBitmap uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " elapsedTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$800(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 292
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 294
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    .line 295
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 297
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    .line 300
    :cond_2
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkCallback;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkCallback;->onArtworkDecoded(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method asyncPublishMetaCachedBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 3
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "asyncPublishMetaCachedBitmap uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " bitmap "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " elapsedTime "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 312
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    .line 313
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 316
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method syncPublishMetaCachedBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "syncPublishMetaCachedBitmap uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " bitmap "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    .line 276
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 277
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method syncPublishMetaNoCachedBitmap(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "syncPublishMetaNoCachedBitmap uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :goto_0
    return-void
.end method
