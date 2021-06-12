.class final Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder$1;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 270
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder$1;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->a(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;)Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder$1;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->getItemId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->a(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;J)V

    return-void
.end method
