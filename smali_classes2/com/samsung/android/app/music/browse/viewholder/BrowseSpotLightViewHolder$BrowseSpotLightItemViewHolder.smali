.class Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowseSpotLightItemViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;ILio/reactivex/disposables/CompositeDisposable;)V
    .locals 7

    .line 447
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;-><init>(Landroid/view/View;)V

    .line 448
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 449
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    const/16 v0, -0xfa1

    if-ne p3, v0, :cond_0

    const v0, 0x7f130162

    .line 451
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006a

    const/4 v3, 0x0

    .line 453
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 452
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 455
    :cond_0
    new-instance v6, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;ILandroid/support/v4/app/Fragment;Lio/reactivex/disposables/CompositeDisposable;Landroid/content/Context;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;ILio/reactivex/disposables/CompositeDisposable;)Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;
    .locals 0

    .line 443
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;->b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;ILio/reactivex/disposables/CompositeDisposable;)Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;ILio/reactivex/disposables/CompositeDisposable;)Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;
    .locals 4

    packed-switch p2, :pswitch_data_0

    .line 489
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type ! "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const v0, 0x7f04001d

    goto :goto_0

    :pswitch_1
    const v0, 0x7f040033

    .line 491
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;

    .line 492
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    .line 493
    invoke-virtual {v2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;ILio/reactivex/disposables/CompositeDisposable;)V

    return-object v1

    :pswitch_data_0
    .packed-switch -0xfa1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
