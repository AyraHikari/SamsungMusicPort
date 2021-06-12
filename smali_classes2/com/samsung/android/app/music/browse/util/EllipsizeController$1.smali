.class Lcom/samsung/android/app/music/browse/util/EllipsizeController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/util/EllipsizeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/util/EllipsizeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/util/EllipsizeController;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController$1;->a:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController$1;->a:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Lcom/samsung/android/app/music/browse/util/EllipsizeController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController$1;->a:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b(Lcom/samsung/android/app/music/browse/util/EllipsizeController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController$1;->a:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Lcom/samsung/android/app/music/browse/util/EllipsizeController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController$1;->a:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Lcom/samsung/android/app/music/browse/util/EllipsizeController;Z)Z

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController$1;->a:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Lcom/samsung/android/app/music/browse/util/EllipsizeController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Landroid/widget/TextView;)Z

    move-result v0

    const-string v2, "EllipsizeController"

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreDraw. ellipsize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController$1;->a:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    .line 100
    invoke-static {v4}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Lcom/samsung/android/app/music/browse/util/EllipsizeController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController$1;->a:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b(Lcom/samsung/android/app/music/browse/util/EllipsizeController;Z)V

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method
