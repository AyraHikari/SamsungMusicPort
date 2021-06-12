.class Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowseGenreAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;

.field private b:Lcom/samsung/android/app/music/browse/data/BrowseData;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;->b:Lcom/samsung/android/app/music/browse/data/BrowseData;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;->a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;->b:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;->b:Lcom/samsung/android/app/music/browse/data/BrowseData;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;->b:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 107
    :cond_1
    check-cast p1, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;

    .line 108
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 93
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;

    invoke-static {p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;

    move-result-object p1

    return-object p1
.end method
