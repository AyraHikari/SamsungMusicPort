.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Analytics"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SpotifyManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1550
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1553
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/HeartFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "my_music_tab_heart_spotify"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(JI)V
    .locals 1

    .line 1558
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/HeartFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string p2, "spotify"

    const-string p3, "click"

    const-string v0, "heart_trending"

    .line 1557
    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/view/MenuItem;)V
    .locals 3

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1566
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "heart_no_show_again"

    goto :goto_0

    :pswitch_1
    const-string p1, "heart_not_today"

    :goto_0
    if-eqz p1, :cond_1

    .line 1572
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/HeartFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v0, Landroid/app/Activity;

    const-string v1, "spotify"

    const-string v2, "click"

    .line 1571
    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f1305d6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
