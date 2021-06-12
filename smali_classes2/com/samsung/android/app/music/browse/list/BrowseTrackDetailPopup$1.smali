.class Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;->getTrackInfo()Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;Lcom/samsung/android/app/music/model/base/TrackInfoModel;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V

    .line 199
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    check-cast p1, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$1;->a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V

    return-void
.end method
