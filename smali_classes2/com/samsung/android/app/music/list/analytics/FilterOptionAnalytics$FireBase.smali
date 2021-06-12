.class final Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics$FireBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FireBase"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;->a(Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;)I

    move-result v0

    const v1, 0x100004

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_e

    const v1, 0x110001

    const/4 v4, 0x5

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const-string p1, "FireBase"

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterOption - invalid listType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;->a(Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_1
    const-string v3, "composers_order_mostadded"

    goto/16 :goto_1

    :pswitch_2
    const-string v3, "composers_order_name"

    goto/16 :goto_1

    :cond_0
    const-string v3, "composers_order_dateadded"

    goto/16 :goto_1

    :pswitch_3
    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v3, "folders_order_name"

    goto/16 :goto_1

    :cond_2
    const-string v3, "folders_order_dateadded"

    goto/16 :goto_1

    :pswitch_4
    packed-switch p1, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_5
    const-string v3, "genres_order_mostadded"

    goto/16 :goto_1

    :pswitch_6
    const-string v3, "genres_order_name"

    goto/16 :goto_1

    :pswitch_7
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v3, "playlists_order_dateplayed"

    goto/16 :goto_1

    :cond_4
    const-string v3, "playlists_order_custom"

    goto/16 :goto_1

    :cond_5
    const-string v3, "playlists_order_name"

    goto/16 :goto_1

    :cond_6
    const-string v3, "playlists_order_dateadded"

    goto/16 :goto_1

    :pswitch_8
    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    goto/16 :goto_1

    :cond_7
    const-string v3, "artists_order_name"

    goto/16 :goto_1

    :cond_8
    const-string v3, "artists_order_dateadded"

    goto/16 :goto_1

    :pswitch_9
    if-eq p1, v4, :cond_9

    packed-switch p1, :pswitch_data_4

    goto/16 :goto_1

    :pswitch_a
    const-string v3, "albums_order_name"

    goto/16 :goto_1

    :pswitch_b
    const-string v3, "albums_order_release"

    goto/16 :goto_1

    :cond_9
    const-string v3, "albums_order_artist"

    goto :goto_1

    :cond_a
    if-eqz p1, :cond_d

    if-eq p1, v2, :cond_c

    if-eq p1, v4, :cond_b

    goto :goto_1

    :cond_b
    const-string v3, "tracks_order_artist"

    goto :goto_1

    :cond_c
    const-string v3, "tracks_order_name"

    goto :goto_1

    :cond_d
    const-string v3, "tracks_order_dateadded"

    goto :goto_1

    .line 29
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;->b(Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, 0xaf0d

    if-eq v1, v4, :cond_10

    goto :goto_0

    :cond_10
    const-string v1, "-11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eq p1, v2, :cond_11

    packed-switch p1, :pswitch_data_5

    goto :goto_1

    :pswitch_c
    const-string v3, "favorite_tracks_order_device"

    goto :goto_1

    :pswitch_d
    const-string v3, "favorite_tracks_order_artist"

    goto :goto_1

    :pswitch_e
    const-string v3, "favorite_tracks_order_custom"

    goto :goto_1

    :cond_11
    const-string v3, "favorite_tracks_order_name"

    goto :goto_1

    :cond_12
    :goto_0
    const-string p1, "FireBase"

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterOption - invalid keyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;->c(Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v3, :cond_13

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;->c(Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string v0, "general_click_event"

    const-string v1, "click_event"

    .line 109
    invoke-static {p1, v0, v1, v3}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10006
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
