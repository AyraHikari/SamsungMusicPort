.class Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 292
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;Landroid/animation/Animator;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;)Landroid/transition/Transition;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;Landroid/transition/Transition;)V

    return-void
.end method
