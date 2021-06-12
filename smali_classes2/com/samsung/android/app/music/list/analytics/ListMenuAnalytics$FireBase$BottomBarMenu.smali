.class final Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BottomBarMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;->a:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 129
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;->a:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;

    iget-object v2, v2, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;->a(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x10030

    if-ne v3, v4, :cond_1

    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    move-object v1, v0

    goto/16 :goto_b

    :sswitch_0
    const-string v0, "favorite_select_delete"

    goto :goto_0

    :sswitch_1
    const-string v0, "favorite_select_add"

    goto :goto_0

    :sswitch_2
    const-string v0, "favorite_select_play"

    goto :goto_0

    :cond_1
    :goto_1
    const v3, 0x10004

    if-nez v2, :cond_2

    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    :sswitch_3
    const-string v0, "playlists_select_rename"

    goto :goto_0

    :sswitch_4
    const-string v0, "playlists_select_delete"

    goto :goto_0

    :sswitch_5
    const-string v0, "playlists_select_add"

    goto :goto_0

    :sswitch_6
    const-string v0, "playlists_select_play"

    goto :goto_0

    :cond_3
    :goto_2
    const v3, 0x100004

    if-nez v2, :cond_4

    goto/16 :goto_4

    .line 148
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_7

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;->a:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;->b(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string v2, "-14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const-string v0, "recently_added_select_remove"

    goto :goto_0

    :pswitch_2
    const-string v0, "recently_added_select_download"

    goto :goto_0

    :pswitch_3
    const-string v0, "playlist_detail_select_share"

    goto :goto_0

    :pswitch_4
    const-string v0, "recently_added_select_add"

    goto :goto_0

    :pswitch_5
    const-string v0, "recently_added_select_play"

    goto :goto_0

    :pswitch_6
    const-string v2, "-13"

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_7
    const-string v0, "recently_played_select_remove"

    goto :goto_0

    :pswitch_8
    const-string v0, "recently_played_select_download"

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "playlist_detail_select_share"

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "recently_played_select_add"

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "recently_played_select_play"

    goto/16 :goto_0

    :pswitch_c
    const-string v2, "-12"

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "most_played_select_remove"

    goto/16 :goto_0

    :pswitch_e
    const-string v0, "most_played_select_download"

    goto/16 :goto_0

    :pswitch_f
    const-string v0, "playlist_detail_select_share"

    goto/16 :goto_0

    :pswitch_10
    const-string v0, "most_played_select_add"

    goto/16 :goto_0

    :pswitch_11
    const-string v0, "most_played_select_play"

    goto/16 :goto_0

    :pswitch_12
    const-string v2, "-11"

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_13
    const-string v0, "favorite_tracks_select_remove"

    goto/16 :goto_0

    :pswitch_14
    const-string v0, "favorite_tracks_select_download"

    goto/16 :goto_0

    :pswitch_15
    const-string v0, "playlist_detail_select_share"

    goto/16 :goto_0

    :pswitch_16
    const-string v0, "favorite_tracks_select_add"

    goto/16 :goto_0

    :pswitch_17
    const-string v0, "favorite_tracks_select_play"

    goto/16 :goto_0

    .line 191
    :cond_6
    :goto_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_18
    const-string v0, "playlist_detail_select_remove"

    goto/16 :goto_0

    :pswitch_19
    const-string v0, "playlist_detail_select_download"

    goto/16 :goto_0

    :pswitch_1a
    const-string v0, "playlist_detail_select_share"

    goto/16 :goto_0

    :pswitch_1b
    const-string v0, "playlist_detail_select_add"

    goto/16 :goto_0

    :pswitch_1c
    const-string v0, "playlist_detail_select_play"

    goto/16 :goto_0

    :cond_7
    :goto_4
    const v3, 0x110001

    const v4, 0x7f1305af

    if-nez v2, :cond_8

    goto :goto_5

    .line 202
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_a

    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eq p1, v4, :cond_9

    packed-switch p1, :pswitch_data_6

    goto/16 :goto_0

    :pswitch_1d
    const-string v0, "tracks_select_add"

    goto/16 :goto_0

    :pswitch_1e
    const-string v0, "tracks_select_play"

    goto/16 :goto_0

    :cond_9
    const-string v0, "tracks_select_delete"

    goto/16 :goto_0

    :cond_a
    :goto_5
    const v3, 0x10002

    if-nez v2, :cond_b

    goto :goto_6

    .line 210
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_d

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eq p1, v4, :cond_c

    packed-switch p1, :pswitch_data_7

    goto/16 :goto_0

    :pswitch_1f
    const-string v0, "albums_select_add"

    goto/16 :goto_0

    :pswitch_20
    const-string v0, "albums_select_play"

    goto/16 :goto_0

    :cond_c
    const-string v0, "albums_select_delete"

    goto/16 :goto_0

    :cond_d
    :goto_6
    const v3, 0x10003

    if-nez v2, :cond_e

    goto :goto_7

    .line 218
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_10

    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eq p1, v4, :cond_f

    packed-switch p1, :pswitch_data_8

    goto/16 :goto_0

    :pswitch_21
    const-string v0, "artists_select_add"

    goto/16 :goto_0

    :pswitch_22
    const-string v0, "artists_select_play"

    goto/16 :goto_0

    :cond_f
    const-string v0, "artists_select_delete"

    goto/16 :goto_0

    :cond_10
    :goto_7
    const v3, 0x10006

    if-nez v2, :cond_11

    goto :goto_8

    .line 226
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_13

    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eq p1, v4, :cond_12

    packed-switch p1, :pswitch_data_9

    goto/16 :goto_0

    :pswitch_23
    const-string v0, "genres_select_add"

    goto/16 :goto_0

    :pswitch_24
    const-string v0, "genres_select_play"

    goto/16 :goto_0

    :cond_12
    const-string v0, "genres_select_delete"

    goto/16 :goto_0

    :cond_13
    :goto_8
    const v3, 0x10007

    if-nez v2, :cond_14

    goto :goto_9

    .line 234
    :cond_14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_16

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eq p1, v4, :cond_15

    packed-switch p1, :pswitch_data_a

    goto/16 :goto_0

    :pswitch_25
    const-string v0, "folders_select_add"

    goto/16 :goto_0

    :pswitch_26
    const-string v0, "folders_select_play"

    goto/16 :goto_0

    :cond_15
    const-string v0, "folders_select_delete"

    goto/16 :goto_0

    :cond_16
    :goto_9
    const v3, 0x10008

    if-nez v2, :cond_17

    goto :goto_a

    .line 242
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_19

    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eq p1, v4, :cond_18

    packed-switch p1, :pswitch_data_b

    goto/16 :goto_0

    :pswitch_27
    const-string v0, "composers_select_add"

    goto/16 :goto_0

    :pswitch_28
    const-string v0, "composers_select_play"

    goto/16 :goto_0

    :cond_18
    const-string v0, "composers_select_delete"

    goto/16 :goto_0

    :cond_19
    :goto_a
    const-string p1, "FireBase"

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bottomBar - invalid listType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;->a:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;

    iget-object v2, v2, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;->a(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    if-eqz v1, :cond_1a

    .line 255
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;->a:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;->c(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string v0, "general_click_event"

    const-string v2, "click_event"

    .line 254
    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    if-eqz v1, :cond_1b

    const/4 p1, 0x1

    goto :goto_c

    :cond_1b
    const/4 p1, 0x0

    :goto_c
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1305ab -> :sswitch_2
        0x7f1305ac -> :sswitch_1
        0x7f1305af -> :sswitch_0
        0x7f1305ba -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7f1305ab -> :sswitch_6
        0x7f1305ac -> :sswitch_5
        0x7f1305af -> :sswitch_4
        0x7f1305bf -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xaf0d
        :pswitch_12
        :pswitch_c
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f1305ab
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f1305ab
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f1305ab
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7f1305ab
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7f1305ab
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x7f1305ab
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x7f1305ab
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x7f1305ab
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x7f1305ab
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x7f1305ab
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x7f1305ab
        :pswitch_28
        :pswitch_27
    .end packed-switch
.end method
