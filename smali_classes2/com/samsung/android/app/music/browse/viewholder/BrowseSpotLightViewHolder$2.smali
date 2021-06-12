.class Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$2;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p2, v0

    if-gtz v2, :cond_0

    add-float v2, p2, v1

    .line 147
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 154
    invoke-static {}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->b()F

    move-result v0

    sub-float v0, v1, v0

    mul-float v0, v0, p2

    add-float/2addr v0, v1

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 160
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 161
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method
