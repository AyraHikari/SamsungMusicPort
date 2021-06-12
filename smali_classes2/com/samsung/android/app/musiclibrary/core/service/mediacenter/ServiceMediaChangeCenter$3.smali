.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->forceToUpdateNotification(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

.field final synthetic val$currentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field final synthetic val$n:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

.field final synthetic val$playbackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;->val$currentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;->val$n:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;->val$playbackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;->val$currentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    .line 434
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;->val$currentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v6

    .line 435
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    long-to-int v0, v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$1000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;I)Landroid/net/Uri;

    move-result-object v8

    .line 436
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;->val$n:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;->val$currentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;->val$playbackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->forceToUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;JLandroid/net/Uri;)V

    return-void
.end method
