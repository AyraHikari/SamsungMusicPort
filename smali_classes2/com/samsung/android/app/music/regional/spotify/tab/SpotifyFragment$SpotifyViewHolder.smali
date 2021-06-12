.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpotifyViewHolder"
.end annotation


# instance fields
.field private a:Landroid/support/v4/app/Fragment;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private d:I

.field private e:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;

.field private f:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 423
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;Z)V
    .locals 2

    .line 427
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 428
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a:Landroid/support/v4/app/Fragment;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f130320

    .line 430
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->f:Landroid/view/View;

    .line 431
    iget-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->f:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f130194

    .line 432
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 433
    new-instance p2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const p3, 0x7f13015f

    .line 472
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->b:Landroid/widget/TextView;

    const p3, 0x7f13014f

    .line 473
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 474
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p2, :cond_1

    return-void

    .line 477
    :cond_1
    new-instance p2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;

    iget-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a:Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$1;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->e:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;

    .line 478
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a:Landroid/support/v4/app/Fragment;

    .line 479
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 478
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 481
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->seslSetHoverScrollEnabled(Z)V

    .line 482
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1004b7

    .line 483
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 484
    iget-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f100207

    .line 485
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 486
    new-instance v0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p1, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int p1, p3, p2

    invoke-direct {v0, v1, p3, p1}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;-><init>(Landroid/graphics/Rect;II)V

    .line 489
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 491
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->e:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;)I
    .locals 0

    .line 390
    iget p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->d:I

    return p0
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;
    .locals 0

    .line 390
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->b(Landroid/support/v4/app/Fragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 0

    .line 506
    iput p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->d:I

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->e:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;)V

    .line 496
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->e:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;->notifyDataSetChanged()V

    .line 502
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;I)V
    .locals 0

    .line 390
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;)V
    .locals 0

    .line 390
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->a:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;
    .locals 1

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    .line 416
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown type ! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p3, 0x7f0400f6

    .line 410
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const p3, 0x7f0400f5

    .line 413
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 419
    :goto_0
    new-instance p2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch -0x7d2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
