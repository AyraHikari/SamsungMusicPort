.class final Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlbumUpdateHandler"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    return-void
.end method

.method private final a(Landroid/content/Context;Landroid/os/Message;Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Z)V
    .locals 3

    .line 521
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 522
    invoke-static {p3}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$getCurrentAlbumUri$p(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    const-string p1, "SV-Widget"

    const-string p4, "AlbumUpdateHandler() artwork reloaded complete"

    .line 524
    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;->a:Landroid/content/Context;

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {p3, p1, p2, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$updateWidgetArtwork(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.Bitmap"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p4, "SMUSIC-SV-Widget"

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlbumUpdateHandler() decode failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ".what"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 528
    invoke-static {p3, p1, p2, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$updateWidgetArtwork(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SMUSIC-SV-Widget"

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlbumUpdateHandler() what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;->a(Landroid/content/Context;Landroid/os/Message;Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Z)V

    goto :goto_0

    .line 512
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$AlbumUpdateHandler;->a(Landroid/content/Context;Landroid/os/Message;Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
