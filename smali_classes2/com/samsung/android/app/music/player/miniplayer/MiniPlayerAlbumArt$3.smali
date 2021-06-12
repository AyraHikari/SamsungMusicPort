.class Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 354
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "User"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 356
    check-cast v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 358
    iget-object v3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v3}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->e(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 361
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->a()I

    move-result v3

    .line 362
    iget-object v4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v4}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->f(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 366
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I

    move-result v3

    .line 367
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->b()V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 369
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 371
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 378
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v4}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)I

    move-result v4

    const v5, 0x7f1000b6

    invoke-static {v0, p1, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter$Util;->convert(Landroid/content/res/Resources;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->h(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v3}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->a(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 373
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v4}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;

    move-result-object v4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v4, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter$Util;->convert(Landroid/content/res/Resources;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->h(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v3}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->a(ILandroid/graphics/drawable/Drawable;I)V

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
