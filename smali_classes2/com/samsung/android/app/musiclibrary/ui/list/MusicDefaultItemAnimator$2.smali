.class Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->onRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationsFinished()V
    .locals 3

    const-string v0, "UiList"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mRemoveFinishedListener.onAnimationsFinished()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;->a()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->c(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Z)Z

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Z)Z

    return-void
.end method
