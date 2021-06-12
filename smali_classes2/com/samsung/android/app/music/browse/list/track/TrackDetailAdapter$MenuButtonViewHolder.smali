.class final Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MenuButtonViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;)V
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 200
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f13015f

    .line 201
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;->a:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_0

    const p1, 0x7f130192

    .line 209
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$1;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuButtonViewHolder;->a:Landroid/widget/TextView;

    return-object p0
.end method
