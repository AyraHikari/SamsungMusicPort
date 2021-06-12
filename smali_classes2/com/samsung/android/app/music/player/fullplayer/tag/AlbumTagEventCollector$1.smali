.class Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$1;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 64
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$1;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;)V

    const/4 p1, 0x1

    return p1
.end method
