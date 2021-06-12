.class Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$9;
.super Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$9;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResult(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;)V
    .locals 0

    return-void
.end method
