.class Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$2;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$2;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$2$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$2;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(Landroid/app/Activity;Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$UiDestroyer;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
