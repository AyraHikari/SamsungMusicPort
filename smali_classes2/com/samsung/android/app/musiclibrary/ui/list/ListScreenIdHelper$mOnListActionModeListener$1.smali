.class public final Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->d(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->c(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)V

    :cond_0
    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->b(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->c(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)V

    :cond_0
    return-void
.end method
