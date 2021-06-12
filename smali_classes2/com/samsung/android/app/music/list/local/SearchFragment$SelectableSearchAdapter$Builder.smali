.class public Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;
.super Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1142
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->a:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    .locals 0

    .line 1142
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->b:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 1142
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public a(Landroid/view/View$OnClickListener;)Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->a:Landroid/view/View$OnClickListener;

    .line 1161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->a()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->b:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 1166
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->a()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;
    .locals 0

    .line 1170
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 1171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->a()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;
    .locals 1

    .line 1176
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 1142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 1142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->a()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
