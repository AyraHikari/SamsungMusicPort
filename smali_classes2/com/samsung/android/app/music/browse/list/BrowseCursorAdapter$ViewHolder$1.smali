.class Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;ILandroid/view/View;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;->d:Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    iput p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;->b:I

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 173
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;->d:Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-gez p1, :cond_0

    const-string v0, "UiList"

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    iget-object v2, v2, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " BrowseCursorAdapter. onClick() invalid position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->c(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    if-eqz v0, :cond_1

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;->d:Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    :cond_1
    return-void
.end method
