.class public Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;
.super Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1185
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/search/SearchableAdapter;Landroid/view/View;I)V

    .line 1186
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;->a:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;

    .line 1187
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;->a(Landroid/view/View;I)V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    const/16 v0, -0xc8

    if-ne p2, v0, :cond_0

    const p2, 0x7f13031b

    .line 1192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1194
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder;->a:Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$ViewHolder$ClickDelegater;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
