.class public final Lcom/samsung/android/app/music/service/metadata/playingitem/LocalPlayingItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayingItem(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 3
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    const-string p1, "SMUSIC-SV-List"

    const-string v0, "uri is null in getPlayingItem method"

    .line 24
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget p1, p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uriType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 26
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "SV-List"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayingItem() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uriType:I

    packed-switch v0, :pswitch_data_0

    .line 37
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicPlayingItem;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_1
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
