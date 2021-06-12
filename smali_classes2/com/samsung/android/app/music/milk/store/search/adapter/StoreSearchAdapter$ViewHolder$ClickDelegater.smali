.class Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickDelegater"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

.field private b:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;->b:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;->b:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->e(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    return-void
.end method
