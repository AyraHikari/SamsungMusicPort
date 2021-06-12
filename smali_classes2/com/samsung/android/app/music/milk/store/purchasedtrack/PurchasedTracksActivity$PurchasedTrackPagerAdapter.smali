.class final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$PurchasedTrackPagerAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PurchasedTrackPagerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$PurchasedTrackPagerAdapter;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;

    .line 107
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public b(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 115
    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_DRM:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 116
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_MP3:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedMp3TracksFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedMp3TracksFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    :goto_0
    return-object p1

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not Matched ListType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 126
    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_DRM:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$PurchasedTrackPagerAdapter;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b04c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 127
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_MP3:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$PurchasedTrackPagerAdapter;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b04fd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
