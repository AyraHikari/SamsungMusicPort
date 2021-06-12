.class final Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfoViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 188
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f13006c

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f13015f

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f130585

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->c:Landroid/view/View;

    const v0, 0x7f130586

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->d:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/view/View;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;)Landroid/view/View;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$InfoViewHolder;->d:Landroid/view/View;

    return-object p0
.end method
