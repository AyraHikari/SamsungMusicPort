.class public final Lcom/samsung/android/app/music/activity/ArtistDetailActivity$onPageChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/ArtistDetailActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

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

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->a(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "2201"

    const-string v0, "my_music_artist_detail_track"

    :goto_0
    move-object v2, p1

    move-object p1, v0

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v0, 0x1

    if-nez p1, :cond_3

    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    const-string p1, "2202"

    const-string v0, "my_music_artist_detail_album"

    goto :goto_0

    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 69
    check-cast p1, Ljava/lang/String;

    move-object v2, p1

    :goto_3
    if-eqz v2, :cond_5

    const-string v1, "209"

    .line 76
    sget-object v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a:Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
