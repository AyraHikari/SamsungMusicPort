.class final Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder$initListOpenButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;

.field final synthetic b:Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder$initListOpenButton$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder$initListOpenButton$1;->b:Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder$initListOpenButton$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder$initListOpenButton$1;->b:Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;)Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder$initListOpenButton$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder$initListOpenButton$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;->a(Landroid/view/View;IJ)V

    return-void
.end method
