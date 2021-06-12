.class public abstract Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<",
        "TV;>;",
        "Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter<",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field

.field protected b:Landroid/util/SparseBooleanArray;

.field protected c:Z

.field private d:I

.field private e:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

.field private f:I

.field private g:Landroid/content/Context;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->a:Ljava/util/List;

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->d:I

    .line 30
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->b:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->c:Z

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->e:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    .line 36
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->f:I

    const/4 v0, -0x1

    .line 356
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->h:I

    .line 49
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->a(Ljava/util/List;)V

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->g:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f01a4

    invoke-static {p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->h:I

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public abstract b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TV;"
        }
    .end annotation
.end method

.method public b(I)Z
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->a(I)Z

    move-result p1

    return p1
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TV;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
