.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtworkWaitTask"
.end annotation


# instance fields
.field private final mArtworkUri:Landroid/net/Uri;

.field private mIsCancel:Z

.field private mIsFinish:Z

.field private mIsPublish:Z

.field private final mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;Landroid/net/Uri;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 551
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mIsPublish:Z

    .line 553
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mIsCancel:Z

    .line 555
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mIsFinish:Z

    .line 558
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;

    .line 559
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mArtworkUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 563
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mIsCancel:Z

    return-void
.end method

.method isFinished(Landroid/net/Uri;)Z
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mArtworkUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 574
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mIsFinish:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 3

    :try_start_0
    const-string v0, "SV-MediaCenter"

    const-string v1, "run sleep 100ms"

    .line 582
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    const-string v0, "SV-MediaCenter"

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run sleep end mIsCancel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mIsCancel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsPublish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mIsPublish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mIsCancel:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mIsPublish:Z

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mArtworkUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;->syncPublishMetaNoCachedBitmap(Landroid/net/Uri;)V

    :cond_0
    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mIsFinish:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 591
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPublish(Landroid/net/Uri;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mArtworkUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 568
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->mIsPublish:Z

    :cond_0
    return-void
.end method
