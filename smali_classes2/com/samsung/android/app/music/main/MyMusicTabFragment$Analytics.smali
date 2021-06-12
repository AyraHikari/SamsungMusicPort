.class final Lcom/samsung/android/app/music/main/MyMusicTabFragment$Analytics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Analytics"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 513
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Analytics;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Analytics;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "adapter.tabIds[position]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 559
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    move-object v2, p1

    goto :goto_1

    :sswitch_0
    const-string p1, "0007"

    const-string v0, "my_music_tab_tracks"

    goto :goto_0

    .line 555
    :sswitch_1
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    const-string v0, "my_music_tab_spotify"

    goto :goto_0

    :sswitch_2
    const-string p1, "0005"

    const-string v0, "my_music_tab_heart"

    goto :goto_0

    :sswitch_3
    const-string p1, "0012"

    const-string v0, "my_music_tab_composers"

    goto :goto_0

    :sswitch_4
    const-string p1, "0011"

    const-string v0, "my_music_tab_folders"

    goto :goto_0

    :sswitch_5
    const-string p1, "0010"

    const-string v0, "my_music_tab_genres"

    goto :goto_0

    :sswitch_6
    const-string p1, "0006"

    const-string v0, "my_music_tab_playlists"

    goto :goto_0

    :sswitch_7
    const-string p1, "0009"

    const-string v0, "my_music_tab_artists"

    goto :goto_0

    :sswitch_8
    const-string p1, "0008"

    const-string v0, "my_music_tab_albums"

    :goto_0
    move-object v2, p1

    move-object p1, v0

    :goto_1
    if-eqz v2, :cond_0

    .line 563
    sget-object v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a:Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Analytics;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_8
        0x10003 -> :sswitch_7
        0x10004 -> :sswitch_6
        0x10006 -> :sswitch_5
        0x10007 -> :sswitch_4
        0x10008 -> :sswitch_3
        0x10030 -> :sswitch_2
        0x10100 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method
