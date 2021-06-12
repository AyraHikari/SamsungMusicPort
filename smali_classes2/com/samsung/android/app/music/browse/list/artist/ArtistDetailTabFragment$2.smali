.class Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$2;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$2;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$2;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;->a(Ljava/lang/Throwable;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$2;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(Landroid/app/Activity;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
