.class final Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FireBase"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

.field private final b:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$itemClick$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$itemClick$1;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->b:Lkotlin/jvm/functions/Function3;

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$thumbnailClick$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$thumbnailClick$1;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->c:Lkotlin/jvm/functions/Function3;

    .line 86
    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 87
    check-cast p1, Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->a(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)I

    move-result v0

    const v1, 0x100002

    if-eq v0, v1, :cond_7

    const v1, 0x100004

    if-eq v0, v1, :cond_1

    const v1, 0x100007

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "my_music_folder_detail"

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v0, "key_playlist_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0xe

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    const-string p1, "my_music_tab_playlists_2nd_recently_added"

    goto :goto_0

    :cond_3
    const-wide/16 v2, -0xc

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    const-string p1, "my_music_tab_playlists_2nd_most_played"

    goto :goto_0

    :cond_4
    const-wide/16 v2, -0xd

    cmp-long p1, v0, v2

    if-nez p1, :cond_5

    const-string p1, "my_music_tab_playlists_2nd_recently_played"

    goto :goto_0

    :cond_5
    const-wide/16 v2, -0xb

    cmp-long p1, v0, v2

    if-nez p1, :cond_6

    const-string p1, "my_music_tab_playlists_2nd_favourites"

    goto :goto_0

    :cond_6
    const-string p1, "my_music_playlist_detail"

    goto :goto_0

    :cond_7
    const-string p1, "my_music_album_detail"

    :goto_0
    if-eqz p1, :cond_9

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_8
    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$$special$$inlined$doOnResume$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :cond_9
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->b:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public b()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->c:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
