.class public Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter;
.super Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;Lcom/samsung/android/app/music/search/SearchDetailFragment$1;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter;-><init>(Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;
    .locals 2

    if-nez p3, :cond_0

    .line 317
    iget-object p3, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0400eb

    const/4 v1, 0x0

    .line 318
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 320
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 308
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
