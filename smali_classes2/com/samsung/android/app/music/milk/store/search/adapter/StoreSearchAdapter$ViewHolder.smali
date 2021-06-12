.class public Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;
.super Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$ItemGuidelineHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;
    }
.end annotation


# instance fields
.field public a:Landroid/support/constraint/Guideline;

.field public b:Landroid/support/constraint/Guideline;

.field public c:Landroid/support/constraint/Guideline;

.field private e:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;Landroid/view/View;I)V
    .locals 1

    .line 483
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/search/SearchableAdapter;Landroid/view/View;I)V

    .line 484
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->e:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;

    .line 485
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->b(I)V

    .line 486
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;Landroid/view/View;I)V

    .line 487
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a(I)V

    .line 488
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;I)V

    .line 489
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->c()V

    .line 490
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;I)V

    const p1, 0x7f1303ee

    .line 492
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    .line 494
    invoke-virtual {p1, p3}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f13013a

    .line 496
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 498
    invoke-virtual {p1, p3}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->f:Landroid/view/View;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 534
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f13006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 536
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;I)V
    .locals 1

    const/16 v0, 0x15

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_1

    .line 518
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->c(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->d(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 519
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f130043

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->h:Landroid/view/View;

    .line 520
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->h:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 521
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->h:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->e:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;Landroid/view/View;I)V
    .locals 1

    .line 505
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0xc8

    if-ne p3, v0, :cond_0

    .line 507
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->h:Landroid/view/View;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 544
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f1302ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/Guideline;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a:Landroid/support/constraint/Guideline;

    .line 545
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f1302cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/Guideline;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->b:Landroid/support/constraint/Guideline;

    .line 546
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f1302d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/Guideline;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->c:Landroid/support/constraint/Guideline;

    :cond_1
    return-void
.end method

.method private b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;I)V
    .locals 1

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_0

    .line 527
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->c(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, p2, :cond_0

    .line 528
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f13013a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->e:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder$ClickDelegater;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f130163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->f:Landroid/view/View;

    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f13031d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->g:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/constraint/Guideline;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->b:Landroid/support/constraint/Guideline;

    return-object v0
.end method

.method public b()Landroid/support/constraint/Guideline;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->c:Landroid/support/constraint/Guideline;

    return-object v0
.end method
