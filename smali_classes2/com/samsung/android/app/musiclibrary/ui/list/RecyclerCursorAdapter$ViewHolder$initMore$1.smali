.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initMore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->initMore(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initMore$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initMore$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1085
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initMore$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-gez p1, :cond_0

    const-string p1, "UiList"

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initMore$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initMore$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " more onClick() invalid position=position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initMore$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getListItemMenuable()Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initMore$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initMore$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;->a(Landroid/view/View;IJ)V

    return-void
.end method
