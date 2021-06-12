.class Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Landroid/view/View;Lcom/samsung/android/app/music/network/NetworkManager;)Lcom/samsung/android/app/music/view/NoNetworkViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$4;->b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$4;->a:Landroid/view/View;

    const v1, 0x7f130156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$4;->b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->q_()Z

    move-result v0

    return v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$4;->a:Landroid/view/View;

    return-object v0
.end method
