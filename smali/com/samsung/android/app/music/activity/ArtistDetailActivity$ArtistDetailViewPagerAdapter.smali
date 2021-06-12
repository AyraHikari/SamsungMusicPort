.class final Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/ArtistDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ArtistDetailViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    .line 248
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->c:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->d:I

    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->a(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public b(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->a(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    const p1, 0x110027

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->c:Ljava/lang/String;

    .line 262
    iget v1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 264
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    const p1, 0x10027

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->c:Ljava/lang/String;

    .line 266
    iget v1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    :goto_1
    return-object p1

    .line 268
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArtistDetailViewPagerAdapter getItem() wrong position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public getCount()I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->a(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->a(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->b:Landroid/content/Context;

    const v0, 0x7f0b03da

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->b:Landroid/content/Context;

    const v0, 0x7f0b0082

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    :goto_1
    return-object p1

    .line 278
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong position, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
