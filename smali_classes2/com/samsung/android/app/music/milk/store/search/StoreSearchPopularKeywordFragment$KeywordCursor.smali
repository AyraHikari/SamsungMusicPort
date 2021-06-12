.class public Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;
.super Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeywordCursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 171
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;->a:Ljava/util/ArrayList;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;->a:Ljava/util/ArrayList;

    const-string v1, "rank"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;->a:Ljava/util/ArrayList;

    const-string v1, "rank_chg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;-><init>(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 183
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x171ba

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x354c2c

    if-eq v0, v1, :cond_2

    const v1, 0x6942258

    if-eq v0, v1, :cond_1

    const v1, 0xf48060f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "rank_chg"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "title"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "rank"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "_id"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p3, -0x1

    :goto_1
    packed-switch p3, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 191
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;->getWord()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 189
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;->getRankingChange()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 187
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;->getRanking()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    add-int/2addr p2, v2

    .line 185
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 168
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;->a(Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
