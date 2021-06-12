.class Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->j()V
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
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->d(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->d(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

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

    .line 348
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
