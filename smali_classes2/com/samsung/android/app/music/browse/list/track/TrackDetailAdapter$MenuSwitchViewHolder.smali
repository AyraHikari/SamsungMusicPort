.class final Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MenuSwitchViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 219
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f13015f

    .line 220
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f1301b0

    .line 221
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/SwitchCompat;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;->b:Landroid/support/v7/widget/SwitchCompat;

    .line 223
    new-instance p2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;)V

    .line 229
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;->b:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;->b:Landroid/support/v7/widget/SwitchCompat;

    new-instance p2, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder$2;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;)Landroid/support/v7/widget/SwitchCompat;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;->b:Landroid/support/v7/widget/SwitchCompat;

    return-object p0
.end method
