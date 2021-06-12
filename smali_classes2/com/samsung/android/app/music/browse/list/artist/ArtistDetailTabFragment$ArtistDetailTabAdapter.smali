.class Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtistDetailTabAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    .line 270
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public b(I)Landroid/support/v4/app/Fragment;
    .locals 3

    const-string v0, "ArtistDetailTabFragment"

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem. position - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 284
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->d(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment;

    move-result-object p1

    return-object p1

    .line 282
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->d(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailRelatedArtistFragment;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailRelatedArtistFragment;

    move-result-object p1

    return-object p1

    .line 280
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->d(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment;

    move-result-object p1

    return-object p1

    .line 278
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->d(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 302
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b00c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 299
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0236

    .line 300
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 297
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0232

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 295
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$ArtistDetailTabAdapter;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0237

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
