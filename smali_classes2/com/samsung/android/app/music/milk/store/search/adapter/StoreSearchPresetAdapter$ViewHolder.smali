.class public Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;Landroid/view/View;I)V
    .locals 1

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    const/16 v0, -0x12c

    if-ne p3, v0, :cond_0

    const v0, 0x7f130300

    .line 145
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->a:Landroid/widget/TextView;

    :cond_0
    if-lez p3, :cond_1

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;Landroid/view/View;I)V

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;Landroid/view/View;I)V
    .locals 1

    .line 155
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->HISTORY:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->getViewType()I

    move-result v0

    if-ne p3, v0, :cond_0

    const p3, 0x7f13031c

    .line 156
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->b:Landroid/view/View;

    .line 157
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 158
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->b:Landroid/view/View;

    new-instance p3, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;Landroid/view/View;I)V
    .locals 1

    .line 174
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->FOOTER:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->getViewType()I

    move-result v0

    if-ne p3, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p3

    if-eqz p3, :cond_0

    const p3, 0x7f130318

    .line 175
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->c:Landroid/widget/TextView;

    .line 176
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->c:Landroid/widget/TextView;

    .line 177
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;)Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 176
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->c:Landroid/widget/TextView;

    new-instance p3, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder$2;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
