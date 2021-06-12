.class Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;
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
        "Lcom/samsung/android/app/music/model/contents/TrackDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;->getTrackInfo()Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Lcom/samsung/android/app/music/model/base/TrackInfoModel;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    .line 339
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->b(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V

    .line 340
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V

    .line 341
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->b(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Lcom/samsung/android/app/music/model/base/TrackInfoModel;)J

    move-result-wide v0

    const-string p1, "TrackDetailFragment"

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestTrackDetail() audioId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    new-instance v2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-direct {v2, v3, v0, v1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;J)V

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 335
    check-cast p1, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$1;->a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V

    return-void
.end method
