.class Lcom/samsung/android/app/music/search/SearchableFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchableFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchableFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment$1;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 76
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->w_:Z

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment$1;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 78
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchableFragment$1;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment$1;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 78
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/support/android/view/inputmethod/InputMethodManagerCompat;->minimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment$1;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method
