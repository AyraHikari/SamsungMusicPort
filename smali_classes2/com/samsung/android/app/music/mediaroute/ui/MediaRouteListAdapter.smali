.class final Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$Builder;,
        Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$IDialogController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;I)Landroid/database/Cursor;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;)Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$IDialogController;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$IDialogController;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$1;-><init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-UI-PlayerCast"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListAdapter> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f1004cb

    .line 90
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    const v0, 0x7f020512

    .line 91
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;
    .locals 2
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    .line 70
    iget-object p3, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f04010d

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 73
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$IDialogController;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$IDialogController;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;I)V
    .locals 3

    .line 78
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 79
    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->b:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->c:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 81
    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 82
    sget v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->d:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;->b(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;I)V

    return-void
.end method

.method protected synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$MediaRouteViewHolder;

    move-result-object p1

    return-object p1
.end method
