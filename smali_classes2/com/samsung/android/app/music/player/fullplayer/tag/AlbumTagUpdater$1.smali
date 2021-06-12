.class Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$1;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 192
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 193
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$1;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;Landroid/content/Context;)V

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$1;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;)V

    :cond_0
    return-void
.end method
