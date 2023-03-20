.class public final Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;
.super Ljava/lang/Object;
.source "ListAnalyticsImpl.kt"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FireBase"
.end annotation


# instance fields
.field public final a:Lcom/samsung/android/app/music/list/analytics/b;

.field public final synthetic b:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->e(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/h;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/d;->a(Landroid/app/Activity;)Lcom/samsung/android/app/music/list/analytics/b;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/b;

    .line 3
    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->e(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/k;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/k;->d()Landroidx/lifecycle/k$c;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/k$c;->e:Landroidx/lifecycle/k$c;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/k$c;->a(Landroidx/lifecycle/k$c;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5
    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->f(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)I

    move-result v0

    const v2, 0x100002

    if-eq v0, v2, :cond_7

    const v2, 0x100004

    if-eq v0, v2, :cond_2

    const p1, 0x100007

    if-eq v0, p1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "my_music_folder_detail"

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->e(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v0, "key_playlist_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0xe

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    const-string p1, "my_music_tab_playlists_2nd_recently_added"

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_3
    const-wide/16 v2, -0xc

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    const-string p1, "my_music_tab_playlists_2nd_most_played"

    goto :goto_1

    :cond_4
    const-wide/16 v2, -0xd

    cmp-long p1, v0, v2

    if-nez p1, :cond_5

    const-string p1, "my_music_tab_playlists_2nd_recently_played"

    goto :goto_1

    :cond_5
    const-wide/16 v2, -0xb

    cmp-long p1, v0, v2

    if-nez p1, :cond_6

    const-string p1, "my_music_tab_playlists_2nd_favourites"

    goto :goto_1

    :cond_6
    const-string p1, "my_music_playlist_detail"

    goto :goto_1

    :cond_7
    const-string v1, "my_music_album_detail"

    :goto_2
    if-nez v1, :cond_8

    goto :goto_3

    .line 7
    :cond_8
    invoke-static {p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->c(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;)Lcom/samsung/android/app/music/list/analytics/b;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/list/analytics/b;->f(Ljava/lang/String;)V

    goto :goto_3

    .line 8
    :cond_a
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/k;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$special$$inlined$doOnResume$1;

    invoke-direct {v2, v0, p1, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$special$$inlined$doOnResume$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/k;Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/r;)V

    :goto_3
    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;)Lcom/samsung/android/app/music/list/analytics/b;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/b;

    return-object p0
.end method


# virtual methods
.method public a()Lkotlin/jvm/functions/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/q<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$f$a;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$f;)Lkotlin/jvm/functions/q;

    move-result-object v0

    return-object v0
.end method

.method public b()Lkotlin/jvm/functions/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/q<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$f$a;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$f;)Lkotlin/jvm/functions/q;

    move-result-object v0

    return-object v0
.end method
