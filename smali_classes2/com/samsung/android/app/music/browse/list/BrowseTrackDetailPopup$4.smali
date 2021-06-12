.class Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;


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

    .line 421
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$4;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$4;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->d(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V

    :cond_0
    return-void
.end method
