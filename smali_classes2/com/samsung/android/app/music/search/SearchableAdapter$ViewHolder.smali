.class public Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/search/SearchableAdapter;Landroid/view/View;I)V
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 335
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const p1, 0x7f130300

    .line 338
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;->d:Landroid/widget/TextView;

    return-void
.end method
