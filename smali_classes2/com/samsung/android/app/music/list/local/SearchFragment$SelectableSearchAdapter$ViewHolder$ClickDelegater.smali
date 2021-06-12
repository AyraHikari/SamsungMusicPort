.class Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickDelegater"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

.field private b:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;)V
    .locals 0

    .line 1203
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;->a:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;->b:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1209
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;->a:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 1210
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;->b:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v2, -0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;->b:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    .line 1212
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->isActionModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1215
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;->b:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->a(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;->a:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
