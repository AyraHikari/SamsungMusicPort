.class public final Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    const p3, 0x7f130315

    .line 100
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "itemView.findViewById(R.\u2026.list_item_detail_button)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;->a:Landroid/view/View;

    .line 103
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;)Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;->a:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;Landroid/view/View;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder$initListOpenButton$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder$initListOpenButton$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;->a:Landroid/view/View;

    return-object v0
.end method
