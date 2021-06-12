.class public final Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 603
    check-cast v0, Ljava/lang/String;

    .line 604
    iget-object v1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->a(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)I

    move-result v1

    const v2, 0x100002

    if-eq v1, v2, :cond_7

    const v2, 0x100004

    if-eq v1, v2, :cond_1

    const v2, 0x100007

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "my_music_folder_detail"

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v1, "key_playlist_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0xe

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    const-string v0, "my_music_tab_playlists_2nd_recently_added"

    goto :goto_0

    :cond_3
    const-wide/16 v2, -0xc

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    const-string v0, "my_music_tab_playlists_2nd_most_played"

    goto :goto_0

    :cond_4
    const-wide/16 v2, -0xd

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    const-string v0, "my_music_tab_playlists_2nd_recently_played"

    goto :goto_0

    :cond_5
    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const-string v0, "my_music_tab_playlists_2nd_favourites"

    goto :goto_0

    :cond_6
    const-string v0, "my_music_playlist_detail"

    goto :goto_0

    :cond_7
    const-string v0, "my_music_album_detail"

    :goto_0
    if-eqz v0, :cond_8

    .line 618
    iget-object v1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 409
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->removeOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :cond_9
    return-void
.end method
