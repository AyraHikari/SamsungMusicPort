.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpotifyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;

.field private final b:Landroid/support/v4/app/Fragment;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 331
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->b:Landroid/support/v4/app/Fragment;

    .line 332
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$1;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;Ljava/util/List;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;)V"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 337
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;-><init>()V

    const/16 v1, -0x7d1

    .line 338
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;->setType(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;
    .locals 2

    packed-switch p2, :pswitch_data_0

    .line 356
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->b:Landroid/support/v4/app/Fragment;

    .line 351
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;

    move-result-object p1

    .line 353
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch -0x7d2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;I)V
    .locals 1

    .line 364
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 368
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    .line 369
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch -0x7d2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    .line 382
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;->getType()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x7d1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/16 p1, -0x7d2

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 324
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;

    move-result-object p1

    return-object p1
.end method
