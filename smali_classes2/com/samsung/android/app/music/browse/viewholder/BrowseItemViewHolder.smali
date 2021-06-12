.class public Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field protected a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

.field protected final b:Landroid/widget/ImageView;

.field protected final c:Landroid/widget/TextView;

.field protected final d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f13013a

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->b:Landroid/widget/ImageView;

    const v0, 0x7f13015f

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f13006c

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
    .locals 2

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const p1, 0x7f1000b6

    .line 36
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->b:Landroid/widget/ImageView;

    const v1, 0x7f0202e5

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
