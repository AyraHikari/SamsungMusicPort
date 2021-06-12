.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$doNotifyIfReady$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

.field final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$doNotifyIfReady$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$doNotifyIfReady$$inlined$let$lambda$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 852
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-AlbumViewController"

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doNotifyIfReady() with delay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$doNotifyIfReady$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->l(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$doNotifyIfReady$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$doNotifyIfReady$$inlined$let$lambda$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
