.class public final Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2$1;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2;->invoke()Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2$1;->a:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public layout(IIII)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2$1;->a:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2;->this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->d(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Landroid/graphics/Rect;

    move-result-object p1

    .line 47
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p2, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
