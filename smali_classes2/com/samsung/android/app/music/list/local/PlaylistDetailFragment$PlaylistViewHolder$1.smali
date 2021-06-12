.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;

.field final synthetic b:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1063
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$1;->c:Landroid/view/View;

    .line 1065
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->getAdapterPosition()I

    move-result v1

    .line 1066
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->getItemId()J

    move-result-wide v2

    .line 1063
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    return-void
.end method
