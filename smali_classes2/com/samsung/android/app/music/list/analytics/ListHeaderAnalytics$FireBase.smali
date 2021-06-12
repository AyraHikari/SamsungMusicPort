.class final Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FireBase"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->a(Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;)I

    move-result v0

    const v1, 0x10004

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x100004

    if-eq v0, v1, :cond_0

    const-string p1, "FireBase"

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listHeader - listType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->c(Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->b(Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "-14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const-string v2, "recently_added_click_playall"

    goto :goto_2

    :pswitch_2
    const-string v2, "recently_added_click_shuffle"

    goto :goto_2

    :pswitch_3
    const-string v1, "-13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    packed-switch p1, :pswitch_data_2

    goto :goto_2

    :pswitch_4
    const-string v2, "recently_played_click_playall"

    goto :goto_2

    :pswitch_5
    const-string v2, "recently_played_click_shuffle"

    goto :goto_2

    :pswitch_6
    const-string v1, "-12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    packed-switch p1, :pswitch_data_3

    goto :goto_2

    :pswitch_7
    const-string v2, "most_played_click_playall"

    goto :goto_2

    :pswitch_8
    const-string v2, "most_played_click_shuffle"

    goto :goto_2

    :pswitch_9
    const-string v1, "-11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    packed-switch p1, :pswitch_data_4

    goto :goto_2

    :pswitch_a
    const-string v2, "favorite_tracks_click_playall"

    goto :goto_2

    :pswitch_b
    const-string v2, "favorite_tracks_click_shuffle"

    goto :goto_2

    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_5

    goto :goto_2

    :pswitch_c
    const-string p1, "playlist_detail_click_playall"

    goto :goto_1

    :pswitch_d
    const-string p1, "playlist_detail_click_shuffle"

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const-string v2, "playlists_click_create_playlist"

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->c(Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string v0, "general_click_event"

    const-string v1, "click_event"

    .line 81
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0xaf0d
        :pswitch_9
        :pswitch_6
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
