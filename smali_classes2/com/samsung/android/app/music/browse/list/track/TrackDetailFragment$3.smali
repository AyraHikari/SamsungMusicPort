.class Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;I)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$3;->b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    iput p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 420
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$3;->b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Z)Z

    .line 421
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$3;->b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$3;->b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->e(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Z

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a(ZZ)V

    .line 422
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$3;->b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;)Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$3;->a:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->notifyItemChanged(I)V

    return-void
.end method
