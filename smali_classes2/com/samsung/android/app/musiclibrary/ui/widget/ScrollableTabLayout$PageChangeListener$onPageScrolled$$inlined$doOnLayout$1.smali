.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->onPageScrolled(IFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;

.field final synthetic b:I

.field final synthetic c:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;IF)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->b:I

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->c:F

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 37
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 177
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->b:I

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    const/4 p2, 0x0

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/high16 p5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h()F

    move-result p6

    sub-float/2addr p6, p5

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h()F

    move-result p7

    iget p8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->c:F

    mul-float p8, p8, p6

    sub-float/2addr p7, p8

    invoke-static {p1, p7, p4, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FZILjava/lang/Object;)V

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget p6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->b:I

    add-int/lit8 p6, p6, 0x1

    invoke-static {p1, p6}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h()F

    move-result p6

    sub-float/2addr p6, p5

    .line 184
    iget p7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->c:F

    mul-float p7, p7, p6

    add-float/2addr p7, p5

    invoke-static {p1, p7, p4, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FZILjava/lang/Object;)V

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V

    .line 189
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->b:I

    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;->c:F

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;IF)V

    return-void
.end method
