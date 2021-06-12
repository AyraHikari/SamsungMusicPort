.class Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$6;
.super Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Ljava/lang/String;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$6;->b:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    iput-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const-string p1, "SMUSIC-SV-PlayerCast"

    .line 463
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$6;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onError "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;)V
    .locals 1

    const-string p1, "SMUSIC-SV-PlayerCast"

    .line 458
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$6;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onResult "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
