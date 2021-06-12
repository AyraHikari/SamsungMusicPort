.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 66
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->w_:Z

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "input_method"

    .line 68
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 69
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$integer;->minimize_Size_Of_Soft_Input:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 69
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/support/android/view/inputmethod/InputMethodManagerCompat;->minimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method
