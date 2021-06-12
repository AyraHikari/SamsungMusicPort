.class Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowseYearAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;

.field private b:Lcom/samsung/android/app/music/browse/data/BrowseData;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearAdapter;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$1;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearAdapter;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearAdapter;->b:Lcom/samsung/android/app/music/browse/data/BrowseData;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearAdapter;->a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearAdapter;->b:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearAdapter;->b:Lcom/samsung/android/app/music/browse/data/BrowseData;

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearAdapter;->b:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 99
    :cond_1
    check-cast p1, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;

    .line 100
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 85
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearAdapter;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;

    invoke-static {p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;

    move-result-object p1

    return-object p1
.end method
