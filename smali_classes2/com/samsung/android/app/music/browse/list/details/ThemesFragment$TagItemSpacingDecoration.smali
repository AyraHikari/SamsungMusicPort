.class Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagItemSpacingDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagItemSpacingDecoration"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 213
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagItemSpacingDecoration;->a:I

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100366

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagItemSpacingDecoration;->b:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 222
    iget p2, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagItemSpacingDecoration;->a:I

    iget p3, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagItemSpacingDecoration;->b:I

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
