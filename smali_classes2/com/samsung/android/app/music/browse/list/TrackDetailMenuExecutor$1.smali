.class Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$1;
.super Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$1;->b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$1;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/app/music/list/favorite/AddResult;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->onResult(Lcom/samsung/android/app/music/list/favorite/AddResult;)V

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/AddResult;->getFlag()I

    move-result p1

    const/4 v0, 0x4

    .line 101
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->hasFlag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 102
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$1;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$1;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;->a(Z)V

    :cond_1
    return-void
.end method
