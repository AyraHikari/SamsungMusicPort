.class Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$4;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "[J>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$4;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a([J)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$4;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "TrackDetailMenuExecutor"

    const-string v0, "activity is null"

    .line 179
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$4;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->a(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 175
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$4;->a([J)V

    return-void
.end method
