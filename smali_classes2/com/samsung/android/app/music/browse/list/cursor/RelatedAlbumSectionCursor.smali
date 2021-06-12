.class public Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor;
.super Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor$Category;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor;->a:Ljava/util/ArrayList;

    const-string v1, "category"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/AlbumModel;",
            ">;Z)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;-><init>(Ljava/util/List;Z)V

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor;->c(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :pswitch_1
    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    return v1

    :pswitch_2
    const p1, 0x7f0b0243

    return p1

    :pswitch_3
    const p1, 0x7f0b0242

    return p1

    :pswitch_data_0
    .packed-switch 0x601
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/AlbumModel;",
            ">;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/AlbumModel;

    .line 42
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor;->b(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_0

    if-eqz v3, :cond_0

    .line 44
    new-instance v1, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor$Category;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor$Category;-><init>(ILcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor$1;)V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    .line 48
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 52
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/model/base/AlbumModel;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/model/base/AlbumModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    instance-of v0, p1, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor$Category;

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 28
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x171ba

    if-eq v1, v2, :cond_1

    const v2, 0x302bcfe

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "category"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "_id"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 32
    :pswitch_0
    check-cast p1, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor$Category;

    iget p1, p1, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor$Category;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    rsub-int p1, p2, -0x3e9

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 35
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;->a(Lcom/samsung/android/app/music/model/base/AlbumModel;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 13
    check-cast p1, Lcom/samsung/android/app/music/model/base/AlbumModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor;->a(Lcom/samsung/android/app/music/model/base/AlbumModel;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
