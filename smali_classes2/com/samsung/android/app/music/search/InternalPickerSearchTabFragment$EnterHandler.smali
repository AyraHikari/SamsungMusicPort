.class Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnterHandler"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)V
    .locals 1

    .line 647
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 648
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    .line 654
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "InternalPickerSearchTabFragment"

    const-string v2, "ready to get user input."

    .line 656
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/view/View;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
