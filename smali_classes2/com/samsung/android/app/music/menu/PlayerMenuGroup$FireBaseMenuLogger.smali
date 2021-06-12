.class final Lcom/samsung/android/app/music/menu/PlayerMenuGroup$FireBaseMenuLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/menu/PlayerMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FireBaseMenuLogger"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$FireBaseMenuLogger;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$FireBaseMenuLogger;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f13001e

    if-eq p1, v0, :cond_5

    const v0, 0x7f13002d

    if-eq p1, v0, :cond_4

    const v0, 0x7f1301a8

    if-eq p1, v0, :cond_3

    const v0, 0x7f1305bd

    if-eq p1, v0, :cond_2

    const v0, 0x7f1305c5

    if-eq p1, v0, :cond_1

    const v0, 0x7f1305d4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "fullplayer_more_listen_via_bluetooth"

    goto :goto_0

    :pswitch_1
    const-string p1, "fullplayer_more_smart_view"

    goto :goto_0

    :pswitch_2
    const-string p1, "fullplayer_more_music_videos"

    goto :goto_0

    :pswitch_3
    const-string p1, "fullplayer_more_online_artist"

    goto :goto_0

    :pswitch_4
    const-string p1, "fullplayer_more_online_album"

    goto :goto_0

    :pswitch_5
    const-string p1, "fullplayer_more_local_artist"

    goto :goto_0

    :pswitch_6
    const-string p1, "fullplayer_more_local_album"

    goto :goto_0

    :pswitch_7
    const-string p1, "fullplayer_more_share"

    goto :goto_0

    :pswitch_8
    const-string p1, "fullplayer_click_volumn"

    goto :goto_0

    :pswitch_9
    const-string p1, "fullplayer_click_smart_view"

    goto :goto_0

    :cond_0
    const-string p1, "fullplayer_more_details"

    goto :goto_0

    :cond_1
    const-string p1, "fullplayer_more_settings"

    goto :goto_0

    :cond_2
    const-string p1, "fullplayer_more_delete"

    goto :goto_0

    :cond_3
    const-string p1, "fullplayer_more_download"

    goto :goto_0

    :cond_4
    const-string p1, "fullplayer_click_sound_quality"

    goto :goto_0

    :cond_5
    const-string p1, "fullplayer_more_set_as"

    :goto_0
    if-eqz p1, :cond_6

    .line 526
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$FireBaseMenuLogger;->b:Landroid/content/Context;

    const-string v1, "general_click_event"

    const-string v2, "click_event"

    .line 525
    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f1305c8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f1305d1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
