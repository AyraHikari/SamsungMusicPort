.class Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;ILio/reactivex/disposables/CompositeDisposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v4/app/Fragment;

.field final synthetic c:Lio/reactivex/disposables/CompositeDisposable;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;ILandroid/support/v4/app/Fragment;Lio/reactivex/disposables/CompositeDisposable;Landroid/content/Context;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->e:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;

    iput p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->a:I

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->b:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->c:Lio/reactivex/disposables/CompositeDisposable;

    iput-object p5, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 458
    iget p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x5a

    .line 460
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->e:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 461
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->e:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->b:Landroid/support/v4/app/Fragment;

    .line 462
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 465
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->c:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->b:Landroid/support/v4/app/Fragment;

    .line 466
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->e:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 467
    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->e:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;

    iget-object v2, v2, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 468
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 466
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 465
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    .line 469
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "play_event_videoclip"

    const-string v1, "play_event_videoclip"

    const-string v2, "1"

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xfa1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
