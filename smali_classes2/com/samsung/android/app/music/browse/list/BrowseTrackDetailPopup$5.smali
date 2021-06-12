.class Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$5;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$5;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;Z)V

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$5;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->e(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$5;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->e(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
