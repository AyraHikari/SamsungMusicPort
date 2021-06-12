.class Lcom/samsung/android/app/music/view/NavigationBarController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/view/NavigationBarController$1;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/samsung/android/app/music/view/NavigationBarController$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/view/NavigationBarController$1;ZZ)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/view/NavigationBarController$1$1;->c:Lcom/samsung/android/app/music/view/NavigationBarController$1;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/view/NavigationBarController$1$1;->a:Z

    iput-boolean p3, p0, Lcom/samsung/android/app/music/view/NavigationBarController$1$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController$1$1;->c:Lcom/samsung/android/app/music/view/NavigationBarController$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/view/NavigationBarController$1;->a:Lcom/samsung/android/app/music/view/NavigationBarController;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/NavigationBarController;->b(Lcom/samsung/android/app/music/view/NavigationBarController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController$1$1;->c:Lcom/samsung/android/app/music/view/NavigationBarController$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/view/NavigationBarController$1;->a:Lcom/samsung/android/app/music/view/NavigationBarController;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/NavigationBarController;->a(Lcom/samsung/android/app/music/view/NavigationBarController;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController$1$1;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController$1$1;->b:Z

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController$1$1;->c:Lcom/samsung/android/app/music/view/NavigationBarController$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/view/NavigationBarController$1;->a:Lcom/samsung/android/app/music/view/NavigationBarController;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/NavigationBarController;->b(Lcom/samsung/android/app/music/view/NavigationBarController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController$1$1;->c:Lcom/samsung/android/app/music/view/NavigationBarController$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/view/NavigationBarController$1;->a:Lcom/samsung/android/app/music/view/NavigationBarController;

    iget-object v1, p0, Lcom/samsung/android/app/music/view/NavigationBarController$1$1;->c:Lcom/samsung/android/app/music/view/NavigationBarController$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/view/NavigationBarController$1;->a:Lcom/samsung/android/app/music/view/NavigationBarController;

    invoke-static {v1}, Lcom/samsung/android/app/music/view/NavigationBarController;->a(Lcom/samsung/android/app/music/view/NavigationBarController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/view/NavigationBarController;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
