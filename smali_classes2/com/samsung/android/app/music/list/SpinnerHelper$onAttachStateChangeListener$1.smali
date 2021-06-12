.class public final Lcom/samsung/android/app/music/list/SpinnerHelper$onAttachStateChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/SpinnerHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/SpinnerHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/SpinnerHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$onAttachStateChangeListener$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$onAttachStateChangeListener$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Parcelable;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/SpinnerHelper;->a(Lcom/samsung/android/app/music/list/SpinnerHelper;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$onAttachStateChangeListener$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$onAttachStateChangeListener$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/SpinnerHelper;->d(Lcom/samsung/android/app/music/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/SpinnerHelper;->a(Lcom/samsung/android/app/music/list/SpinnerHelper;Landroid/os/Parcelable;)V

    return-void
.end method
