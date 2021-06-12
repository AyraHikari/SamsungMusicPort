.class Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$3;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$3;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$3;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$3;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method
