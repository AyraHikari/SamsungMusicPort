.class Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder$2;->b:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder$2;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder$2;->b:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder$2;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder$2;->b:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    return-void
.end method
