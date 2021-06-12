.class final Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BixbySearchableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SearchFragment;

.field private b:I

.field private c:Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 779
    iput p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Lcom/samsung/android/app/music/list/local/SearchFragment$1;)V
    .locals 0

    .line 778
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(ILcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;)V
    .locals 2
    .param p2    # Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 786
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->v_()Ljava/lang/String;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->c(Ljava/lang/String;)V

    .line 788
    iput p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->b:I

    .line 789
    new-instance p1, Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->c:Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;

    .line 790
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->c:Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;->a(Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;Ljava/lang/String;)Ljava/lang/String;

    .line 791
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->c:Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;->a(Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;)Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 785
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 795
    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->c:Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->c:Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;

    .line 796
    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;->a(Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 801
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    .line 802
    iget v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->b:I

    const v2, 0x110001

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    const-string p1, "UiList"

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnSearchListener - invalid list type : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const/4 v2, -0x1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xb

    .line 804
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->e(I)I

    move-result v2

    .line 805
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->f(I)I

    move-result p1

    add-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xc

    .line 808
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->e(I)I

    move-result v2

    .line 809
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->f(I)I

    move-result p1

    add-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    .line 812
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->e(I)I

    move-result v2

    .line 813
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->f(I)I

    move-result p1

    add-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-eq v2, v1, :cond_2

    .line 820
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 821
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    const/4 v3, 0x0

    .line 822
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->c:Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;->b(Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;)Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;->a(II)V

    .line 826
    iput v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->b:I

    const/4 p1, 0x0

    .line 827
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->c:Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    monitor-exit p0

    return-void

    .line 797
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 794
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
