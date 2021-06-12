.class public Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/samsung/android/app/music/milk/store/widget/RankView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;Landroid/view/View;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;Landroid/view/View;I)V

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;Landroid/view/View;I)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 p1, 0xa

    if-ne p3, p1, :cond_0

    const p1, 0x7f130074

    .line 106
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const p1, 0x7f130175

    .line 107
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/RankView;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;->c:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;)Lcom/samsung/android/app/music/milk/store/widget/RankView;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;->c:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    return-object p0
.end method

.method private b(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;Landroid/view/View;I)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, -0xb

    if-ne p3, v0, :cond_0

    .line 114
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0f003d

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p3

    .line 115
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    new-instance p3, Landroid/text/SpannableString;

    const v0, 0x7f0b04bf

    .line 118
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f1301e0

    .line 120
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;->b:Landroid/widget/TextView;

    .line 121
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;->b:Landroid/widget/TextView;

    new-instance p3, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
