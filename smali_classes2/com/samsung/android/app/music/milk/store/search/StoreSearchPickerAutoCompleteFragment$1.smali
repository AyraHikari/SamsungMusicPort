.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100571

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 44
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100572

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method
