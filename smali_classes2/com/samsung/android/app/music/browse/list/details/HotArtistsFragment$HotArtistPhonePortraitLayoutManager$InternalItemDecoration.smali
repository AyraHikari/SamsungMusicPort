.class Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalItemDecoration"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$1;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;-><init>()V

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/widget/TextView;I)V
    .locals 3

    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 275
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;->b(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 276
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 278
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 280
    :goto_0
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 284
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;->a(I)Z

    move-result p4

    const v1, 0x3fa66666    # 1.3f

    if-eqz p4, :cond_1

    int-to-float p1, p1

    const p4, 0x3f23d70a    # 0.64f

    mul-float p1, p1, p4

    float-to-int p1, p1

    .line 286
    invoke-virtual {p3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f100377

    invoke-static {p4, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;IF)F

    move-result p4

    goto :goto_1

    :cond_1
    int-to-float p1, p1

    const p4, 0x3ef0a3d7    # 0.47f

    mul-float p1, p1, p4

    float-to-int p1, p1

    .line 292
    invoke-virtual {p3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f100378

    invoke-static {p4, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;IF)F

    move-result p4

    .line 297
    :goto_1
    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 298
    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 299
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 301
    invoke-virtual {p3, p1, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private a(I)Z
    .locals 0

    .line 311
    rem-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(I)Z
    .locals 0

    .line 315
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 235
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 236
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 237
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f13015d

    .line 239
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130139

    .line 240
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f13015f

    .line 241
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f130160

    .line 242
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 248
    :cond_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-gez v4, :cond_1

    const-string p1, "HotArtistsFragment"

    const-string p2, "getItemOffsets. position under zero"

    .line 250
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 253
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v5, v1, v2, v4}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;->a(ILandroid/view/View;Landroid/widget/TextView;I)V

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thumbnail_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumbnail_stroke_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f10036c

    .line 260
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    neg-int p3, p3

    const v0, 0x7f13015e

    .line 262
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a(Landroid/view/View;I)V

    if-lez v4, :cond_2

    .line 265
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    :cond_2
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v4, p1, :cond_3

    const/16 p1, 0x8

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "HotArtistsFragment"

    const-string p2, "getItemOffsets. thumbnail or text is null"

    .line 244
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
